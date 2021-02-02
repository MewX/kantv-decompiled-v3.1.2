package org.fourthline.cling.registry;

import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;

public class DefaultRegistryListener implements RegistryListener {
    public void afterShutdown() {
    }

    public void beforeShutdown(Registry registry) {
    }

    public void deviceAdded(Registry registry, Device device) {
    }

    public void deviceRemoved(Registry registry, Device device) {
    }

    public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
    }

    public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
    }

    public void remoteDeviceUpdated(Registry registry, RemoteDevice remoteDevice) {
    }

    public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
        deviceAdded(registry, remoteDevice);
    }

    public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
        deviceRemoved(registry, remoteDevice);
    }

    public void localDeviceAdded(Registry registry, LocalDevice localDevice) {
        deviceAdded(registry, localDevice);
    }

    public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
        deviceRemoved(registry, localDevice);
    }
}
