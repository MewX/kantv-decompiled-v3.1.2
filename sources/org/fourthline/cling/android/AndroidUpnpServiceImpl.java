package org.fourthline.cling.android;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.UpnpServiceImpl;
import org.fourthline.cling.controlpoint.ControlPoint;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.registry.Registry;
import org.fourthline.cling.registry.RegistryListener;
import org.fourthline.cling.transport.Router;

public class AndroidUpnpServiceImpl extends Service {
    protected Binder binder = new Binder();
    protected UpnpService upnpService;

    protected class Binder extends android.os.Binder implements AndroidUpnpService {
        protected Binder() {
        }

        public UpnpService get() {
            return AndroidUpnpServiceImpl.this.upnpService;
        }

        public UpnpServiceConfiguration getConfiguration() {
            return AndroidUpnpServiceImpl.this.upnpService.getConfiguration();
        }

        public Registry getRegistry() {
            return AndroidUpnpServiceImpl.this.upnpService.getRegistry();
        }

        public ControlPoint getControlPoint() {
            return AndroidUpnpServiceImpl.this.upnpService.getControlPoint();
        }
    }

    public void onCreate() {
        super.onCreate();
        this.upnpService = new UpnpServiceImpl(createConfiguration(), new RegistryListener[0]) {
            /* access modifiers changed from: protected */
            public Router createRouter(ProtocolFactory protocolFactory, Registry registry) {
                return AndroidUpnpServiceImpl.this.createRouter(getConfiguration(), protocolFactory, AndroidUpnpServiceImpl.this);
            }

            public synchronized void shutdown() {
                ((AndroidRouter) getRouter()).unregisterBroadcastReceiver();
                super.shutdown(true);
            }
        };
    }

    /* access modifiers changed from: protected */
    public UpnpServiceConfiguration createConfiguration() {
        return new AndroidUpnpServiceConfiguration();
    }

    /* access modifiers changed from: protected */
    public AndroidRouter createRouter(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory, Context context) {
        return new AndroidRouter(upnpServiceConfiguration, protocolFactory, context);
    }

    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    public void onDestroy() {
        this.upnpService.shutdown();
        super.onDestroy();
    }
}
