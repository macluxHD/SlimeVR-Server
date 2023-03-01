package dev.slimevr.tracking.trackers;

import com.jme3.math.Quaternion;
import dev.slimevr.tracking.Device;
import io.eiren.util.BufferedTimer;


public class VRTracker extends ComputedTracker {

	protected BufferedTimer timer = new BufferedTimer(1f);
	public final Quaternion mountFix = new Quaternion();
	public final Quaternion attachmentFix = new Quaternion();
	public final Quaternion yawFix = new Quaternion();

	public VRTracker(
		int id,
		String serial,
		String name,
		boolean hasRotation,
		boolean hasPosition,
		Device device,
		boolean useTimeout
	) {
		super(id, serial, name, hasRotation, hasPosition, device, useTimeout);
	}

	@Override
	public boolean getRotation(Quaternion store) {
		store.set(rotation);
		// Don't adjust if tracker is HMD/Head (use raw rotation)
		if (super.getBodyPosition() != TrackerPosition.HMD)
			adjustInternal(store);
		return true;
	}

	// TODO Reduce code duplication from IMUTracker.java
	// Refactor all tracker classes into one?
	protected void adjustInternal(Quaternion store) {
		store.multLocal(attachmentFix);
		store.multLocal(mountFix);
		yawFix.mult(store, store);
	}

	@Override
	public void resetFull(Quaternion reference) {
		fixAttachment(rotation, reference);
		fixYaw(rotation, reference);
	}

	@Override
	public void resetYaw(Quaternion reference) {
		fixYaw(rotation, reference);
	}

	private void fixAttachment(Quaternion sensorRotation, Quaternion reference) {
		mountFix.fromAngles(0, reference.getYaw(), 0);

		attachmentFix.set(sensorRotation.inverse());
	}

	private void fixYaw(Quaternion sensorRotation, Quaternion reference) {
		// Use only yaw HMD rotation
		reference = reference.clone();
		reference.fromAngles(0, reference.getYaw(), 0);

		sensorRotation = sensorRotation.clone();
		sensorRotation.multLocal(attachmentFix);
		sensorRotation.multLocal(mountFix);

		sensorRotation.fromAngles(0, sensorRotation.getYaw(), 0);

		yawFix.set(sensorRotation).inverseLocal().multLocal(reference);
	}

	@Override
	public float getTPS() {
		return timer.getAverageFPS();
	}

	@Override
	public void dataTick() {
		super.dataTick();
		timer.update();
	}

	@Override
	public boolean userEditable() {
		return true;
	}

	@Override
	public boolean isComputed() {
		return false;
	}

	@Override
	public String getDisplayName() {
		return getName();
	}
}
