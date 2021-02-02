package com.avos.avospush.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avos.avoscloud.AVUtils;

public class AVConnectivityReceiver extends BroadcastReceiver {
    private final AVConnectivityListener listener;

    public AVConnectivityReceiver(AVConnectivityListener aVConnectivityListener) {
        this.listener = aVConnectivityListener;
    }

    public void onReceive(Context context, Intent intent) {
        int connectivityStatus = AVUtils.getConnectivityStatus(context);
        if (connectivityStatus == 0) {
            this.listener.onNotConnected(context);
        } else if (connectivityStatus == 1) {
            this.listener.onWifi(context);
        } else if (connectivityStatus == 2) {
            this.listener.onMobile(context);
        }
    }
}
