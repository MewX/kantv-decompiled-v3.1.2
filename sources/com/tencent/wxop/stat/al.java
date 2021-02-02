package com.tencent.wxop.stat;

import android.content.Context;

final class al implements Runnable {
    final /* synthetic */ StatAccount a;
    final /* synthetic */ Context b;
    final /* synthetic */ StatSpecifyReportedInfo c;

    al(StatAccount statAccount, Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = statAccount;
        this.b = context;
        this.c = statSpecifyReportedInfo;
    }

    public final void run() {
        StatAccount statAccount = this.a;
        if (statAccount == null || statAccount.getAccount().trim().length() == 0) {
            StatServiceImpl.f8q.w("account is null or empty.");
            return;
        }
        StatConfig.setQQ(this.b, this.a.getAccount());
        StatServiceImpl.b(this.b, this.a, this.c);
    }
}
