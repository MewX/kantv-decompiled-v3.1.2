package com.kantv.flt_tencent_im.utils;

import android.os.Handler;

public class BackgroundTasks {
    private static BackgroundTasks instance;
    private Handler mHandler = new Handler();

    public static BackgroundTasks getInstance() {
        return instance;
    }

    public static void initInstance() {
        instance = new BackgroundTasks();
    }

    public void runOnUiThread(Runnable runnable) {
        this.mHandler.post(runnable);
    }

    public boolean postDelayed(Runnable runnable, long j) {
        return this.mHandler.postDelayed(runnable, j);
    }

    public Handler getHandler() {
        return this.mHandler;
    }
}
