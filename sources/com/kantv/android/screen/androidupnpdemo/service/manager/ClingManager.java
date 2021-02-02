package com.kantv.android.screen.androidupnpdemo.service.manager;

import android.content.Context;
import androidx.annotation.Nullable;
import com.kantv.android.screen.androidupnpdemo.entity.ClingControlPoint;
import com.kantv.android.screen.androidupnpdemo.entity.ClingDevice;
import com.kantv.android.screen.androidupnpdemo.entity.IControlPoint;
import com.kantv.android.screen.androidupnpdemo.entity.IDevice;
import com.kantv.android.screen.androidupnpdemo.service.ClingUpnpService;
import com.kantv.android.screen.androidupnpdemo.util.ListUtils;
import com.kantv.android.screen.androidupnpdemo.util.Utils;
import java.util.ArrayList;
import java.util.Collection;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDADeviceType;
import org.fourthline.cling.model.types.UDAServiceType;
import org.fourthline.cling.registry.Registry;

public class ClingManager implements IClingManager {
    public static final ServiceType AV_TRANSPORT_SERVICE = new UDAServiceType("AVTransport");
    public static final DeviceType DMR_DEVICE_TYPE = new UDADeviceType("MediaRenderer");
    private static ClingManager INSTANCE = null;
    public static final ServiceType RENDERING_CONTROL_SERVICE = new UDAServiceType("RenderingControl");
    private IDeviceManager mDeviceManager;
    private ClingUpnpService mUpnpService;

    private ClingManager() {
    }

    public static ClingManager getInstance() {
        if (Utils.isNull(INSTANCE)) {
            INSTANCE = new ClingManager();
        }
        return INSTANCE;
    }

    public void searchDevices() {
        if (!Utils.isNull(this.mUpnpService)) {
            this.mUpnpService.getControlPoint().search();
        }
    }

    @Nullable
    public Collection<ClingDevice> getDmrDevices() {
        if (Utils.isNull(this.mUpnpService)) {
            return null;
        }
        Collection<Device> devices = this.mUpnpService.getRegistry().getDevices(DMR_DEVICE_TYPE);
        if (ListUtils.isEmpty(devices)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Device clingDevice : devices) {
            arrayList.add(new ClingDevice(clingDevice));
        }
        return arrayList;
    }

    @Nullable
    public IControlPoint getControlPoint() {
        if (Utils.isNull(this.mUpnpService)) {
            return null;
        }
        ClingControlPoint.getInstance().setControlPoint(this.mUpnpService.getControlPoint());
        return ClingControlPoint.getInstance();
    }

    public Registry getRegistry() {
        return this.mUpnpService.getRegistry();
    }

    public IDevice getSelectedDevice() {
        if (Utils.isNull(this.mDeviceManager)) {
            return null;
        }
        return this.mDeviceManager.getSelectedDevice();
    }

    public void cleanSelectedDevice() {
        if (!Utils.isNull(this.mDeviceManager)) {
            this.mDeviceManager.cleanSelectedDevice();
        }
    }

    public void setSelectedDevice(IDevice iDevice) {
        this.mDeviceManager.setSelectedDevice(iDevice);
    }

    public void registerAVTransport(Context context) {
        if (!Utils.isNull(this.mDeviceManager)) {
            this.mDeviceManager.registerAVTransport(context);
        }
    }

    public void registerRenderingControl(Context context) {
        if (!Utils.isNull(this.mDeviceManager)) {
            this.mDeviceManager.registerRenderingControl(context);
        }
    }

    public void setUpnpService(ClingUpnpService clingUpnpService) {
        this.mUpnpService = clingUpnpService;
    }

    public void setDeviceManager(IDeviceManager iDeviceManager) {
        this.mDeviceManager = iDeviceManager;
    }

    public void destroy() {
        ClingUpnpService clingUpnpService = this.mUpnpService;
        if (clingUpnpService != null) {
            clingUpnpService.onDestroy();
        }
        IDeviceManager iDeviceManager = this.mDeviceManager;
        if (iDeviceManager != null) {
            iDeviceManager.destroy();
        }
    }
}
