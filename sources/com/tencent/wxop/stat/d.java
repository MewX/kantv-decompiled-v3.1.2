package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.l;
import java.util.Timer;
import java.util.TimerTask;

public class d {
    private static volatile d b;
    private Timer a = null;
    /* access modifiers changed from: private */
    public Context c = null;

    private d(Context context) {
        this.c = context.getApplicationContext();
        this.a = new Timer(false);
    }

    public static d a(Context context) {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d(context);
                }
            }
        }
        return b;
    }

    public void a() {
        if (StatConfig.getStatSendStrategy() == StatReportStrategy.PERIOD) {
            long sendPeriodMinutes = (long) (StatConfig.getSendPeriodMinutes() * 60 * 1000);
            if (StatConfig.isDebugEnable()) {
                StatLogger b2 = l.b();
                StringBuilder sb = new StringBuilder("setupPeriodTimer delay:");
                sb.append(sendPeriodMinutes);
                b2.i(sb.toString());
            }
            a(new e(this), sendPeriodMinutes);
        }
    }

    public void a(TimerTask timerTask, long j) {
        if (this.a != null) {
            if (StatConfig.isDebugEnable()) {
                StatLogger b2 = l.b();
                StringBuilder sb = new StringBuilder("setupPeriodTimer schedule delay:");
                sb.append(j);
                b2.i(sb.toString());
            }
            this.a.schedule(timerTask, j);
            return;
        }
        if (StatConfig.isDebugEnable()) {
            l.b().w("setupPeriodTimer schedule timer == null");
        }
    }
}
