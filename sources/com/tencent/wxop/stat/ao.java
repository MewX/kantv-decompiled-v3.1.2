package com.tencent.wxop.stat;

import com.tencent.wxop.stat.event.d;
import com.tencent.wxop.stat.event.e;
import java.lang.Thread.UncaughtExceptionHandler;

class ao implements UncaughtExceptionHandler {
    ao() {
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (StatConfig.isEnableStatService() && StatServiceImpl.t != null) {
            if (StatConfig.isAutoExceptionCaught()) {
                au a = au.a(StatServiceImpl.t);
                d dVar = new d(StatServiceImpl.t, StatServiceImpl.a(StatServiceImpl.t, false, (StatSpecifyReportedInfo) null), 2, th, thread, null);
                a.a((e) dVar, (h) null, false, true);
                StatServiceImpl.f8q.debug("MTA has caught the following uncaught exception:");
                StatServiceImpl.f8q.error(th);
            }
            StatServiceImpl.flushDataToDB(StatServiceImpl.t);
            if (StatServiceImpl.r != null) {
                StatServiceImpl.f8q.d("Call the original uncaught exception handler.");
                if (!(StatServiceImpl.r instanceof ao)) {
                    StatServiceImpl.r.uncaughtException(thread, th);
                }
            }
        }
    }
}
