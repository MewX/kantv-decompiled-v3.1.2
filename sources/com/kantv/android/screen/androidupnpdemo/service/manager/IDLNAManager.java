package com.kantv.android.screen.androidupnpdemo.service.manager;

import android.content.Context;
import com.kantv.android.screen.androidupnpdemo.entity.IControlPoint;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;
import java.util.Collection;

public interface IDLNAManager {
    void cleanSelectedDevice();

    void destroy();

    IControlPoint getControlPoint();

    Collection<? extends IDevice> getDmrDevices();

    IDevice getSelectedDevice();

    void registerAVTransport(Context context);

    void registerRenderingControl(Context context);

    void searchDevices();

    void setSelectedDevice(IDevice iDevice);
}
