package com.kantv.ui.androidupnpdemo.listener;

import com.kantv.ui.androidupnpdemo.entity.IDevice;

public interface DeviceListChangedListener {
    void onDeviceAdded(IDevice iDevice);

    void onDeviceRemoved(IDevice iDevice);
}
