package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.l;

final class n implements Runnable {
    final /* synthetic */ Context a;

    n(Context context) {
        this.a = context;
    }

    public final void run() {
        Context context = this.a;
        if (context == null) {
            StatServiceImpl.f8q.error((Object) "The Context of StatService.onStop() can not be null!");
            return;
        }
        StatServiceImpl.flushDataToDB(context);
        if (!StatServiceImpl.a()) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            if (l.z(this.a)) {
                if (StatConfig.isDebugEnable()) {
                    StatServiceImpl.f8q.i("onStop isBackgroundRunning flushDataToDB");
                }
                StatServiceImpl.commitEvents(this.a, -1);
            }
        }
    }
}
