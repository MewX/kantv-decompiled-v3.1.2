package com.kantv.ui.androidupnpdemo.service.manager;

import android.content.Context;
import android.util.Log;
import com.kantv.ui.androidupnpdemo.Config;
import com.kantv.ui.androidupnpdemo.control.SubscriptionControl;
import com.kantv.ui.androidupnpdemo.entity.ClingDevice;
import com.kantv.ui.androidupnpdemo.entity.ClingDeviceList;
import com.kantv.ui.androidupnpdemo.entity.IDevice;
import com.kantv.ui.androidupnpdemo.util.Utils;
import java.util.Collection;

public class DeviceManager implements IDeviceManager {
    private static final String TAG = "DeviceManager";
    private ClingDevice mSelectedDevice;
    private SubscriptionControl mSubscriptionControl = new SubscriptionControl();

    public IDevice getSelectedDevice() {
        return this.mSelectedDevice;
    }

    public void setSelectedDevice(IDevice iDevice) {
        Log.i(TAG, "Change selected device.");
        this.mSelectedDevice = (ClingDevice) iDevice;
        Collection<ClingDevice> clingDeviceList = ClingDeviceList.getInstance().getClingDeviceList();
        if (Utils.isNotNull(clingDeviceList)) {
            for (ClingDevice selected : clingDeviceList) {
                selected.setSelected(false);
            }
        }
        this.mSelectedDevice.setSelected(true);
        Config.getInstance().setHasRelTimePosCallback(false);
    }

    public void cleanSelectedDevice() {
        if (!Utils.isNull(this.mSelectedDevice)) {
            this.mSelectedDevice.setSelected(false);
        }
    }

    public void registerAVTransport(Context context) {
        if (!Utils.isNull(this.mSelectedDevice)) {
            this.mSubscriptionControl.registerAVTransport(this.mSelectedDevice, context);
        }
    }

    public void registerRenderingControl(Context context) {
        if (!Utils.isNull(this.mSelectedDevice)) {
            this.mSubscriptionControl.registerRenderingControl(this.mSelectedDevice, context);
        }
    }

    public void destroy() {
        if (Utils.isNotNull(this.mSubscriptionControl)) {
            this.mSubscriptionControl.destroy();
        }
    }
}
