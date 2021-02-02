package com.samsung.multiscreen.util;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class RunUtil {
    private static Executor executor = Executors.newFixedThreadPool(10);
    private static Handler handler;

    public static void runOnUI(Runnable runnable) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(runnable);
    }

    public static void runOnUiDelayed(final Runnable runnable, long j) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.postDelayed(new Runnable() {
            public void run() {
                RunUtil.runOnUI(runnable);
            }
        }, j);
    }

    public static void runInBackground(Runnable runnable) {
        if (isMain()) {
            executor.execute(runnable);
        } else {
            runnable.run();
        }
    }

    private static boolean isMain() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
