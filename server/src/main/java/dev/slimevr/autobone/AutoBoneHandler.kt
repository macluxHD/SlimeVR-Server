package dev.slimevr.autobone

import dev.slimevr.VRServer
import dev.slimevr.autobone.AutoBone.AutoBoneResults
import dev.slimevr.autobone.AutoBone.Companion.loadDir
import dev.slimevr.autobone.AutoBone.Epoch
import dev.slimevr.autobone.errors.AutoBoneException
import dev.slimevr.poserecorder.PoseFrames
import dev.slimevr.poserecorder.PoseRecorder
import dev.slimevr.poserecorder.PoseRecorder.RecordingProgress
import dev.slimevr.poserecorder.TrackerFrameData
import dev.slimevr.tracking.processor.config.SkeletonConfigManager
import dev.slimevr.tracking.processor.config.SkeletonConfigOffsets
import io.eiren.util.StringUtils
import io.eiren.util.logging.LogManager
import org.apache.commons.lang3.tuple.Pair
import java.util.concurrent.CopyOnWriteArrayList
import java.util.concurrent.locks.ReentrantLock
import java.util.function.Consumer
import kotlin.concurrent.thread
import kotlin.concurrent.withLock

class AutoBoneHandler(private val server: VRServer) {
	private val poseRecorder: PoseRecorder = PoseRecorder(server)
	private val autoBone: AutoBone = AutoBone(server)

	private val recordingLock = ReentrantLock()
	private var recordingThread: Thread? = null
	private val saveRecordingLock = ReentrantLock()
	private var saveRecordingThread: Thread? = null
	private val autoBoneLock = ReentrantLock()
	private var autoBoneThread: Thread? = null

	private val listeners = CopyOnWriteArrayList<AutoBoneListener>()

	fun addListener(listener: AutoBoneListener) {
		listeners.add(listener)
	}

	fun removeListener(listener: AutoBoneListener) {
		listeners.removeIf { l: AutoBoneListener -> listener === l }
	}

	private fun announceProcessStatus(
		processType: AutoBoneProcessType,
		message: String?,
		current: Long,
		total: Long,
		completed: Boolean,
		success: Boolean,
	) {
		listeners
			.forEach(
				Consumer { listener: AutoBoneListener ->
					listener
						.onAutoBoneProcessStatus(
							processType,
							message,
							current,
							total,
							completed,
							success
						)
				}
			)
	}

	private fun announceProcessStatus(
		processType: AutoBoneProcessType,
		message: String,
		completed: Boolean = false,
		success: Boolean = true,
	) {
		announceProcessStatus(processType, message, 0, 0, completed, success)
	}

	private fun announceProcessStatus(processType: AutoBoneProcessType, current: Long, total: Long) {
		announceProcessStatus(processType, null, current, total, completed = false, success = true)
	}

	val lengthsString: String
		get() = autoBone.lengthsString

	@Throws(AutoBoneException::class)
	private fun processFrames(frames: PoseFrames): AutoBoneResults {
		return autoBone
			.processFrames(
				frames,
				autoBone.config.calcInitError,
				autoBone.config.targetHeight
			) { epoch: Epoch? -> listeners.forEach(Consumer { listener: AutoBoneListener -> listener.onAutoBoneEpoch(epoch!!) }) }
	}

	fun startProcessByType(processType: AutoBoneProcessType): Boolean {
		when (processType) {
			AutoBoneProcessType.RECORD -> startRecording()
			AutoBoneProcessType.SAVE -> saveRecording()
			AutoBoneProcessType.PROCESS -> processRecording()
			AutoBoneProcessType.APPLY -> applyValues()
			else -> {
				return false
			}
		}
		return true
	}

	fun startRecording() {
		recordingLock.withLock {
			// Prevent running multiple times
			if (recordingThread != null) {
				return
			}
			recordingThread = thread(start = true) { startRecordingThread() }
		}
	}

	private fun startRecordingThread() {
		try {
			if (poseRecorder.isReadyToRecord) {
				announceProcessStatus(AutoBoneProcessType.RECORD, "Recording...")

				// 1000 samples at 20 ms per sample is 20 seconds
				val sampleCount = autoBone.config.sampleCount
				val sampleRate = autoBone.config.sampleRateMs
				val framesFuture = poseRecorder
					.startFrameRecording(
						sampleCount,
						sampleRate
					) { progress: RecordingProgress ->
						announceProcessStatus(
							AutoBoneProcessType.RECORD,
							progress.frame.toLong(),
							progress.totalFrames
								.toLong()
						)
					}
				val frames = framesFuture.get()
				LogManager.info("[AutoBone] Done recording!")

				// Save a recurring recording for users to send as debug info
				announceProcessStatus(AutoBoneProcessType.RECORD, "Saving recording...")
				autoBone.saveRecording(frames, "LastABRecording.pfr")
				if (autoBone.config.saveRecordings) {
					announceProcessStatus(
						AutoBoneProcessType.RECORD,
						"Saving recording (from config option)..."
					)
					autoBone.saveRecording(frames)
				}
				listeners.forEach(Consumer { listener: AutoBoneListener -> listener.onAutoBoneRecordingEnd(frames) })
				announceProcessStatus(
					AutoBoneProcessType.RECORD,
					"Done recording!",
					completed = true,
					success = true
				)
			} else {
				announceProcessStatus(
					AutoBoneProcessType.RECORD,
					"The server is not ready to record",
					completed = true,
					success = false
				)
				LogManager.severe("[AutoBone] Unable to record...")
				return
			}
		} catch (e: Exception) {
			announceProcessStatus(
				AutoBoneProcessType.RECORD,
				String.format("Recording failed: %s", e.message),
				completed = true,
				success = false
			)
			LogManager.severe("[AutoBone] Failed recording!", e)
		} finally {
			recordingThread = null
		}
	}

	fun saveRecording() {
		saveRecordingLock.withLock {
			// Prevent running multiple times
			if (saveRecordingThread != null) {
				return
			}
			saveRecordingThread = thread(start = true) { saveRecordingThread() }
		}
	}

	private fun saveRecordingThread() {
		try {
			val framesFuture = poseRecorder.framesAsync
			if (framesFuture != null) {
				announceProcessStatus(AutoBoneProcessType.SAVE, "Waiting for recording...")
				val frames = framesFuture.get()
				check(frames.trackerCount > 0) { "Recording has no trackers" }
				check(frames.maxFrameCount > 0) { "Recording has no frames" }
				announceProcessStatus(AutoBoneProcessType.SAVE, "Saving recording...")
				autoBone.saveRecording(frames)
				announceProcessStatus(
					AutoBoneProcessType.SAVE,
					"Recording saved!",
					completed = true,
					success = true
				)
			} else {
				announceProcessStatus(
					AutoBoneProcessType.SAVE,
					"No recording found",
					completed = true,
					success = false
				)
				LogManager.severe("[AutoBone] Unable to save, no recording was done...")
				return
			}
		} catch (e: Exception) {
			announceProcessStatus(
				AutoBoneProcessType.SAVE,
				String.format("Failed to save recording: %s", e.message),
				completed = true,
				success = false
			)
			LogManager.severe("[AutoBone] Failed to save recording!", e)
		} finally {
			saveRecordingThread = null
		}
	}

	fun processRecording() {
		autoBoneLock.withLock {
			// Prevent running multiple times
			if (autoBoneThread != null) {
				return
			}
			autoBoneThread = thread(start = true) { processRecordingThread() }
		}
	}

	private fun processRecordingThread() {
		try {
			announceProcessStatus(AutoBoneProcessType.PROCESS, "Loading recordings...")
			val frameRecordings = autoBone.loadRecordings()
			if (!frameRecordings.isEmpty()) {
				LogManager.info("[AutoBone] Done loading frames!")
			} else {
				val framesFuture = poseRecorder.framesAsync
				if (framesFuture != null) {
					announceProcessStatus(AutoBoneProcessType.PROCESS, "Waiting for recording...")
					val frames = framesFuture.get()
					check(frames.trackerCount > 0) { "Recording has no trackers" }
					check(frames.maxFrameCount > 0) { "Recording has no frames" }
					frameRecordings.add(Pair.of("<Recording>", frames))
				} else {
					announceProcessStatus(
						AutoBoneProcessType.PROCESS,
						"No recordings found...",
						completed = true,
						success = false
					)
					LogManager
						.severe(
							"[AutoBone] No recordings found in \"" +
								loadDir.path +
								"\" and no recording was done..."
						)
					return
				}
			}
			announceProcessStatus(AutoBoneProcessType.PROCESS, "Processing recording(s)...")
			LogManager.info("[AutoBone] Processing frames...")
			val errorStats = StatsCalculator()
			val skeletonConfigManagerBuffer = SkeletonConfigManager(false)
			for ((key, value) in frameRecordings) {
				LogManager
					.info("[AutoBone] Processing frames from \"$key\"...")
				val trackers = value.trackers
				val trackerInfo = StringBuilder()
				for (tracker in trackers) {
					if (tracker == null) continue
					val frame = tracker.safeGetFrame(0)
					if (frame == null || frame.bodyPosition == null) continue

					// Add a comma if this is not the first item listed
					if (trackerInfo.isNotEmpty()) {
						trackerInfo.append(", ")
					}
					trackerInfo.append(frame.bodyPosition.designation)

					// Represent the data flags
					val trackerFlags = StringBuilder()
					if (frame.hasData(TrackerFrameData.ROTATION)) {
						trackerFlags.append("R")
					}
					if (frame.hasData(TrackerFrameData.POSITION)) {
						trackerFlags.append("P")
					}
					if (frame.hasData(TrackerFrameData.ACCELERATION)) {
						trackerFlags.append("A")
					}
					if (frame.hasData(TrackerFrameData.RAW_ROTATION)) {
						trackerFlags.append("r")
					}

					// If there are data flags, print them in brackets after the
					// designation
					if (trackerFlags.isNotEmpty()) {
						trackerInfo.append(" (").append(trackerFlags).append(")")
					}
				}
				LogManager
					.info(
						"[AutoBone] (" +
							trackers.size +
							" trackers) [" +
							trackerInfo +
							"]"
					)
				val autoBoneResults = processFrames(value)
				errorStats.addValue(autoBoneResults.heightDifference)
				LogManager.info("[AutoBone] Done processing!")

				// #region Stats/Values
				skeletonConfigManagerBuffer.setOffsets(autoBoneResults.configValues)
				val neckLength = skeletonConfigManagerBuffer
					.getOffset(SkeletonConfigOffsets.NECK)
				val chestLength = skeletonConfigManagerBuffer
					.getOffset(SkeletonConfigOffsets.CHEST)
				val waistLength = skeletonConfigManagerBuffer
					.getOffset(SkeletonConfigOffsets.WAIST)
				val hipLength = skeletonConfigManagerBuffer
					.getOffset(SkeletonConfigOffsets.HIP)
				val torsoLength = chestLength + waistLength + hipLength
				val hipWidth = skeletonConfigManagerBuffer
					.getOffset(SkeletonConfigOffsets.HIPS_WIDTH)
				val legLength = (
					skeletonConfigManagerBuffer
						.getOffset(SkeletonConfigOffsets.UPPER_LEG) +
						skeletonConfigManagerBuffer
							.getOffset(SkeletonConfigOffsets.LOWER_LEG)
					)
				val lowerLegLength = skeletonConfigManagerBuffer
					.getOffset(SkeletonConfigOffsets.LOWER_LEG)
				val neckTorso = neckLength / torsoLength
				val chestTorso = chestLength / torsoLength
				val torsoWaist = hipWidth / torsoLength
				val legTorso = legLength / torsoLength
				val legBody = legLength / (torsoLength + neckLength)
				val kneeLeg = lowerLegLength / legLength
				LogManager
					.info(
						"[AutoBone] Ratios: [{Neck-Torso: " +
							StringUtils.prettyNumber(neckTorso) +
							"}, {Chest-Torso: " +
							StringUtils.prettyNumber(chestTorso) +
							"}, {Torso-Waist: " +
							StringUtils.prettyNumber(torsoWaist) +
							"}, {Leg-Torso: " +
							StringUtils.prettyNumber(legTorso) +
							"}, {Leg-Body: " +
							StringUtils.prettyNumber(legBody) +
							"}, {Knee-Leg: " +
							StringUtils.prettyNumber(kneeLeg) +
							"}]"
					)
				LogManager.info("[AutoBone] Length values: " + autoBone.lengthsString)
			}
			LogManager
				.info(
					"[AutoBone] Average height error: " +
						StringUtils.prettyNumber(errorStats.mean, 6) +
						" (SD " +
						StringUtils.prettyNumber(errorStats.standardDeviation, 6) +
						")"
				)
			// #endregion
			listeners.forEach(Consumer { listener: AutoBoneListener -> listener.onAutoBoneEnd(autoBone.legacyConfigs) })
			announceProcessStatus(
				AutoBoneProcessType.PROCESS,
				"Done processing!",
				completed = true,
				success = true
			)
		} catch (e: Exception) {
			announceProcessStatus(
				AutoBoneProcessType.PROCESS,
				String.format("Processing failed: %s", e.message),
				completed = true,
				success = false
			)
			LogManager.severe("[AutoBone] Failed adjustment!", e)
		} finally {
			autoBoneThread = null
		}
	}

	fun applyValues() {
		autoBone.applyAndSaveConfig()
		announceProcessStatus(
			AutoBoneProcessType.APPLY,
			"Adjusted values applied!",
			completed = true,
			success = true
		)
	}
}
