package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.l;

final class aj implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ StatSpecifyReportedInfo b;

    aj(Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = context;
        this.b = statSpecifyReportedInfo;
    }

    public final void run() {
        Context context = this.a;
        if (context == null) {
            StatServiceImpl.f8q.error((Object) "The Context of StatService.onResume() can not be null!");
        } else {
            StatServiceImpl.trackBeginPage(context, l.f(context), this.b);
        }
    }
}
