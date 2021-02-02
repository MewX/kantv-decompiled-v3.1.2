package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.l;

final class m implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ StatSpecifyReportedInfo b;

    m(Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = context;
        this.b = statSpecifyReportedInfo;
    }

    public final void run() {
        Context context = this.a;
        if (context == null) {
            StatServiceImpl.f8q.error((Object) "The Context of StatService.onPause() can not be null!");
        } else {
            StatServiceImpl.trackEndPage(context, l.f(context), this.b);
        }
    }
}
