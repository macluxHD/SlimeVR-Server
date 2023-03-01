package dev.slimevr.tracking.trackers.udp;

import dev.slimevr.NetworkProtocol;
import dev.slimevr.tracking.Device;
import dev.slimevr.tracking.trackers.IMUTracker;
import dev.slimevr.tracking.trackers.Tracker;

import java.net.InetAddress;
import java.net.SocketAddress;
import java.util.HashMap;


public class UDPDevice extends Device {

	public final int id;
	public SocketAddress address;
	public InetAddress ipAddress;
	public long lastPacket = System.currentTimeMillis();
	public int lastPingPacketId = -1;
	public long lastPingPacketTime = 0;
	public String name;
	public String descriptiveName;
	public StringBuilder serialBuffer = new StringBuilder();
	public long lastSerialUpdate = 0;
	public long lastPacketNumber = -1;
	public NetworkProtocol protocol = null;
	public int firmwareBuild = 0;
	public boolean timedOut = false;
	private final HashMap<Integer, Tracker> trackers = new HashMap<>();

	public UDPDevice(SocketAddress address, InetAddress ipAddress) {
		this.address = address;
		this.ipAddress = ipAddress;
		this.id = UDPDevice.nextLocalDeviceId.incrementAndGet();
	}

	public boolean isNextPacket(long packetId) {
		if (packetId != 0 && packetId <= lastPacketNumber)
			return false;
		lastPacketNumber = packetId;
		return true;
	}

	@Override
	public String toString() {
		return "udp:/" + ipAddress;
	}

	@Override
	public int getId() {
		return id;
	}

	@Override
	public String getManufacturer() {
		return "SlimeVR";
	}

	@Override
	public String getDisplayName() {
		return name;
	}

	@Override
	public String getFirmwareVersion() {
		return "v" + firmwareBuild;
	}

	@Override
	public String getCustomName() {
		return name;
	}

	@Override
	public InetAddress getIpAddress() {
		return this.ipAddress;
	}

	@Override
	public HashMap<Integer, Tracker> getTrackers() {
		return this.trackers;
	}

	public IMUTracker getTracker(int id) {
		return (IMUTracker) this.getTrackers().get(id);
	}
}
