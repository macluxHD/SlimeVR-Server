package dev.slimevr.autobone

import com.jme3.math.FastMath
import com.jme3.math.Vector3f
import dev.slimevr.VRServer
import dev.slimevr.autobone.errors.AutoBoneException
import dev.slimevr.autobone.errors.BodyProportionError
import dev.slimevr.autobone.errors.FootHeightOffsetError
import dev.slimevr.autobone.errors.HeightError
import dev.slimevr.autobone.errors.OffsetSlideError
import dev.slimevr.autobone.errors.PositionError
import dev.slimevr.autobone.errors.PositionOffsetError
import dev.slimevr.autobone.errors.SlideError
import dev.slimevr.config.AutoBoneConfig
import dev.slimevr.poserecorder.PoseFrameIO
import dev.slimevr.poserecorder.PoseFrameTracker
import dev.slimevr.poserecorder.PoseFrames
import dev.slimevr.tracking.processor.BoneType
import dev.slimevr.tracking.processor.HumanPoseManager
import dev.slimevr.tracking.processor.config.SkeletonConfigManager
import dev.slimevr.tracking.processor.config.SkeletonConfigOffsets
import dev.slimevr.tracking.trackers.TrackerRole
import io.eiren.util.StringUtils
import io.eiren.util.collections.FastList
import io.eiren.util.logging.LogManager
import org.apache.commons.lang3.tuple.Pair
import java.io.File
import java.util.*
import java.util.function.BiConsumer
import java.util.function.Consumer
import java.util.function.Function

class AutoBone(server: VRServer) {
	// This is filled by reloadConfigValues()
	val offsets = EnumMap<BoneType, Float>(
		BoneType::class.java
	)
	val adjustOffsets = FastList(
		arrayOf(
			BoneType.HEAD,
			BoneType.NECK,
			BoneType.CHEST,
			BoneType.WAIST,
			BoneType.HIP, // This now works when using body proportion error! It's not the
			// best still, but it is somewhat functional
			BoneType.LEFT_HIP,
			BoneType.LEFT_UPPER_LEG,
			BoneType.LEFT_LOWER_LEG
		)
	)
	val heightOffsets = FastList(
		arrayOf(
			BoneType.NECK,
			BoneType.CHEST,
			BoneType.WAIST,
			BoneType.HIP,
			BoneType.LEFT_UPPER_LEG,
			BoneType.RIGHT_UPPER_LEG,
			BoneType.LEFT_LOWER_LEG,
			BoneType.RIGHT_LOWER_LEG
		)
	)

	val legacyConfigs = EnumMap<SkeletonConfigOffsets, Float>(
		SkeletonConfigOffsets::class.java
	)

	private val server: VRServer

	// #region Error functions
	var slideError = SlideError()
	var offsetSlideError = OffsetSlideError()
	var footHeightOffsetError = FootHeightOffsetError()
	var bodyProportionError = BodyProportionError()
	var heightError = HeightError()
	var positionError = PositionError()
	var positionOffsetError = PositionOffsetError()

	// #endregion
	private val rand = Random()

	val config: AutoBoneConfig

	init {
		config = server.configManager.vrConfig.autoBone
		this.server = server
		reloadConfigValues()
	}

	fun computeBoneOffset(
		bone: BoneType?,
		getOffset: Function<SkeletonConfigOffsets?, Float>,
	): Float {
		return when (bone) {
			BoneType.HEAD -> getOffset.apply(SkeletonConfigOffsets.HEAD)
			BoneType.NECK -> getOffset.apply(SkeletonConfigOffsets.NECK)
			BoneType.CHEST -> getOffset.apply(SkeletonConfigOffsets.CHEST)
			BoneType.WAIST -> getOffset.apply(SkeletonConfigOffsets.WAIST)
			BoneType.HIP -> getOffset.apply(SkeletonConfigOffsets.HIP)
			BoneType.LEFT_HIP, BoneType.RIGHT_HIP -> (
				getOffset.apply(SkeletonConfigOffsets.HIPS_WIDTH) /
					2f
				)

			BoneType.LEFT_UPPER_LEG, BoneType.RIGHT_UPPER_LEG ->
				getOffset
					.apply(SkeletonConfigOffsets.UPPER_LEG)

			BoneType.LEFT_LOWER_LEG, BoneType.RIGHT_LOWER_LEG ->
				getOffset
					.apply(SkeletonConfigOffsets.LOWER_LEG)

			else -> -1f
		}
	}

	fun reloadConfigValues(trackers: List<PoseFrameTracker?>? = null) {
		// Remove all previous values
		offsets.clear()

		// Get current or default skeleton configs
		val skeleton = humanPoseManager
		val getOffset: Function<SkeletonConfigOffsets?, Float> =
			if (skeleton != null) {
				Function { key: SkeletonConfigOffsets? -> skeleton.getOffset(key) }
			} else {
				Function { config: SkeletonConfigOffsets? ->
					SkeletonConfigManager(false).getOffset(config)
				}
			}
		for (bone in adjustOffsets) {
			val offset = computeBoneOffset(bone, getOffset)
			if (offset > 0f) {
				offsets[bone] = offset
			}
		}
	}

	fun getBoneDirection(
		skeleton: HumanPoseManager,
		node: BoneType,
		rightSide: Boolean,
		buffer: Vector3f?,
	): Vector3f {
		var node = node
		var buffer = buffer
		if (buffer == null) {
			buffer = Vector3f()
		}
		when (node) {
			BoneType.LEFT_HIP, BoneType.RIGHT_HIP -> node = if (rightSide) BoneType.RIGHT_HIP else BoneType.LEFT_HIP
			BoneType.LEFT_UPPER_LEG, BoneType.RIGHT_UPPER_LEG ->
				node =
					if (rightSide) BoneType.RIGHT_UPPER_LEG else BoneType.LEFT_UPPER_LEG

			BoneType.LEFT_LOWER_LEG, BoneType.RIGHT_LOWER_LEG ->
				node =
					if (rightSide) BoneType.RIGHT_LOWER_LEG else BoneType.LEFT_LOWER_LEG

			else -> {
				// Node is correct
			}
		}
		val relevantTransform = skeleton.getTailNodeOfBone(node)
		return relevantTransform.worldTransform
			.translation
			.subtract(relevantTransform.parent.worldTransform.translation, buffer)
			.normalizeLocal()
	}

	fun getDotProductDiff(
		skeleton1: HumanPoseManager,
		skeleton2: HumanPoseManager,
		node: BoneType,
		rightSide: Boolean,
		offset: Vector3f,
	): Float {
		val normalizedOffset = offset.normalize()
		val boneRotation = Vector3f()
		getBoneDirection(skeleton1, node, rightSide, boneRotation)
		val dot1 = normalizedOffset.dot(boneRotation)
		getBoneDirection(skeleton2, node, rightSide, boneRotation)
		val dot2 = normalizedOffset.dot(boneRotation)
		return dot2 - dot1
	}

	private val humanPoseManager: HumanPoseManager?
		/**
		 * A simple utility method to get the [HumanSkeleton] from the
		 * [VRServer]
		 *
		 * @return The [HumanSkeleton] associated with the [VRServer],
		 * or null if there is none available
		 * @see {@link VRServer}, {@link HumanSkeleton}
		 */
		get() = server.humanPoseManager

	fun applyConfig(
		configConsumer: BiConsumer<SkeletonConfigOffsets, Float>,
		offsets: Map<BoneType, Float> = this.offsets,
	): Boolean {
		return try {
			val headOffset = offsets[BoneType.HEAD]
			if (headOffset != null) {
				configConsumer.accept(SkeletonConfigOffsets.HEAD, headOffset)
			}
			val neckOffset = offsets[BoneType.NECK]
			if (neckOffset != null) {
				configConsumer.accept(SkeletonConfigOffsets.NECK, neckOffset)
			}
			val chestOffset = offsets[BoneType.CHEST]
			val waistOffset = offsets[BoneType.WAIST]
			val hipOffset = offsets[BoneType.HIP]
			if (chestOffset != null) {
				configConsumer
					.accept(SkeletonConfigOffsets.CHEST, chestOffset)
			}
			if (waistOffset != null) {
				configConsumer.accept(SkeletonConfigOffsets.WAIST, waistOffset)
			}
			if (hipOffset != null) {
				configConsumer.accept(SkeletonConfigOffsets.HIP, hipOffset)
			}
			var hipWidthOffset = offsets[BoneType.LEFT_HIP]
			if (hipWidthOffset == null) {
				hipWidthOffset = offsets[BoneType.RIGHT_HIP]
			}
			if (hipWidthOffset != null) {
				configConsumer
					.accept(SkeletonConfigOffsets.HIPS_WIDTH, hipWidthOffset * 2f)
			}
			var upperLegOffset = offsets[BoneType.LEFT_UPPER_LEG]
			if (upperLegOffset == null) {
				upperLegOffset = offsets[BoneType.RIGHT_UPPER_LEG]
			}
			var lowerLegOffset = offsets[BoneType.LEFT_LOWER_LEG]
			if (lowerLegOffset == null) {
				lowerLegOffset = offsets[BoneType.RIGHT_LOWER_LEG]
			}
			if (upperLegOffset != null) {
				configConsumer
					.accept(SkeletonConfigOffsets.UPPER_LEG, upperLegOffset)
			}
			if (lowerLegOffset != null) {
				configConsumer.accept(SkeletonConfigOffsets.LOWER_LEG, lowerLegOffset)
			}
			true
		} catch (e: Exception) {
			false
		}
	}

	fun applyConfig(
		skeletonConfig: MutableMap<SkeletonConfigOffsets, Float>,
		offsets: Map<BoneType, Float> = this.offsets,
	): Boolean {
		return applyConfig({ key: SkeletonConfigOffsets, value: Float -> skeletonConfig[key] = value }, offsets)
	}

	fun applyConfig(
		humanPoseManager: HumanPoseManager,
		offsets: Map<BoneType, Float> = this.offsets,
	): Boolean {
		return applyConfig({ key: SkeletonConfigOffsets?, newLength: Float? ->
			humanPoseManager.setOffset(
				key,
				newLength
			)
		}, offsets)
	}

	@JvmOverloads
	fun applyAndSaveConfig(humanPoseManager: HumanPoseManager? = this.humanPoseManager): Boolean {
		if (humanPoseManager == null) return false
		if (!applyConfig(humanPoseManager)) return false
		humanPoseManager.saveConfig()
		server.configManager.saveConfig()
		LogManager.info("[AutoBone] Configured skeleton bone lengths")
		return true
	}

	fun getConfig(config: BoneType): Float? {
		return offsets[config]
	}

	fun <T> sumSelectConfigs(
		selection: List<T>,
		configs: Function<T, Float?>,
	): Float {
		var sum = 0f
		for (config in selection) {
			val length = configs.apply(config)
			if (length != null) {
				sum += length
			}
		}
		return sum
	}

	fun <T> sumSelectConfigs(
		selection: List<T>,
		configs: Map<T, Float>,
	): Float {
		return sumSelectConfigs(selection) { key: T -> configs[key] }
	}

	fun sumSelectConfigs(
		selection: List<SkeletonConfigOffsets>,
		humanPoseManager: HumanPoseManager,
	): Float {
		return sumSelectConfigs(selection) { key: SkeletonConfigOffsets? -> humanPoseManager.getOffset(key) }
	}

	fun getLengthSum(configs: Map<BoneType, Float>): Float {
		return getLengthSum(configs, null)
	}

	fun getLengthSum(
		configs: Map<BoneType, Float>,
		configsAlt: Map<BoneType, Float>?,
	): Float {
		var length = 0f
		if (configsAlt != null) {
			for ((key, value) in configsAlt) {
				// If there isn't a duplicate config
				if (!configs.containsKey(key)) {
					length += value
				}
			}
		}
		for (boneLength in configs.values) {
			length += boneLength
		}
		return length
	}

	fun getTargetHeight(frames: PoseFrames): Float {
		val targetHeight: Float
		// Get the current skeleton from the server
		val humanPoseManager = humanPoseManager
		if (humanPoseManager != null) {
			// If there is a skeleton available, calculate the target height
			// from its configs
			targetHeight = humanPoseManager.userHeightFromConfig
			LogManager
				.warning(
					"[AutoBone] Target height loaded from skeleton (Make sure you reset before running!): $targetHeight"
				)
		} else {
			// Otherwise if there is no skeleton available, attempt to get the
			// max HMD height from the recording
			val hmdHeight = frames.maxHmdHeight
			if (hmdHeight <= 0.50f) {
				LogManager
					.warning(
						"[AutoBone] Max headset height detected (Value seems too low, did you not stand up straight while measuring?): $hmdHeight"
					)
			} else {
				LogManager.info("[AutoBone] Max headset height detected: $hmdHeight")
			}

			// Estimate target height from HMD height
			targetHeight = hmdHeight
		}
		return targetHeight
	}

	@Throws(AutoBoneException::class)
	fun processFrames(
		frames: PoseFrames,
		calcInitError: Boolean = true,
		targetHeight: Float = -1f,
		epochCallback: Consumer<Epoch?>?,
	): AutoBoneResults {
		var targetHeight = targetHeight
		val frameCount = frames.maxFrameCount
		val frames1 = PoseFrames(frames)
		val frames2 = PoseFrames(frames)
		val trackers1 = frames1.trackers
		val trackers2 = frames2.trackers

		// Reload configs and detect chest tracker from the first frame
		reloadConfigValues(trackers1)
		val skeleton1 = HumanPoseManager(
			trackers1
		)
		val skeleton2 = HumanPoseManager(
			trackers2
		)
		val intermediateOffsets = EnumMap(
			offsets
		)
		val trainingStep = AutoBoneTrainingStep(
			targetHeight,
			skeleton1,
			skeleton2,
			frames,
			intermediateOffsets
		)
		skeleton1.setLegTweaksEnabled(false)
		skeleton2.setLegTweaksEnabled(false)

		// If target height isn't specified, auto-detect
		if (targetHeight < 0f) {
			targetHeight = getTargetHeight(frames)
		}
		val errorStats = StatsCalculator()

		// Epoch loop, each epoch is one full iteration over the full dataset
		for (epoch in (if (calcInitError) -1 else 0) until config.numEpochs) {
			val adjustRate = if (epoch >= 0) {
				(
					config.initialAdjustRate
						* FastMath.pow(config.adjustRateMultiplier, epoch.toFloat())
					)
			} else {
				0f
			}
			var randomFrameIndices: IntArray? = null
			if (config.randomizeFrameOrder) {
				randomFrameIndices = IntArray(frameCount)
				var zeroPos = -1
				for (i in 0 until frameCount) {
					var index = rand.nextInt(frameCount)
					if (i > 0) {
						while (index == zeroPos || randomFrameIndices[index] > 0) {
							index = rand.nextInt(frameCount)
						}
					} else {
						zeroPos = index
					}
					randomFrameIndices[index] = i
				}
			}

			// Iterate over the frames using a cursor and an offset for comparing
			// frames a certain number of frames apart
			var cursorOffset = config.minDataDistance
			while (cursorOffset <= config.maxDataDistance &&
				cursorOffset < frameCount
			) {
				var frameCursor = 0
				while (frameCursor < frameCount - cursorOffset) {
					val frameCursor2 = frameCursor + cursorOffset
					applyConfig(skeleton1)
					applyConfig(skeleton2)
					if (config.randomizeFrameOrder) {
						trainingStep
							.setCursors(
								randomFrameIndices!![frameCursor],
								randomFrameIndices[frameCursor2]
							)
					} else {
						trainingStep.setCursors(frameCursor, frameCursor2)
					}
					frames1.setCursors(trainingStep.cursor1)
					frames2.setCursors(trainingStep.cursor2)
					skeleton1.update()
					skeleton2.update()
					val totalLength = getLengthSum(offsets)
					val curHeight = sumSelectConfigs(heightOffsets, offsets)
					trainingStep.currentHeight = curHeight
					val errorDeriv = getErrorDeriv(trainingStep)
					val error = errorFunc(errorDeriv)

					// In case of fire
					if (java.lang.Float.isNaN(error) || java.lang.Float.isInfinite(error)) {
						// Extinguish
						LogManager
							.warning(
								"[AutoBone] Error value is invalid, resetting variables to recover"
							)
						reloadConfigValues(trackers1)

						// Reset error sum values
						errorStats.reset()
						frameCursor += config.cursorIncrement

						// Continue on new data
						continue
					}

					// Store the error count for logging purposes
					errorStats.addValue(errorDeriv)
					val adjustVal = error * adjustRate

					// If there is no adjustment whatsoever, skip this
					if (adjustVal == 0f) {
						frameCursor += config.cursorIncrement
						continue
					}
					val slideLeft = skeleton2
						.getComputedTracker(TrackerRole.LEFT_FOOT).position
						.subtract(
							skeleton1.getComputedTracker(TrackerRole.LEFT_FOOT).position
						)
					val slideRight = skeleton2
						.getComputedTracker(TrackerRole.RIGHT_FOOT).position
						.subtract(
							skeleton1
								.getComputedTracker(TrackerRole.RIGHT_FOOT).position
						)
					intermediateOffsets.putAll(offsets)
					for (entry in offsets.entries) {
						// Skip adjustment if the epoch is before starting (for
						// logging only)
						if (epoch < 0) {
							break
						}
						val originalLength = entry.value
						val isHeightVar = heightOffsets.contains(entry.key)
						val leftDotProduct = getDotProductDiff(
							skeleton1,
							skeleton2,
							entry.key,
							false,
							slideLeft
						)
						val rightDotProduct = getDotProductDiff(
							skeleton1,
							skeleton2,
							entry.key,
							true,
							slideRight
						)
						val dotLength = (
							originalLength
								* ((leftDotProduct + rightDotProduct) / 2f)
							)

						// Scale by the ratio for smooth adjustment and more
						// stable results
						val curAdjustVal = adjustVal * -dotLength / totalLength
						val newLength = originalLength + curAdjustVal

						// No small or negative numbers!!! Bad algorithm!
						if (newLength < 0.01f) {
							continue
						}

						// Apply new offset length
						intermediateOffsets[entry.key] = newLength
						applyConfig(skeleton1, intermediateOffsets)
						applyConfig(skeleton2, intermediateOffsets)

						// Update the skeleton poses for the new offset length
						skeleton1.update()
						skeleton2.update()
						val newHeight = if (isHeightVar) curHeight + curAdjustVal else curHeight
						trainingStep.currentHeight = newHeight
						val newErrorDeriv = getErrorDeriv(trainingStep)
						if (newErrorDeriv < errorDeriv) {
							entry.setValue(newLength)
						}

						// Reset the length to minimize bias in other variables,
						// it's applied later
						intermediateOffsets[entry.key] = originalLength
						applyConfig(skeleton1, intermediateOffsets)
						applyConfig(skeleton2, intermediateOffsets)
					}
					if (config.scaleEachStep) {
						val stepHeight = sumSelectConfigs(heightOffsets, offsets)
						if (stepHeight > 0f) {
							val stepHeightDiff = targetHeight - stepHeight
							for (entry in offsets.entries) {
								// Only height variables
								if (entry.key == BoneType.NECK ||
									!heightOffsets.contains(entry.key)
								) {
									continue
								}
								val length = entry.value

								// Multiply the diff by the length to height
								// ratio
								val adjVal = stepHeightDiff * (length / stepHeight)

								// Scale the length to fit the target height
								entry.setValue(Math.max(length + adjVal / 2f, 0.01f))
							}
						}
					}
					frameCursor += config.cursorIncrement
				}
				cursorOffset++
			}

			// Calculate average error over the epoch
			if (epoch <= 0 || epoch >= config.numEpochs - 1 || (epoch + 1) % config.printEveryNumEpochs == 0) {
				LogManager
					.info(
						"[AutoBone] Epoch ${epoch + 1} average error: ${errorStats.mean} (SD ${errorStats.standardDeviation})"
					)
			}
			applyConfig(legacyConfigs)
			epochCallback?.accept(Epoch(epoch + 1, config.numEpochs, errorStats, legacyConfigs))
		}
		val finalHeight = sumSelectConfigs(heightOffsets, offsets)
		LogManager
			.info(
				"[AutoBone] Target height: $targetHeight New height: $finalHeight"
			)
		return AutoBoneResults(finalHeight, targetHeight, errorStats, legacyConfigs)
	}

	@Throws(AutoBoneException::class)
	protected fun getErrorDeriv(trainingStep: AutoBoneTrainingStep): Float {
		var sumError = 0f
		if (config.slideErrorFactor > 0f) {
			sumError += slideError.getStepError(trainingStep) * config.slideErrorFactor
		}
		if (config.offsetSlideErrorFactor > 0f) {
			sumError += (
				offsetSlideError.getStepError(trainingStep) *
					config.offsetSlideErrorFactor
				)
		}
		if (config.footHeightOffsetErrorFactor > 0f) {
			sumError += (
				footHeightOffsetError.getStepError(trainingStep) *
					config.footHeightOffsetErrorFactor
				)
		}
		if (config.bodyProportionErrorFactor > 0f) {
			sumError += (
				bodyProportionError.getStepError(trainingStep) *
					config.bodyProportionErrorFactor
				)
		}
		if (config.heightErrorFactor > 0f) {
			sumError += heightError.getStepError(trainingStep) * config.heightErrorFactor
		}
		if (config.positionErrorFactor > 0f) {
			sumError += (
				positionError.getStepError(trainingStep) *
					config.positionErrorFactor
				)
		}
		if (config.positionOffsetErrorFactor > 0f) {
			sumError += (
				positionOffsetError.getStepError(trainingStep) *
					config.positionOffsetErrorFactor
				)
		}
		return sumError
	}

	val lengthsString: String
		get() {
			val configInfo = StringBuilder()
			offsets.forEach { (key: BoneType, value: Float) ->
				if (configInfo.length > 0) {
					configInfo.append(", ")
				}
				configInfo
					.append(key.toString())
					.append(": ")
					.append(StringUtils.prettyNumber(value * 100f, 2))
			}
			return configInfo.toString()
		}

	fun saveRecording(frames: PoseFrames?, recordingFile: File) {
		if (saveDir.isDirectory || saveDir.mkdirs()) {
			LogManager
				.info("[AutoBone] Exporting frames to \"${recordingFile.path}\"...")
			if (PoseFrameIO.writeToFile(recordingFile, frames)) {
				LogManager
					.info(
						"[AutoBone] Done exporting! Recording can be found at \"${recordingFile.path}\"."
					)
			} else {
				LogManager
					.severe(
						"[AutoBone] Failed to export the recording to \"${recordingFile.path}\"."
					)
			}
		} else {
			LogManager
				.severe(
					"[AutoBone] Failed to create the recording directory \"${saveDir.path}\"."
				)
		}
	}

	fun saveRecording(frames: PoseFrames, recordingFileName: String) {
		saveRecording(frames, File(saveDir, recordingFileName))
	}

	fun saveRecording(frames: PoseFrames) {
		var recordingFile: File
		var recordingIndex = 1
		do {
			recordingFile = File(saveDir, "ABRecording${recordingIndex++}.pfr")
		} while (recordingFile.exists())
		saveRecording(frames, recordingFile)
	}

	fun loadRecordings(): FastList<Pair<String, PoseFrames>> {
		val recordings = FastList<Pair<String, PoseFrames>>()
		if (loadDir.isDirectory) {
			val files = loadDir.listFiles()
			if (files != null) {
				for (file in files) {
					if (file.isFile &&
						org.apache.commons.lang3.StringUtils
							.endsWithIgnoreCase(file.name, ".pfr")
					) {
						LogManager
							.info(
								"[AutoBone] Detected recording at \"${file.path}\", loading frames..."
							)
						val frames = PoseFrameIO.readFromFile(file)
						if (frames == null) {
							LogManager
								.severe("Reading frames from \"${file.path}\" failed...")
						} else {
							recordings.add(Pair.of(file.name, frames))
						}
					}
				}
			}
		}
		return recordings
	}

	inner class Epoch(
		val epoch: Int,
		val totalEpochs: Int,
		val epochError: StatsCalculator,
		val configValues: EnumMap<SkeletonConfigOffsets, Float>,
	) {
		override fun toString(): String {
			return "Epoch: $epoch, Epoch Error: $epochError"
		}
	}

	inner class AutoBoneResults(
		val finalHeight: Float,
		val targetHeight: Float,
		val epochError: StatsCalculator,
		val configValues: EnumMap<SkeletonConfigOffsets, Float>,
	) {
		val heightDifference: Float
			get() = FastMath.abs(targetHeight - finalHeight)
	}

	companion object {
		val saveDir = File("AutoBone Recordings")
		val loadDir = File("Load AutoBone Recordings")

		// Mean square error function
		protected fun errorFunc(errorDeriv: Float): Float {
			return 0.5f * (errorDeriv * errorDeriv)
		}
	}
}
