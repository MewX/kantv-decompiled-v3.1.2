package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.event.j;

final class ah implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;
    final /* synthetic */ StatSpecifyReportedInfo c;

    ah(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = context;
        this.b = str;
        this.c = statSpecifyReportedInfo;
    }

    public final void run() {
        Long l;
        try {
            StatServiceImpl.flushDataToDB(this.a);
            synchronized (StatServiceImpl.o) {
                l = (Long) StatServiceImpl.o.remove(this.b);
            }
            if (l != null) {
                Long valueOf = Long.valueOf((System.currentTimeMillis() - l.longValue()) / 1000);
                if (valueOf.longValue() <= 0) {
                    valueOf = Long.valueOf(1);
                }
                Long l2 = valueOf;
                String j = StatServiceImpl.n;
                if (j != null && j.equals(this.b)) {
                    j = "-";
                }
                j jVar = new j(this.a, j, this.b, StatServiceImpl.a(this.a, false, this.c), l2, this.c);
                if (!this.b.equals(StatServiceImpl.m)) {
                    StatServiceImpl.f8q.warn("Invalid invocation since previous onResume on diff page.");
                }
                new aq(jVar).a();
                StatServiceImpl.n = this.b;
                return;
            }
            StatLogger f = StatServiceImpl.f8q;
            StringBuilder sb = new StringBuilder("Starttime for PageID:");
            sb.append(this.b);
            sb.append(" not found, lost onResume()?");
            f.e((Object) sb.toString());
        } catch (Throwable th) {
            StatServiceImpl.f8q.e(th);
            StatServiceImpl.a(this.a, th);
        }
    }
}
