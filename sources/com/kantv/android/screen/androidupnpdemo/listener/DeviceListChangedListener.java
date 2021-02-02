package com.kantv.android.screen.androidupnpdemo.listener;

import com.kantv.android.screen.androidupnpdemo.entity.IDevice;

public interface DeviceListChangedListener {
    void onDeviceAdded(IDevice iDevice);

    void onDeviceRemoved(IDevice iDevice);
}
