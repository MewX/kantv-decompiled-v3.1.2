package com.kantv.android.screen.androidupnpdemo.util;

import androidx.annotation.Nullable;
import com.kantv.android.screen.androidupnpdemo.entity.IControlPoint;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;
import com.kantv.android.screen.androidupnpdemo.service.manager.ClingManager;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.types.ServiceType;

public class ClingUtils {
    @Nullable
    public static Service findServiceFromSelectedDevice(ServiceType serviceType) {
        IDevice selectedDevice = ClingManager.getInstance().getSelectedDevice();
        if (Utils.isNull(selectedDevice)) {
            return null;
        }
        return ((Device) selectedDevice.getDevice()).findService(serviceType);
    }

    @Nullable
    public static Service findAVTServiceByDevice(Device device) {
        return device.findService(ClingManager.AV_TRANSPORT_SERVICE);
    }

    @Nullable
    public static ControlPoint getControlPoint() {
        IControlPoint controlPoint = ClingManager.getInstance().getControlPoint();
        if (Utils.isNull(controlPoint)) {
            return null;
        }
        return (ControlPoint) controlPoint.getControlPoint();
    }
}
