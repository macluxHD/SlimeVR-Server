package dev.slimevr.tracking.trackers;

import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import dev.slimevr.config.TrackerConfig;
import dev.slimevr.tracking.Device;

import java.util.concurrent.atomic.AtomicInteger;


public interface Tracker {

	AtomicInteger nextLocalTrackerId = new AtomicInteger();

	static int getNextLocalTrackerId() {
		return nextLocalTrackerId.incrementAndGet();
	}

	boolean getPosition(Vector3f store);

	boolean getRotation(Quaternion store);

	boolean getRawRotation(Quaternion store);

	boolean getAcceleration(Vector3f store);

	String getName();

	TrackerStatus getStatus();

	void readConfig(TrackerConfig config);

	void writeConfig(TrackerConfig config);

	float getConfidenceLevel();

	void resetFull(Quaternion reference);

	void resetYaw(Quaternion reference);

	void resetMounting(boolean reverseYaw);

	void tick();

	TrackerPosition getBodyPosition();

	void setBodyPosition(TrackerPosition position);

	boolean userEditable();

	boolean hasRotation();

	boolean hasPosition();

	boolean hasAcceleration();

	boolean isComputed();

	int getTrackerId();

	int getTrackerNum();

	Device getDevice();

	String getDisplayName();

	String getCustomName();

	void setCustomName(String customName);


	/**
	 * Returns the real tracker behind this tracker.
	 */
	Tracker get();


}
