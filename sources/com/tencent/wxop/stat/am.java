package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.event.f;

final class am implements Runnable {
    final /* synthetic */ StatGameUser a;
    final /* synthetic */ Context b;
    final /* synthetic */ StatSpecifyReportedInfo c;

    am(StatGameUser statGameUser, Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        this.a = statGameUser;
        this.b = context;
        this.c = statSpecifyReportedInfo;
    }

    public final void run() {
        StatGameUser statGameUser = this.a;
        if (statGameUser == null) {
            StatServiceImpl.f8q.error((Object) "The gameUser of StatService.reportGameUser() can not be null!");
        } else if (statGameUser.getAccount() == null || this.a.getAccount().length() == 0) {
            StatServiceImpl.f8q.error((Object) "The account of gameUser on StatService.reportGameUser() can not be null or empty!");
        } else {
            try {
                new aq(new f(this.b, StatServiceImpl.a(this.b, false, this.c), this.a, this.c)).a();
            } catch (Throwable th) {
                StatServiceImpl.f8q.e(th);
                StatServiceImpl.a(this.b, th);
            }
        }
    }
}
