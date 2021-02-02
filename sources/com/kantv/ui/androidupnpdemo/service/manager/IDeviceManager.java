package com.kantv.ui.androidupnpdemo.service.manager;

import android.content.Context;
import com.kantv.ui.androidupnpdemo.entity.IDevice;

public interface IDeviceManager {
    void cleanSelectedDevice();

    void destroy();

    IDevice getSelectedDevice();

    void registerAVTransport(Context context);

    void registerRenderingControl(Context context);

    void setSelectedDevice(IDevice iDevice);
}
