package org.fourthline.cling.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.MulticastLock;
import android.net.wifi.WifiManager.WifiLock;
import io.reactivex.annotations.SchedulerSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.util.security.Constraint;
import org.fourthline.cling.UpnpServiceConfiguration;
import org.fourthline.cling.model.ModelUtil;
import org.fourthline.cling.protocol.ProtocolFactory;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.RouterException;
import org.fourthline.cling.transport.RouterImpl;
import org.fourthline.cling.transport.spi.InitializationException;
import org.seamless.util.Exceptions;

public class AndroidRouter extends RouterImpl {
    /* access modifiers changed from: private */
    public static final Logger log = Logger.getLogger(Router.class.getName());
    protected BroadcastReceiver broadcastReceiver;
    private final Context context;
    protected MulticastLock multicastLock;
    protected NetworkInfo networkInfo;
    protected WifiLock wifiLock;
    private final WifiManager wifiManager;

    class ConnectivityBroadcastReceiver extends BroadcastReceiver {
        ConnectivityBroadcastReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            NetworkInfo networkInfo;
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                displayIntentInfo(intent);
                NetworkInfo connectedNetworkInfo = NetworkUtils.getConnectedNetworkInfo(context);
                if (AndroidRouter.this.networkInfo == null || connectedNetworkInfo != null) {
                    networkInfo = connectedNetworkInfo;
                } else {
                    networkInfo = connectedNetworkInfo;
                    int i = 1;
                    while (i <= 3) {
                        try {
                            Thread.sleep(1000);
                            AndroidRouter.log.warning(String.format("%s => NONE network transition, waiting for new network... retry #%d", new Object[]{AndroidRouter.this.networkInfo.getTypeName(), Integer.valueOf(i)}));
                            networkInfo = NetworkUtils.getConnectedNetworkInfo(context);
                            if (networkInfo != null) {
                                break;
                            }
                            i++;
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
                if (isSameNetworkType(AndroidRouter.this.networkInfo, networkInfo)) {
                    AndroidRouter.log.info("No actual network change... ignoring event!");
                } else {
                    try {
                        AndroidRouter.this.onNetworkTypeChange(AndroidRouter.this.networkInfo, networkInfo);
                    } catch (RouterException e) {
                        AndroidRouter.this.handleRouterExceptionOnNetworkTypeChange(e);
                    }
                }
            }
        }

        /* access modifiers changed from: protected */
        public boolean isSameNetworkType(NetworkInfo networkInfo, NetworkInfo networkInfo2) {
            boolean z = true;
            if (networkInfo == null && networkInfo2 == null) {
                return true;
            }
            if (networkInfo == null || networkInfo2 == null) {
                return false;
            }
            if (networkInfo.getType() != networkInfo2.getType()) {
                z = false;
            }
            return z;
        }

        /* access modifiers changed from: protected */
        public void displayIntentInfo(Intent intent) {
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            String stringExtra = intent.getStringExtra("reason");
            boolean booleanExtra2 = intent.getBooleanExtra("isFailover", false);
            Object obj = (NetworkInfo) intent.getParcelableExtra("networkInfo");
            Object obj2 = (NetworkInfo) intent.getParcelableExtra("otherNetwork");
            AndroidRouter.log.info("Connectivity change detected...");
            Logger access$000 = AndroidRouter.log;
            StringBuilder sb = new StringBuilder();
            sb.append("EXTRA_NO_CONNECTIVITY: ");
            sb.append(booleanExtra);
            access$000.info(sb.toString());
            Logger access$0002 = AndroidRouter.log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("EXTRA_REASON: ");
            sb2.append(stringExtra);
            access$0002.info(sb2.toString());
            Logger access$0003 = AndroidRouter.log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("EXTRA_IS_FAILOVER: ");
            sb3.append(booleanExtra2);
            access$0003.info(sb3.toString());
            Logger access$0004 = AndroidRouter.log;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("EXTRA_NETWORK_INFO: ");
            Object obj3 = SchedulerSupport.NONE;
            if (obj == null) {
                obj = obj3;
            }
            sb4.append(obj);
            access$0004.info(sb4.toString());
            Logger access$0005 = AndroidRouter.log;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("EXTRA_OTHER_NETWORK_INFO: ");
            if (obj2 != null) {
                obj3 = obj2;
            }
            sb5.append(obj3);
            access$0005.info(sb5.toString());
            Logger access$0006 = AndroidRouter.log;
            StringBuilder sb6 = new StringBuilder();
            sb6.append("EXTRA_EXTRA_INFO: ");
            sb6.append(intent.getStringExtra("extraInfo"));
            access$0006.info(sb6.toString());
        }
    }

    /* access modifiers changed from: protected */
    public int getLockTimeoutMillis() {
        return 15000;
    }

    public AndroidRouter(UpnpServiceConfiguration upnpServiceConfiguration, ProtocolFactory protocolFactory, Context context2) throws InitializationException {
        super(upnpServiceConfiguration, protocolFactory);
        this.context = context2;
        this.wifiManager = (WifiManager) context2.getSystemService("wifi");
        this.networkInfo = NetworkUtils.getConnectedNetworkInfo(context2);
        if (!ModelUtil.ANDROID_EMULATOR) {
            this.broadcastReceiver = createConnectivityBroadcastReceiver();
            context2.registerReceiver(this.broadcastReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
    }

    /* access modifiers changed from: protected */
    public BroadcastReceiver createConnectivityBroadcastReceiver() {
        return new ConnectivityBroadcastReceiver();
    }

    public void shutdown() throws RouterException {
        super.shutdown();
        unregisterBroadcastReceiver();
    }

    public boolean enable() throws RouterException {
        lock(this.writeLock);
        try {
            boolean enable = super.enable();
            if (enable && isWifi()) {
                setWiFiMulticastLock(true);
                setWifiLock(true);
            }
            return enable;
        } finally {
            unlock(this.writeLock);
        }
    }

    public boolean disable() throws RouterException {
        lock(this.writeLock);
        try {
            if (isWifi()) {
                setWiFiMulticastLock(false);
                setWifiLock(false);
            }
            return super.disable();
        } finally {
            unlock(this.writeLock);
        }
    }

    public NetworkInfo getNetworkInfo() {
        return this.networkInfo;
    }

    public boolean isMobile() {
        return NetworkUtils.isMobile(this.networkInfo);
    }

    public boolean isWifi() {
        return NetworkUtils.isWifi(this.networkInfo);
    }

    public boolean isEthernet() {
        return NetworkUtils.isEthernet(this.networkInfo);
    }

    public boolean enableWiFi() {
        log.info("Enabling WiFi...");
        try {
            return this.wifiManager.setWifiEnabled(true);
        } catch (Throwable th) {
            log.log(Level.WARNING, "SetWifiEnabled failed", th);
            return false;
        }
    }

    public void unregisterBroadcastReceiver() {
        BroadcastReceiver broadcastReceiver2 = this.broadcastReceiver;
        if (broadcastReceiver2 != null) {
            this.context.unregisterReceiver(broadcastReceiver2);
            this.broadcastReceiver = null;
        }
    }

    /* access modifiers changed from: protected */
    public void setWiFiMulticastLock(boolean z) {
        if (this.multicastLock == null) {
            this.multicastLock = this.wifiManager.createMulticastLock(getClass().getSimpleName());
        }
        if (z) {
            if (this.multicastLock.isHeld()) {
                log.warning("WiFi multicast lock already acquired");
                return;
            }
            log.info("WiFi multicast lock acquired");
            this.multicastLock.acquire();
        } else if (this.multicastLock.isHeld()) {
            log.info("WiFi multicast lock released");
            this.multicastLock.release();
        } else {
            log.warning("WiFi multicast lock already released");
        }
    }

    /* access modifiers changed from: protected */
    public void setWifiLock(boolean z) {
        if (this.wifiLock == null) {
            this.wifiLock = this.wifiManager.createWifiLock(3, getClass().getSimpleName());
        }
        if (z) {
            if (this.wifiLock.isHeld()) {
                log.warning("WiFi lock already acquired");
                return;
            }
            log.info("WiFi lock acquired");
            this.wifiLock.acquire();
        } else if (this.wifiLock.isHeld()) {
            log.info("WiFi lock released");
            this.wifiLock.release();
        } else {
            log.warning("WiFi lock already released");
        }
    }

    /* access modifiers changed from: protected */
    public void onNetworkTypeChange(NetworkInfo networkInfo2, NetworkInfo networkInfo3) throws RouterException {
        String str;
        String str2;
        String str3;
        Logger logger = log;
        Object[] objArr = new Object[2];
        if (networkInfo2 == null) {
            str = "";
        } else {
            str = networkInfo2.getTypeName();
        }
        objArr[0] = str;
        String str4 = Constraint.NONE;
        if (networkInfo3 == null) {
            str2 = str4;
        } else {
            str2 = networkInfo3.getTypeName();
        }
        objArr[1] = str2;
        logger.info(String.format("Network type changed %s => %s", objArr));
        if (disable()) {
            Logger logger2 = log;
            Object[] objArr2 = new Object[1];
            if (networkInfo2 == null) {
                str3 = str4;
            } else {
                str3 = networkInfo2.getTypeName();
            }
            objArr2[0] = str3;
            logger2.info(String.format("Disabled router on network type change (old network: %s)", objArr2));
        }
        this.networkInfo = networkInfo3;
        if (enable()) {
            Logger logger3 = log;
            Object[] objArr3 = new Object[1];
            if (networkInfo3 != null) {
                str4 = networkInfo3.getTypeName();
            }
            objArr3[0] = str4;
            logger3.info(String.format("Enabled router on network type change (new network: %s)", objArr3));
        }
    }

    /* access modifiers changed from: protected */
    public void handleRouterExceptionOnNetworkTypeChange(RouterException routerException) {
        Throwable unwrap = Exceptions.unwrap(routerException);
        if (unwrap instanceof InterruptedException) {
            Logger logger = log;
            Level level = Level.INFO;
            StringBuilder sb = new StringBuilder();
            sb.append("Router was interrupted: ");
            sb.append(routerException);
            logger.log(level, sb.toString(), unwrap);
            return;
        }
        Logger logger2 = log;
        Level level2 = Level.WARNING;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Router error on network change: ");
        sb2.append(routerException);
        logger2.log(level2, sb2.toString(), routerException);
    }
}
