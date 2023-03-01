package dev.slimevr.tracking.processor.skeleton;


import dev.slimevr.config.TapDetectionConfig;
import dev.slimevr.tracking.processor.HumanPoseManager;
import dev.slimevr.tracking.trackers.Tracker;


// handles tap detection for the skeleton
public class TapDetectionManager {
	private static final String resetSourceName = "TapDetection";

	// server and related classes
	private final HumanSkeleton skeleton;
	private HumanPoseManager humanPoseManager;
	private TapDetectionConfig config;

	// tap detectors
	private TapDetection quickResetDetector;
	private TapDetection resetDetector;
	private TapDetection mountingResetDetector;

	// number of taps to detect
	private int quickResetTaps = 2;
	private int resetTaps = 3;
	private int mountingResetTaps = 3;

	// delay
	private static final float NS_CONVERTER = 1.0e9f;
	private float resetDelayNs = 0.20f * NS_CONVERTER;
	private float quickResetDelayNs = 1.00f * NS_CONVERTER;
	private float mountingResetDelayNs = 1.00f * NS_CONVERTER;

	public TapDetectionManager(HumanSkeleton skeleton) {
		this.skeleton = skeleton;
	}

	public TapDetectionManager(
		HumanSkeleton skeleton,
		HumanPoseManager humanPoseManager,
		TapDetectionConfig config
	) {
		this.skeleton = skeleton;
		this.humanPoseManager = humanPoseManager;
		this.config = config;

		quickResetDetector = new TapDetection(skeleton, getTrackerToWatchQuickReset());
		resetDetector = new TapDetection(skeleton, getTrackerToWatchReset());
		mountingResetDetector = new TapDetection(skeleton, getTrackerToWatchMountingReset());

		// since this config value is only modified by editing the config file,
		// we can set it here
		quickResetDetector
			.setNumberTrackersOverThreshold(
				config.getNumberTrackersOverThreshold()
			);
		resetDetector
			.setNumberTrackersOverThreshold(
				config.getNumberTrackersOverThreshold()
			);
		mountingResetDetector
			.setNumberTrackersOverThreshold(
				config.getNumberTrackersOverThreshold()
			);

		updateConfig();
	}

	public void updateConfig() {
		this.quickResetDelayNs = config.getQuickResetDelay() * NS_CONVERTER;
		this.resetDelayNs = config.getResetDelay() * NS_CONVERTER;
		this.mountingResetDelayNs = config.getMountingResetDelay() * NS_CONVERTER;
		quickResetDetector.setEnabled(config.getQuickResetEnabled());
		resetDetector.setEnabled(config.getResetEnabled());
		mountingResetDetector.setEnabled(config.getMountingResetEnabled());
		quickResetTaps = config.getQuickResetTaps();
		resetTaps = config.getResetTaps();
		mountingResetTaps = config.getMountingResetTaps();
		quickResetDetector.setMaxTaps(quickResetTaps);
		resetDetector.setMaxTaps(resetTaps);
		mountingResetDetector.setMaxTaps(mountingResetTaps);
	}

	public void update() {
		if (quickResetDetector == null || resetDetector == null || mountingResetDetector == null)
			return;
		// update the tap detectors
		quickResetDetector.update();
		resetDetector.update();
		mountingResetDetector.update();

		// check if any tap detectors have detected taps
		checkQuickReset();
		checkReset();
		checkMountingReset();
	}

	private void checkQuickReset() {
		boolean tapped = (quickResetTaps <= quickResetDetector.getTaps());

		if (
			tapped && System.nanoTime() - quickResetDetector.getDetectionTime() > quickResetDelayNs
		) {
			if (humanPoseManager != null)
				humanPoseManager.resetTrackersYaw(resetSourceName);
			else
				skeleton.resetTrackersYaw(resetSourceName);
			quickResetDetector.resetDetector();
		}
	}

	private void checkReset() {
		boolean tapped = (resetTaps <= resetDetector.getTaps());

		if (
			tapped && System.nanoTime() - resetDetector.getDetectionTime() > resetDelayNs
		) {
			if (humanPoseManager != null)
				humanPoseManager.resetTrackersFull(resetSourceName);
			else
				skeleton.resetTrackersFull(resetSourceName);
			resetDetector.resetDetector();
		}
	}

	private void checkMountingReset() {
		boolean tapped = (mountingResetTaps <= mountingResetDetector.getTaps());

		if (
			tapped
				&& System.nanoTime() - mountingResetDetector.getDetectionTime()
					> mountingResetDelayNs
		) {
			skeleton.resetTrackersMounting(resetSourceName);
			mountingResetDetector.resetDetector();
		}
	}

	// returns either the chest tracker, hip tracker, or waist tracker depending
	// on which one is available
	// if none are available, returns null
	private Tracker getTrackerToWatchQuickReset() {
		if (skeleton.chestTracker != null)
			return skeleton.chestTracker;
		else if (skeleton.hipTracker != null)
			return skeleton.hipTracker;
		else if (skeleton.waistTracker != null)
			return skeleton.waistTracker;
		else
			return null;
	}

	private Tracker getTrackerToWatchReset() {
		if (skeleton.leftUpperLegTracker != null)
			return skeleton.leftUpperLegTracker;
		else if (skeleton.leftLowerLegTracker != null)
			return skeleton.leftLowerLegTracker;
		return null;
	}

	private Tracker getTrackerToWatchMountingReset() {
		if (skeleton.rightUpperLegTracker != null)
			return skeleton.rightUpperLegTracker;
		else if (skeleton.rightLowerLegTracker != null)
			return skeleton.rightLowerLegTracker;
		return null;
	}

}
