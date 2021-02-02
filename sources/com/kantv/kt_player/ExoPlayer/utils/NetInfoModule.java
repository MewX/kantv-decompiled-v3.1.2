package com.kantv.kt_player.ExoPlayer.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class NetInfoModule {
    private static final String CONNECTION_TYPE_NONE = "NONE";
    private static final String CONNECTION_TYPE_UNKNOWN = "UNKNOWN";
    private static final String ERROR_MISSING_PERMISSION = "E_MISSING_PERMISSION";
    private static final String MISSING_PERMISSION_MESSAGE = "To use NetInfo on Android, add the following to your AndroidManifest.xml:\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />";
    private String mConnectivity = "";
    private final ConnectivityBroadcastReceiver mConnectivityBroadcastReceiver;
    private final ConnectivityManager mConnectivityManager;
    private Context mContext;
    private NetChangeListener mNetChangeListener;
    private boolean mNoNetworkPermission = false;

    private class ConnectivityBroadcastReceiver extends BroadcastReceiver {
        private boolean isRegistered;

        private ConnectivityBroadcastReceiver() {
            this.isRegistered = false;
        }

        public void setRegistered(boolean z) {
            this.isRegistered = z;
        }

        public boolean isRegistered() {
            return this.isRegistered;
        }

        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                NetInfoModule.this.updateAndSendConnectionType();
            }
        }
    }

    public interface NetChangeListener {
        void changed(String str);
    }

    public void onHostDestroy() {
    }

    public NetInfoModule(Context context, NetChangeListener netChangeListener) {
        this.mContext = context;
        this.mConnectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        this.mConnectivityBroadcastReceiver = new ConnectivityBroadcastReceiver();
        this.mNetChangeListener = netChangeListener;
    }

    public void onHostResume() {
        registerReceiver();
    }

    public void onHostPause() {
        unregisterReceiver();
    }

    public String getCurrentConnectivity() {
        if (this.mNoNetworkPermission) {
            return ERROR_MISSING_PERMISSION;
        }
        return this.mConnectivity;
    }

    private void registerReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.mContext.registerReceiver(this.mConnectivityBroadcastReceiver, intentFilter);
        this.mConnectivityBroadcastReceiver.setRegistered(true);
    }

    private void unregisterReceiver() {
        if (this.mConnectivityBroadcastReceiver.isRegistered()) {
            this.mContext.unregisterReceiver(this.mConnectivityBroadcastReceiver);
            this.mConnectivityBroadcastReceiver.setRegistered(false);
        }
    }

    /* access modifiers changed from: private */
    public void updateAndSendConnectionType() {
        String currentConnectionType = getCurrentConnectionType();
        if (!currentConnectionType.equalsIgnoreCase(this.mConnectivity)) {
            this.mConnectivity = currentConnectionType;
            sendConnectivityChangedEvent();
        }
    }

    public String getCurrentConnectionType() {
        String str = "UNKNOWN";
        try {
            NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    if (ConnectivityManager.isNetworkTypeValid(activeNetworkInfo.getType())) {
                        str = activeNetworkInfo.getTypeName().toUpperCase();
                    }
                    return str;
                }
            }
            return "NONE";
        } catch (SecurityException unused) {
            this.mNoNetworkPermission = true;
            return str;
        }
    }

    private void sendConnectivityChangedEvent() {
        NetChangeListener netChangeListener = this.mNetChangeListener;
        if (netChangeListener != null) {
            netChangeListener.changed(this.mConnectivity);
        }
    }
}
