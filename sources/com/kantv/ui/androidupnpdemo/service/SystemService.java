package com.kantv.ui.androidupnpdemo.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;
import com.kantv.ui.androidupnpdemo.entity.ClingDevice;
import com.kantv.ui.androidupnpdemo.entity.IDevice;
import com.kantv.ui.androidupnpdemo.service.callback.AVTransportSubscriptionCallback;
import com.kantv.ui.androidupnpdemo.service.manager.ClingManager;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.controlpoint.SubscriptionCallback;

public class SystemService extends Service {
    private static final String TAG = "SystemService";
    private Binder binder = new LocalBinder();
    private AVTransportSubscriptionCallback mAVTransportSubscriptionCallback;
    private int mDeviceVolume;
    private ClingDevice mSelectedDevice;

    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public SystemService getService() {
            return SystemService.this;
        }
    }

    public void subscribeMediaRender(ControlPoint controlPoint) {
    }

    public void onCreate() {
        super.onCreate();
    }

    public void onDestroy() {
        AVTransportSubscriptionCallback aVTransportSubscriptionCallback = this.mAVTransportSubscriptionCallback;
        if (aVTransportSubscriptionCallback != null) {
            aVTransportSubscriptionCallback.run();
        }
        this.mAVTransportSubscriptionCallback.end();
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    public IDevice getSelectedDevice() {
        return this.mSelectedDevice;
    }

    public void setSelectedDevice(IDevice iDevice, ControlPoint controlPoint) {
        if (iDevice != this.mSelectedDevice) {
            Log.i(TAG, "Change selected device.");
            this.mSelectedDevice = (ClingDevice) iDevice;
            AVTransportSubscriptionCallback aVTransportSubscriptionCallback = this.mAVTransportSubscriptionCallback;
            if (aVTransportSubscriptionCallback != null) {
                aVTransportSubscriptionCallback.end();
            }
            this.mAVTransportSubscriptionCallback = new AVTransportSubscriptionCallback(this.mSelectedDevice.getDevice().findService(ClingManager.AV_TRANSPORT_SERVICE), this);
            controlPoint.execute((SubscriptionCallback) this.mAVTransportSubscriptionCallback);
            sendBroadcast(new Intent("com.zane.androidupnpdemo.action.change_device"));
        }
    }

    public int getDeviceVolume() {
        return this.mDeviceVolume;
    }

    public void setDeviceVolume(int i) {
        this.mDeviceVolume = i;
    }
}
