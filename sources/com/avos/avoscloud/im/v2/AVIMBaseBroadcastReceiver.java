package com.avos.avoscloud.im.v2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVOSCloud;

public abstract class AVIMBaseBroadcastReceiver extends BroadcastReceiver {
    AVCallback callback;

    public abstract void execute(Intent intent, Throwable th);

    public AVIMBaseBroadcastReceiver(AVCallback aVCallback) {
        this.callback = aVCallback;
    }

    public void onReceive(Context context, Intent intent) {
        Throwable th;
        String str = Conversation.callbackExceptionKey;
        if (intent != null) {
            try {
                if (intent.getExtras() != null && intent.getExtras().containsKey(str)) {
                    th = (Throwable) intent.getExtras().getSerializable(str);
                    execute(intent, th);
                    LocalBroadcastManager.getInstance(AVOSCloud.applicationContext).unregisterReceiver(this);
                }
            } catch (Exception e) {
                AVCallback aVCallback = this.callback;
                if (aVCallback != null) {
                    aVCallback.internalDone(null, new AVException(e));
                    return;
                }
                return;
            }
        }
        th = null;
        execute(intent, th);
        LocalBroadcastManager.getInstance(AVOSCloud.applicationContext).unregisterReceiver(this);
    }
}
