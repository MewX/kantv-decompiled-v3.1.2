package com.kantv.android.screen.androidupnpdemo.service.manager;

import com.kantv.android.screen.androidupnpdemo.entity.IControlPoint;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;
import java.util.Collection;

public interface IUpnpServiceManager {
    void destroy();

    IControlPoint getControlPoint();

    Collection<? extends IDevice> getDmrDevices();

    IDevice getSelectedDevice();

    void searchDevices();

    void setSelectedDevice(IDevice iDevice);
}
