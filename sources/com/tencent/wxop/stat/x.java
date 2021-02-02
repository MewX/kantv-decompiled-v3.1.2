package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.event.b;
import com.tencent.wxop.stat.event.c;

final class x implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ c b;
    final /* synthetic */ Context c;
    final /* synthetic */ StatSpecifyReportedInfo d;

    x(String str, c cVar, Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = str;
        this.b = cVar;
        this.c = context;
        this.d = statSpecifyReportedInfo;
    }

    public final void run() {
        try {
            if (StatServiceImpl.a(this.a)) {
                StatServiceImpl.f8q.error((Object) "The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
                return;
            }
            Long l = (Long) StatServiceImpl.e.remove(this.b);
            if (l != null) {
                b bVar = new b(this.c, StatServiceImpl.a(this.c, false, this.d), this.b.a, this.d);
                bVar.b().b = this.b.b;
                Long valueOf = Long.valueOf((System.currentTimeMillis() - l.longValue()) / 1000);
                bVar.a(Long.valueOf(valueOf.longValue() == 0 ? 1 : valueOf.longValue()).longValue());
                new aq(bVar).a();
                return;
            }
            StatLogger f = StatServiceImpl.f8q;
            StringBuilder sb = new StringBuilder("No start time found for custom event: ");
            sb.append(this.b.toString());
            sb.append(", lost trackCustomBeginEvent()?");
            f.error((Object) sb.toString());
        } catch (Throwable th) {
            StatServiceImpl.f8q.e(th);
            StatServiceImpl.a(this.c, th);
        }
    }
}
