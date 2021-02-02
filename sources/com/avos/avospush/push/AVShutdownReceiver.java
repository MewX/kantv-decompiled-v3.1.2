package com.avos.avospush.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AVShutdownReceiver extends BroadcastReceiver {
    private AVShutdownListener listener;

    public AVShutdownReceiver(AVShutdownListener aVShutdownListener) {
        this.listener = aVShutdownListener;
    }

    public void onReceive(Context context, Intent intent) {
        this.listener.onShutdown(context);
    }
}
