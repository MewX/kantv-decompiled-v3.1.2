package com.kantv.ui.androidupnpdemo.service;

import android.content.Intent;
import android.os.IBinder;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.android.AndroidUpnpServiceImpl;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.model.meta.LocalDevice;
import org.fourthline.cling.registry.Registry;

public class ClingUpnpService extends AndroidUpnpServiceImpl {
    private LocalDevice mLocalDevice = null;

    public class LocalBinder extends Binder {
        public LocalBinder() {
            super();
        }

        public /* bridge */ /* synthetic */ UpnpService get() {
            return super.get();
        }

        public /* bridge */ /* synthetic */ UpnpServiceConfiguration getConfiguration() {
            return super.getConfiguration();
        }

        public /* bridge */ /* synthetic */ ControlPoint getControlPoint() {
            return super.getControlPoint();
        }

        public /* bridge */ /* synthetic */ Registry getRegistry() {
            return super.getRegistry();
        }

        public ClingUpnpService getService() {
            return ClingUpnpService.this;
        }
    }

    public void onCreate() {
        super.onCreate();
        this.binder = new LocalBinder();
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    public LocalDevice getLocalDevice() {
        return this.mLocalDevice;
    }

    public UpnpServiceConfiguration getConfiguration() {
        return this.upnpService.getConfiguration();
    }

    public Registry getRegistry() {
        return this.upnpService.getRegistry();
    }

    public ControlPoint getControlPoint() {
        return this.upnpService.getControlPoint();
    }
}
