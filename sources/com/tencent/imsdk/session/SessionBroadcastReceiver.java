package com.tencent.imsdk.session;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;

@Deprecated
public class SessionBroadcastReceiver extends BroadcastReceiver {
    private static final String TAG = "SessionBroadcastReceiver";
    private Handler mainHandler = new Handler(Looper.getMainLooper());

    public void onReceive(Context context, Intent intent) {
    }
}
