package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.event.d;

final class p implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ StatSpecifyReportedInfo c;

    p(String str, Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = str;
        this.b = context;
        this.c = statSpecifyReportedInfo;
    }

    public final void run() {
        try {
            if (StatServiceImpl.a(this.a)) {
                StatServiceImpl.f8q.error((Object) "Error message in StatService.reportError() is empty.");
                return;
            }
            d dVar = new d(this.b, StatServiceImpl.a(this.b, false, this.c), this.a, 0, StatConfig.getMaxReportEventLength(), null, this.c);
            new aq(dVar).a();
        } catch (Throwable th) {
            StatServiceImpl.f8q.e(th);
            StatServiceImpl.a(this.b, th);
        }
    }
}
