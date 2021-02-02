package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.event.d;
import com.tencent.wxop.stat.event.h;

final class q implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ Throwable b;

    q(Context context, Throwable th) {
        this.a = context;
        this.b = th;
    }

    public final void run() {
        try {
            if (StatConfig.isEnableStatService()) {
                d dVar = new d(this.a, StatServiceImpl.a(this.a, false, (StatSpecifyReportedInfo) null), 99, this.b, h.a);
                new aq(dVar).a();
            }
        } catch (Throwable th) {
            StatLogger f = StatServiceImpl.f8q;
            StringBuilder sb = new StringBuilder("reportSdkSelfException error: ");
            sb.append(th);
            f.e((Object) sb.toString());
        }
    }
}
