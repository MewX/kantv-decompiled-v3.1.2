package com.tencent.wxop.stat;

import android.content.Context;

final class ak implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ Context b;
    final /* synthetic */ StatSpecifyReportedInfo c;

    ak(String str, Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = str;
        this.b = context;
        this.c = statSpecifyReportedInfo;
    }

    public final void run() {
        String str = this.a;
        if (str == null || str.trim().length() == 0) {
            StatServiceImpl.f8q.w("qq num is null or empty.");
            return;
        }
        String str2 = this.a;
        StatConfig.f = str2;
        StatServiceImpl.b(this.b, new StatAccount(str2), this.c);
    }
}
