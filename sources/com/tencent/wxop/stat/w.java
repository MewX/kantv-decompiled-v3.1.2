package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;

final class w implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ StatSpecifyReportedInfo c;

    w(String str, Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = str;
        this.b = context;
        this.c = statSpecifyReportedInfo;
    }

    public final void run() {
        try {
            synchronized (StatServiceImpl.o) {
                if (StatServiceImpl.o.size() >= StatConfig.getMaxParallelTimmingEvents()) {
                    StatLogger f = StatServiceImpl.f8q;
                    StringBuilder sb = new StringBuilder("The number of page events exceeds the maximum value ");
                    sb.append(Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
                    f.error((Object) sb.toString());
                    return;
                }
                StatServiceImpl.m = this.a;
                if (StatServiceImpl.o.containsKey(StatServiceImpl.m)) {
                    StatLogger f2 = StatServiceImpl.f8q;
                    StringBuilder sb2 = new StringBuilder("Duplicate PageID : ");
                    sb2.append(StatServiceImpl.m);
                    sb2.append(", onResume() repeated?");
                    f2.e((Object) sb2.toString());
                    return;
                }
                StatServiceImpl.o.put(StatServiceImpl.m, Long.valueOf(System.currentTimeMillis()));
                StatServiceImpl.a(this.b, true, this.c);
            }
        } catch (Throwable th) {
            StatServiceImpl.f8q.e(th);
            StatServiceImpl.a(this.b, th);
        }
    }
}
