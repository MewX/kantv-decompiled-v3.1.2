package com.tencent.imsdk.session;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.tencent.imsdk.log.QLog;

public class NetConnectInfoCenter extends BroadcastReceiver {
    private static final int NETWORK_1xRTT = 107;
    private static final int NETWORK_2G3G = 2;
    private static final int NETWORK_CDMA = 104;
    private static final int NETWORK_CDMA1X = 98;
    private static final int NETWORK_EDGE = 102;
    private static final int NETWORK_EHRPD = 114;
    private static final int NETWORK_EVDO_0 = 105;
    private static final int NETWORK_EVDO_A = 106;
    private static final int NETWORK_EVDO_B = 112;
    private static final int NETWORK_GPRS = 101;
    private static final int NETWORK_HSDPA = 108;
    private static final int NETWORK_HSPA = 110;
    private static final int NETWORK_HSPAP = 115;
    private static final int NETWORK_HSUPA = 109;
    private static final int NETWORK_IDEN = 111;
    private static final int NETWORK_LTE = 113;
    private static final int NETWORK_UMTS = 103;
    private static final int NETWORK_UNDEFINED = 0;
    private static final int NETWORK_WCDMA = 99;
    private static final int NETWORK_WIFI = 1;
    private static final String TAG = "NetConnectInfoCenter";
    private Context context = null;
    private EventListener eventListener = null;
    private boolean isNetworkConnected = false;

    public interface EventListener {
        void onNetworkChanged(boolean z);

        void onTimeChanged();
    }

    private static class Holder {
        static NetConnectInfoCenter instance = new NetConnectInfoCenter();

        private Holder() {
        }
    }

    public static NetConnectInfoCenter getInstance() {
        return Holder.instance;
    }

    public void setEventListener(EventListener eventListener2) {
        this.eventListener = eventListener2;
    }

    public void init(Context context2) {
        this.context = context2;
    }

    public void onReceive(Context context2, Intent intent) {
        if (intent == null) {
            QLog.e(TAG, "receive broadcast intent == null return");
        } else if (intent.getAction() == null) {
            QLog.e(TAG, "receive broadcast intent.getAction == null return");
        } else {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") || intent.getAction().equals("android.net.wifi.STATE_CHANGE") || intent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                onNetworkChanged(context2, intent);
            } else if (intent.getAction().equals("android.intent.action.TIME_SET") || intent.getAction().equals("android.intent.action.DATE_CHANGED") || intent.getAction().equals("android.intent.action.TIMEZONE_CHANGED")) {
                onTimeChanged(intent);
            }
        }
    }

    private void onTimeChanged(Intent intent) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("time changed, action: ");
        sb.append(intent.getAction());
        QLog.i(str, sb.toString());
        EventListener eventListener2 = this.eventListener;
        if (eventListener2 != null) {
            eventListener2.onTimeChanged();
        }
    }

    private void onNetworkChanged(Context context2, Intent intent) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("network changed, action: ");
        sb.append(intent.getAction());
        QLog.i(str, sb.toString());
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context2.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    if (activeNetworkInfo.getType() == 1) {
                        QLog.i(TAG, "wifi network connected");
                    } else if (activeNetworkInfo.getType() == 0) {
                        QLog.i(TAG, "mobile network connected ");
                    }
                    this.isNetworkConnected = true;
                } else {
                    QLog.e(TAG, "network disconnected");
                    this.isNetworkConnected = false;
                }
                String str2 = TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("current network: ");
                sb2.append(activeNetworkInfo.toString());
                QLog.i(str2, sb2.toString());
            } else {
                QLog.e(TAG, "no network connection found");
                this.isNetworkConnected = false;
            }
            EventListener eventListener2 = this.eventListener;
            if (eventListener2 != null) {
                eventListener2.onNetworkChanged(this.isNetworkConnected);
            }
        }
    }

    public int getNetworkType() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return 0;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
            return 0;
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
        if (networkInfo != null) {
            State state = networkInfo.getState();
            if (state != null && (state == State.CONNECTED || state == State.CONNECTING)) {
                return 1;
            }
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        if (telephonyManager == null) {
            return 0;
        }
        switch (telephonyManager.getNetworkType()) {
            case 1:
                return 101;
            case 2:
                return 102;
            case 3:
                return 103;
            case 4:
                return 104;
            case 5:
                return 105;
            case 6:
                return 106;
            case 7:
                return 107;
            case 8:
                return 108;
            case 9:
                return 109;
            case 10:
                return 110;
            case 11:
                return 111;
            case 12:
                return 112;
            case 13:
                return 113;
            case 14:
                return 114;
            case 15:
                return 115;
            default:
                return 0;
        }
    }

    public String getNetworkSSID() {
        WifiManager wifiManager = (WifiManager) this.context.getSystemService("wifi");
        return wifiManager != null ? wifiManager.getConnectionInfo().getSSID() : "";
    }

    public String getProviderName() {
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getSimOperatorName() : "";
    }
}
