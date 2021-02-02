package com.kantv.common.view;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

public class MyHandler extends Handler {
    public WeakReference<Activity> weakReference;

    public MyHandler(Activity activity) {
        this.weakReference = new WeakReference<>(activity);
    }

    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (this.weakReference.get() == null) {
        }
    }
}
