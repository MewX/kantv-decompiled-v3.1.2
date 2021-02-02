package com.avos.avoscloud;

import android.os.Handler;
import com.avos.avoscloud.LogUtil.log;

public abstract class AVIMEventHandler {
    /* access modifiers changed from: protected */
    public abstract void processEvent0(int i, Object obj, Object obj2, Object obj3);

    public void processEvent(int i, Object obj, Object obj2, Object obj3) {
        if (!AVUtils.isMainThread()) {
            Handler handler = AVOSCloud.handler;
            final int i2 = i;
            final Object obj4 = obj;
            final Object obj5 = obj2;
            final Object obj6 = obj3;
            AnonymousClass1 r1 = new Runnable() {
                public void run() {
                    AVIMEventHandler.this.processEvent0(i2, obj4, obj5, obj6);
                }
            };
            if (!handler.post(r1)) {
                log.e("Post runnable to handler failed.");
                return;
            }
            return;
        }
        processEvent0(i, obj, obj2, obj3);
    }
}
