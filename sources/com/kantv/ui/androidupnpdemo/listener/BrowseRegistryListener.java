package com.kantv.ui.androidupnpdemo.listener;

import android.util.Log;
import com.kantv.ui.androidupnpdemo.entity.ClingDevice;
import com.kantv.ui.androidupnpdemo.entity.ClingDeviceList;
import com.kantv.ui.androidupnpdemo.service.manager.ClingManager;
import com.kantv.ui.androidupnpdemo.util.Utils;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.registry.DefaultRegistryListener;
import org.fourthline.cling.registry.Registry;

public class BrowseRegistryListener extends DefaultRegistryListener {
    private static final String TAG = "BrowseRegistryListener";
    private DeviceListChangedListener mOnDeviceListChangedListener;

    public void localDeviceAdded(Registry registry, LocalDevice localDevice) {
    }

    public void localDeviceRemoved(Registry registry, LocalDevice localDevice) {
    }

    public void remoteDeviceDiscoveryStarted(Registry registry, RemoteDevice remoteDevice) {
    }

    public void remoteDeviceDiscoveryFailed(Registry registry, RemoteDevice remoteDevice, Exception exc) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("remoteDeviceDiscoveryFailed device: ");
        sb.append(remoteDevice.getDisplayString());
        Log.e(str, sb.toString());
        deviceRemoved(remoteDevice);
    }

    public void remoteDeviceAdded(Registry registry, RemoteDevice remoteDevice) {
        deviceAdded(remoteDevice);
    }

    public void remoteDeviceRemoved(Registry registry, RemoteDevice remoteDevice) {
        deviceRemoved(remoteDevice);
    }

    private void deviceAdded(Device device) {
        Log.e(TAG, "deviceAdded");
        if (!device.getType().equals(ClingManager.DMR_DEVICE_TYPE)) {
            Log.e(TAG, "deviceAdded called, but not match");
            return;
        }
        if (Utils.isNotNull(this.mOnDeviceListChangedListener)) {
            ClingDevice clingDevice = new ClingDevice(device);
            ClingDeviceList.getInstance().addDevice(clingDevice);
            this.mOnDeviceListChangedListener.onDeviceAdded(clingDevice);
        }
    }

    public void deviceRemoved(Device device) {
        Log.e(TAG, "deviceRemoved");
        if (Utils.isNotNull(this.mOnDeviceListChangedListener)) {
            ClingDevice clingDevice = ClingDeviceList.getInstance().getClingDevice(device);
            if (clingDevice != null) {
                ClingDeviceList.getInstance().removeDevice(clingDevice);
                this.mOnDeviceListChangedListener.onDeviceRemoved(clingDevice);
            }
        }
    }

    public void setOnDeviceListChangedListener(DeviceListChangedListener deviceListChangedListener) {
        this.mOnDeviceListChangedListener = deviceListChangedListener;
    }
}
