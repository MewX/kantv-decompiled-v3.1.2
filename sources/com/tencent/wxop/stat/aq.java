package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.l;
import com.tencent.wxop.stat.common.q;
import com.tencent.wxop.stat.event.e;

class aq {
    private static volatile long f;
    /* access modifiers changed from: private */
    public e a;
    private StatReportStrategy b = null;
    /* access modifiers changed from: private */
    public boolean c = false;
    /* access modifiers changed from: private */
    public Context d = null;
    private long e = System.currentTimeMillis();

    public aq(e eVar) {
        this.a = eVar;
        this.b = StatConfig.getStatSendStrategy();
        this.c = eVar.f();
        this.d = eVar.e();
    }

    private void a(h hVar) {
        i.b(StatServiceImpl.t).a(this.a, hVar);
    }

    private void b() {
        if (this.a.d() != null && this.a.d().isSendImmediately()) {
            this.b = StatReportStrategy.INSTANT;
        }
        if (StatConfig.j && a.a(StatServiceImpl.t).e()) {
            this.b = StatReportStrategy.INSTANT;
        }
        if (StatConfig.isDebugEnable()) {
            StatLogger f2 = StatServiceImpl.f8q;
            StringBuilder sb = new StringBuilder("strategy=");
            sb.append(this.b.name());
            f2.i(sb.toString());
        }
        switch (ag.a[this.b.ordinal()]) {
            case 1:
                c();
                break;
            case 2:
                au.a(this.d).a(this.a, (h) null, this.c, false);
                String str = ",difftime=";
                String str2 = ",nextPeriodSendTs=";
                String str3 = "PERIOD currTime=";
                if (StatConfig.isDebugEnable()) {
                    StatLogger f3 = StatServiceImpl.f8q;
                    StringBuilder sb2 = new StringBuilder(str3);
                    sb2.append(this.e);
                    sb2.append(str2);
                    sb2.append(StatServiceImpl.c);
                    sb2.append(str);
                    sb2.append(StatServiceImpl.c - this.e);
                    f3.i(sb2.toString());
                }
                if (StatServiceImpl.c == 0) {
                    StatServiceImpl.c = q.a(this.d, "last_period_ts", 0);
                    if (this.e > StatServiceImpl.c) {
                        StatServiceImpl.e(this.d);
                    }
                    long sendPeriodMinutes = this.e + ((long) (StatConfig.getSendPeriodMinutes() * 60 * 1000));
                    if (StatServiceImpl.c > sendPeriodMinutes) {
                        StatServiceImpl.c = sendPeriodMinutes;
                    }
                    d.a(this.d).a();
                }
                if (StatConfig.isDebugEnable()) {
                    StatLogger f4 = StatServiceImpl.f8q;
                    StringBuilder sb3 = new StringBuilder(str3);
                    sb3.append(this.e);
                    sb3.append(str2);
                    sb3.append(StatServiceImpl.c);
                    sb3.append(str);
                    sb3.append(StatServiceImpl.c - this.e);
                    f4.i(sb3.toString());
                }
                if (this.e > StatServiceImpl.c) {
                    StatServiceImpl.e(this.d);
                    return;
                }
                break;
            case 3:
            case 4:
                au.a(this.d).a(this.a, (h) null, this.c, false);
                return;
            case 5:
                au.a(this.d).a(this.a, (h) new ar(this), this.c, true);
                return;
            case 6:
                if (a.a(StatServiceImpl.t).c() == 1) {
                    c();
                    return;
                } else {
                    au.a(this.d).a(this.a, (h) null, this.c, false);
                    return;
                }
            case 7:
                if (l.e(this.d)) {
                    a((h) new as(this));
                    return;
                }
                break;
            default:
                StatLogger f5 = StatServiceImpl.f8q;
                StringBuilder sb4 = new StringBuilder("Invalid stat strategy:");
                sb4.append(StatConfig.getStatSendStrategy());
                f5.error((Object) sb4.toString());
                break;
        }
    }

    private void c() {
        if (au.b().a <= 0 || !StatConfig.l) {
            a((h) new at(this));
            return;
        }
        au.b().a(this.a, (h) null, this.c, true);
        au.b().a(-1);
    }

    private boolean d() {
        if (StatConfig.h > 0) {
            if (this.e > StatServiceImpl.h) {
                StatServiceImpl.g.clear();
                StatServiceImpl.h = this.e + StatConfig.i;
                if (StatConfig.isDebugEnable()) {
                    StatLogger f2 = StatServiceImpl.f8q;
                    StringBuilder sb = new StringBuilder("clear methodsCalledLimitMap, nextLimitCallClearTime=");
                    sb.append(StatServiceImpl.h);
                    f2.i(sb.toString());
                }
            }
            Integer valueOf = Integer.valueOf(this.a.a().a());
            Integer num = (Integer) StatServiceImpl.g.get(valueOf);
            if (num != null) {
                StatServiceImpl.g.put(valueOf, Integer.valueOf(num.intValue() + 1));
                if (num.intValue() > StatConfig.h) {
                    if (StatConfig.isDebugEnable()) {
                        StatLogger f3 = StatServiceImpl.f8q;
                        StringBuilder sb2 = new StringBuilder("event ");
                        sb2.append(this.a.g());
                        sb2.append(" was discard, cause of called limit, current:");
                        sb2.append(num);
                        sb2.append(", limit:");
                        sb2.append(StatConfig.h);
                        sb2.append(", period:");
                        sb2.append(StatConfig.i);
                        sb2.append(" ms");
                        f3.e((Object) sb2.toString());
                    }
                    return true;
                }
            } else {
                StatServiceImpl.g.put(valueOf, Integer.valueOf(1));
            }
        }
        return false;
    }

    public void a() {
        if (!d()) {
            if (StatConfig.m > 0 && this.e >= f) {
                StatServiceImpl.flushDataToDB(this.d);
                f = this.e + StatConfig.n;
                if (StatConfig.isDebugEnable()) {
                    StatLogger f2 = StatServiceImpl.f8q;
                    StringBuilder sb = new StringBuilder("nextFlushTime=");
                    sb.append(f);
                    f2.i(sb.toString());
                }
            }
            if (a.a(this.d).f()) {
                if (StatConfig.isDebugEnable()) {
                    StatLogger f3 = StatServiceImpl.f8q;
                    StringBuilder sb2 = new StringBuilder("sendFailedCount=");
                    sb2.append(StatServiceImpl.a);
                    f3.i(sb2.toString());
                }
                if (!StatServiceImpl.a()) {
                    b();
                    return;
                }
                au.a(this.d).a(this.a, (h) null, this.c, false);
                if (this.e - StatServiceImpl.b > 1800000) {
                    StatServiceImpl.d(this.d);
                }
                return;
            }
            au.a(this.d).a(this.a, (h) null, this.c, false);
        }
    }
}
