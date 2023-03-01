package dev.slimevr.tracking;

import dev.slimevr.VRServer;
import io.eiren.util.collections.FastList;


public class DeviceManager {

	private final FastList<Device> devices = new FastList<>();

	public FastList<Device> getDevices() {
		return devices;
	}

	private final VRServer server;

	public DeviceManager(VRServer server) {
		this.server = server;
	}

	public Device createDevice(String name, String version, String manufacturer) {
		Device device = new Device();

		device.setCustomName(name);
		device.setFirmwareVersion(version);
		device.setManufacturer(manufacturer);

		return device;
	}

	public void addDevice(Device device) {
		this.server.queueTask(() -> this.devices.add(device));
	}
}
