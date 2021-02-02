package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.event.c;

final class y implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ c b;
    final /* synthetic */ Context c;

    y(String str, c cVar, Context context) {
        this.a = str;
        this.b = cVar;
        this.c = context;
    }

    public final void run() {
        try {
            if (StatServiceImpl.a(this.a)) {
                StatServiceImpl.f8q.error((Object) "The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
                return;
            }
            if (StatConfig.isDebugEnable()) {
                StatLogger f = StatServiceImpl.f8q;
                StringBuilder sb = new StringBuilder("add begin key:");
                sb.append(this.b);
                f.i(sb.toString());
            }
            if (StatServiceImpl.e.containsKey(this.b)) {
                StatLogger f2 = StatServiceImpl.f8q;
                StringBuilder sb2 = new StringBuilder("Duplicate CustomEvent key: ");
                sb2.append(this.b.toString());
                sb2.append(", trackCustomBeginKVEvent() repeated?");
                f2.warn(sb2.toString());
            } else if (StatServiceImpl.e.size() <= StatConfig.getMaxParallelTimmingEvents()) {
                StatServiceImpl.e.put(this.b, Long.valueOf(System.currentTimeMillis()));
            } else {
                StatLogger f3 = StatServiceImpl.f8q;
                StringBuilder sb3 = new StringBuilder("The number of timedEvent exceeds the maximum value ");
                sb3.append(Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
                f3.error((Object) sb3.toString());
            }
        } catch (Throwable th) {
            StatServiceImpl.f8q.e(th);
            StatServiceImpl.a(this.c, th);
        }
    }
}
