package com.tencent.wxop.stat;

import android.content.Context;
import com.tencent.wxop.stat.common.StatConstants;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.b;
import com.tencent.wxop.stat.common.e;
import com.tencent.wxop.stat.common.l;
import com.tencent.wxop.stat.common.q;
import com.tencent.wxop.stat.event.a;
import com.tencent.wxop.stat.event.c;
import com.tencent.wxop.stat.event.h;
import com.tencent.wxop.stat.event.k;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class StatServiceImpl {
    static volatile int a = 0;
    static volatile long b = 0;
    static volatile long c = 0;
    private static e d;
    /* access modifiers changed from: private */
    public static volatile Map<c, Long> e = new ConcurrentHashMap();
    private static volatile Map<String, Properties> f = new ConcurrentHashMap();
    /* access modifiers changed from: private */
    public static volatile Map<Integer, Integer> g = new ConcurrentHashMap(10);
    /* access modifiers changed from: private */
    public static volatile long h = 0;
    private static volatile long i = 0;
    private static volatile long j = 0;
    private static String k;
    private static volatile int l = 0;
    /* access modifiers changed from: private */
    public static volatile String m;
    /* access modifiers changed from: private */
    public static volatile String n;
    /* access modifiers changed from: private */
    public static Map<String, Long> o = new ConcurrentHashMap();
    private static Map<String, Long> p = new ConcurrentHashMap();
    /* access modifiers changed from: private */

    /* renamed from: q reason: collision with root package name */
    public static StatLogger f8q = l.b();
    /* access modifiers changed from: private */
    public static UncaughtExceptionHandler r = null;
    private static volatile boolean s = true;
    /* access modifiers changed from: private */
    public static Context t = null;

    static {
        String str = "";
        k = str;
        m = str;
        n = str;
    }

    static int a(Context context, boolean z, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean z2 = z && currentTimeMillis - i >= ((long) StatConfig.getSessionTimoutMillis());
        i = currentTimeMillis;
        if (j == 0) {
            j = l.c();
        }
        if (currentTimeMillis >= j) {
            j = l.c();
            if (au.a(context).b(context).d() != 1) {
                au.a(context).b(context).a(1);
            }
            StatConfig.b(0);
            a = 0;
            k = l.a(0);
            z2 = true;
        }
        String str = k;
        if (l.a(statSpecifyReportedInfo)) {
            StringBuilder sb = new StringBuilder();
            sb.append(statSpecifyReportedInfo.getAppKey());
            sb.append(k);
            str = sb.toString();
        }
        if (!p.containsKey(str)) {
            z2 = true;
        }
        if (z2) {
            if (l.a(statSpecifyReportedInfo)) {
                a(context, statSpecifyReportedInfo);
            } else if (StatConfig.c() < StatConfig.getMaxDaySessionNumbers()) {
                l.v(context);
                a(context, (StatSpecifyReportedInfo) null);
            } else {
                f8q.e((Object) "Exceed StatConfig.getMaxDaySessionNumbers().");
            }
            p.put(str, Long.valueOf(1));
        }
        if (s) {
            testSpeed(context);
            s = false;
        }
        return l;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x003b, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static synchronized void a(android.content.Context r5) {
        /*
            java.lang.Class<com.tencent.wxop.stat.StatServiceImpl> r0 = com.tencent.wxop.stat.StatServiceImpl.class
            monitor-enter(r0)
            if (r5 != 0) goto L_0x0007
            monitor-exit(r0)
            return
        L_0x0007:
            com.tencent.wxop.stat.common.e r1 = d     // Catch:{ all -> 0x003c }
            if (r1 != 0) goto L_0x003a
            boolean r1 = b(r5)     // Catch:{ all -> 0x003c }
            if (r1 != 0) goto L_0x0013
            monitor-exit(r0)
            return
        L_0x0013:
            android.content.Context r5 = r5.getApplicationContext()     // Catch:{ all -> 0x003c }
            t = r5     // Catch:{ all -> 0x003c }
            com.tencent.wxop.stat.common.e r1 = new com.tencent.wxop.stat.common.e     // Catch:{ all -> 0x003c }
            r1.<init>()     // Catch:{ all -> 0x003c }
            d = r1     // Catch:{ all -> 0x003c }
            r1 = 0
            java.lang.String r1 = com.tencent.wxop.stat.common.l.a(r1)     // Catch:{ all -> 0x003c }
            k = r1     // Catch:{ all -> 0x003c }
            long r1 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x003c }
            long r3 = com.tencent.wxop.stat.StatConfig.i     // Catch:{ all -> 0x003c }
            long r1 = r1 + r3
            h = r1     // Catch:{ all -> 0x003c }
            com.tencent.wxop.stat.common.e r1 = d     // Catch:{ all -> 0x003c }
            com.tencent.wxop.stat.l r2 = new com.tencent.wxop.stat.l     // Catch:{ all -> 0x003c }
            r2.<init>(r5)     // Catch:{ all -> 0x003c }
            r1.a(r2)     // Catch:{ all -> 0x003c }
        L_0x003a:
            monitor-exit(r0)
            return
        L_0x003c:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.StatServiceImpl.a(android.content.Context):void");
    }

    static void a(Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (c(context) != null) {
            if (StatConfig.isDebugEnable()) {
                f8q.d("start new session.");
            }
            if (statSpecifyReportedInfo == null || l == 0) {
                l = l.a();
            }
            StatConfig.a(0);
            StatConfig.b();
            new aq(new k(context, l, b(), statSpecifyReportedInfo)).a();
        }
    }

    static void a(Context context, Throwable th) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.reportSdkSelfException() can not be null!");
                return;
            }
            if (c(context2) != null) {
                d.a(new q(context2, th));
            }
        }
    }

    static boolean a() {
        if (a < 2) {
            return false;
        }
        b = System.currentTimeMillis();
        return true;
    }

    static boolean a(String str) {
        return str == null || str.length() == 0;
    }

    static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            String str = "v";
            if (StatConfig.b.d != 0) {
                jSONObject2.put(str, StatConfig.b.d);
            }
            jSONObject.put(Integer.toString(StatConfig.b.a), jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            if (StatConfig.a.d != 0) {
                jSONObject3.put(str, StatConfig.a.d);
            }
            jSONObject.put(Integer.toString(StatConfig.a.a), jSONObject3);
        } catch (JSONException e2) {
            f8q.e((Throwable) e2);
        }
        return jSONObject;
    }

    /* access modifiers changed from: private */
    public static void b(Context context, StatAccount statAccount, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        try {
            new aq(new a(context, a(context, false, statSpecifyReportedInfo), statAccount, statSpecifyReportedInfo)).a();
        } catch (Throwable th) {
            f8q.e(th);
            a(context, th);
        }
    }

    static boolean b(Context context) {
        boolean z;
        long a2 = q.a(context, StatConfig.c, 0);
        long b2 = l.b(StatConstants.VERSION);
        boolean z2 = false;
        if (b2 <= a2) {
            StatLogger statLogger = f8q;
            StringBuilder sb = new StringBuilder("MTA is disable for current version:");
            sb.append(b2);
            sb.append(",wakeup version:");
            sb.append(a2);
            statLogger.error((Object) sb.toString());
            z = false;
        } else {
            z = true;
        }
        long a3 = q.a(context, StatConfig.d, 0);
        if (a3 > System.currentTimeMillis()) {
            StatLogger statLogger2 = f8q;
            StringBuilder sb2 = new StringBuilder("MTA is disable for current time:");
            sb2.append(System.currentTimeMillis());
            sb2.append(",wakeup time:");
            sb2.append(a3);
            statLogger2.error((Object) sb2.toString());
        } else {
            z2 = z;
        }
        StatConfig.setEnableStatService(z2);
        return z2;
    }

    static e c(Context context) {
        if (d == null) {
            synchronized (StatServiceImpl.class) {
                if (d == null) {
                    try {
                        a(context);
                    } catch (Throwable th) {
                        f8q.error(th);
                        StatConfig.setEnableStatService(false);
                    }
                }
            }
        }
        return d;
    }

    static void c() {
        a = 0;
        b = 0;
    }

    public static void commitEvents(Context context, int i2) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            if (StatConfig.isDebugEnable()) {
                StatLogger statLogger2 = f8q;
                StringBuilder sb = new StringBuilder("commitEvents, maxNumber=");
                sb.append(i2);
                statLogger2.i(sb.toString());
            }
            Context context2 = getContext(context);
            if (context2 == null) {
                statLogger = f8q;
                str = "The Context of StatService.commitEvents() can not be null!";
            } else if (i2 < -1 || i2 == 0) {
                statLogger = f8q;
                str = "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0.";
            } else {
                if (a.a(t).f() && c(context2) != null) {
                    d.a(new ad(context2, i2));
                }
                return;
            }
            statLogger.error((Object) str);
        }
    }

    static void d() {
        a++;
        b = System.currentTimeMillis();
        flushDataToDB(t);
    }

    static void d(Context context) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.sendNetworkDetector() can not be null!");
                return;
            }
            try {
                i.b(context2).a((com.tencent.wxop.stat.event.e) new h(context2), (h) new t());
            } catch (Throwable th) {
                f8q.e(th);
            }
        }
    }

    static void e(Context context) {
        c = System.currentTimeMillis() + ((long) (StatConfig.getSendPeriodMinutes() * 60000));
        q.b(context, "last_period_ts", c);
        commitEvents(context, -1);
    }

    public static void flushDataToDB(Context context) {
        if (StatConfig.isEnableStatService() && StatConfig.m > 0) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.testSpeed() can not be null!");
            } else {
                au.a(context2).c();
            }
        }
    }

    public static Properties getCommonKeyValueForKVEvent(String str) {
        return (Properties) f.get(str);
    }

    public static Context getContext(Context context) {
        return context != null ? context : t;
    }

    public static void onLowMemory(Context context) {
        if (StatConfig.isEnableStatService() && c(getContext(context)) != null) {
            d.a(new o(context));
        }
    }

    public static void onPause(Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService() && c(context) != null) {
            d.a(new m(context, statSpecifyReportedInfo));
        }
    }

    public static void onResume(Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService() && c(context) != null) {
            d.a(new aj(context, statSpecifyReportedInfo));
        }
    }

    public static void onStop(Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (c(context2) != null) {
                d.a(new n(context2));
            }
        }
    }

    public static void reportAccount(Context context, StatAccount statAccount, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.e((Object) "context is null in reportAccount.");
                return;
            }
            if (c(context2) != null) {
                d.a(new al(statAccount, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void reportAppMonitorStat(Context context, StatAppMonitor statAppMonitor, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                statLogger = f8q;
                str = "The Context of StatService.reportAppMonitorStat() can not be null!";
            } else if (statAppMonitor == null) {
                statLogger = f8q;
                str = "The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!";
            } else if (statAppMonitor.getInterfaceName() == null) {
                statLogger = f8q;
                str = "The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!";
            } else {
                StatAppMonitor clone = statAppMonitor.clone();
                if (c(context2) != null) {
                    d.a(new aa(context2, statSpecifyReportedInfo, clone));
                }
                return;
            }
            statLogger.error((Object) str);
        }
    }

    public static void reportError(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.reportError() can not be null!");
                return;
            }
            if (c(context2) != null) {
                d.a(new p(str, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void reportException(Context context, Throwable th, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.reportException() can not be null!");
                return;
            }
            if (c(context2) != null) {
                d.a(new r(th, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void reportGameUser(Context context, StatGameUser statGameUser, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.reportGameUser() can not be null!");
                return;
            }
            if (c(context2) != null) {
                d.a(new am(statGameUser, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void reportQQ(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "context is null in reportQQ()");
                return;
            }
            if (c(context2) != null) {
                d.a(new ak(str, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void setCommonKeyValueForKVEvent(String str, Properties properties) {
        if (!l.c(str)) {
            f8q.e((Object) "event_id or commonProp for setCommonKeyValueForKVEvent is invalid.");
        } else if (properties == null || properties.size() <= 0) {
            f.remove(str);
        } else {
            f.put(str, (Properties) properties.clone());
        }
    }

    public static void setContext(Context context) {
        if (context != null) {
            t = context.getApplicationContext();
        }
    }

    public static void setEnvAttributes(Context context, Map<String, String> map) {
        if (map == null || map.size() > 512) {
            f8q.error((Object) "The map in setEnvAttributes can't be null or its size can't exceed 512.");
            return;
        }
        try {
            b.a(context, map);
        } catch (JSONException e2) {
            f8q.e((Throwable) e2);
        }
    }

    public static void startNewSession(Context context, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.startNewSession() can not be null!");
                return;
            }
            if (c(context2) != null) {
                d.a(new ai(context2, statSpecifyReportedInfo));
            }
        }
    }

    public static boolean startStatService(Context context, String str, String str2, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        try {
            if (!StatConfig.isEnableStatService()) {
                f8q.error((Object) "MTA StatService is disable.");
                return false;
            }
            String str3 = StatConstants.VERSION;
            if (StatConfig.isDebugEnable()) {
                StatLogger statLogger = f8q;
                StringBuilder sb = new StringBuilder("MTA SDK version, current: ");
                sb.append(str3);
                sb.append(" ,required: ");
                sb.append(str2);
                statLogger.d(sb.toString());
            }
            if (context != null) {
                if (str2 != null) {
                    if (l.b(str3) < l.b(str2)) {
                        StringBuilder sb2 = new StringBuilder("MTA SDK version conflicted, current: ");
                        sb2.append(str3);
                        sb2.append(",required: ");
                        sb2.append(str2);
                        String sb3 = sb2.toString();
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(sb3);
                        sb4.append(". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/");
                        f8q.error((Object) sb4.toString());
                        StatConfig.setEnableStatService(false);
                        return false;
                    }
                    String installChannel = StatConfig.getInstallChannel(context);
                    if (installChannel == null || installChannel.length() == 0) {
                        StatConfig.setInstallChannel("-");
                    }
                    if (str != null) {
                        StatConfig.setAppKey(context, str);
                    }
                    if (c(context) != null) {
                        d.a(new an(context, statSpecifyReportedInfo));
                    }
                    return true;
                }
            }
            f8q.error((Object) "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
            StatConfig.setEnableStatService(false);
            return false;
        } catch (Throwable th) {
            f8q.e(th);
            return false;
        }
    }

    public static void stopSession() {
        i = 0;
    }

    public static void testSpeed(Context context) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.testSpeed() can not be null!");
                return;
            }
            if (c(context2) != null) {
                d.a(new ae(context2));
            }
        }
    }

    public static void testSpeed(Context context, Map<String, Integer> map, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        StatLogger statLogger;
        String str;
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                statLogger = f8q;
                str = "The Context of StatService.testSpeed() can not be null!";
            } else if (map == null || map.size() == 0) {
                statLogger = f8q;
                str = "The domainMap of StatService.testSpeed() can not be null or empty!";
            } else {
                HashMap hashMap = new HashMap(map);
                if (c(context2) != null) {
                    d.a(new af(context2, hashMap, statSpecifyReportedInfo));
                }
                return;
            }
            statLogger.error((Object) str);
        }
    }

    public static void trackBeginPage(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null || str == null || str.length() == 0) {
                f8q.error((Object) "The Context or pageName of StatService.trackBeginPage() can not be null or empty!");
                return;
            }
            String str2 = new String(str);
            if (c(context2) != null) {
                d.a(new w(str2, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void trackCustomBeginEvent(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo, String... strArr) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.trackCustomBeginEvent() can not be null!");
                return;
            }
            c cVar = new c(str, strArr, null);
            if (c(context2) != null) {
                d.a(new v(str, cVar, context2));
            }
        }
    }

    public static void trackCustomBeginKVEvent(Context context, String str, Properties properties, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.trackCustomBeginEvent() can not be null!");
                return;
            }
            c cVar = new c(str, null, properties);
            if (c(context2) != null) {
                d.a(new y(str, cVar, context2));
            }
        }
    }

    public static void trackCustomEndEvent(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo, String... strArr) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.trackCustomEndEvent() can not be null!");
                return;
            }
            c cVar = new c(str, strArr, null);
            if (c(context2) != null) {
                d.a(new x(str, cVar, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void trackCustomEndKVEvent(Context context, String str, Properties properties, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                f8q.error((Object) "The Context of StatService.trackCustomEndEvent() can not be null!");
                return;
            }
            c cVar = new c(str, null, properties);
            if (c(context2) != null) {
                d.a(new z(str, cVar, context2, statSpecifyReportedInfo));
            }
        }
    }

    public static void trackCustomEvent(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo, String... strArr) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                statLogger = f8q;
                str2 = "The Context of StatService.trackCustomEvent() can not be null!";
            } else if (a(str)) {
                statLogger = f8q;
                str2 = "The event_id of StatService.trackCustomEvent() can not be null or empty.";
            } else {
                c cVar = new c(str, strArr, null);
                if (c(context2) != null) {
                    d.a(new s(context2, statSpecifyReportedInfo, cVar));
                }
                return;
            }
            statLogger.error((Object) str2);
        }
    }

    public static void trackCustomKVEvent(Context context, String str, Properties properties, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                statLogger = f8q;
                str2 = "The Context of StatService.trackCustomEvent() can not be null!";
            } else if (a(str)) {
                statLogger = f8q;
                str2 = "The event_id of StatService.trackCustomEvent() can not be null or empty.";
            } else {
                c cVar = new c(str, null, properties);
                if (c(context2) != null) {
                    d.a(new u(context2, statSpecifyReportedInfo, cVar));
                }
                return;
            }
            statLogger.error((Object) str2);
        }
    }

    public static void trackCustomKVTimeIntervalEvent(Context context, String str, Properties properties, int i2, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null) {
                statLogger = f8q;
                str2 = "The Context of StatService.trackCustomEndEvent() can not be null!";
            } else if (a(str)) {
                statLogger = f8q;
                str2 = "The event_id of StatService.trackCustomEndEvent() can not be null or empty.";
            } else {
                c cVar = new c(str, null, properties);
                if (c(context2) != null) {
                    d.a(new ac(context2, statSpecifyReportedInfo, cVar, i2));
                }
                return;
            }
            statLogger.error((Object) str2);
        }
    }

    public static void trackCustomTimeIntervalEvent(Context context, int i2, String str, String... strArr) {
        StatLogger statLogger;
        String str2;
        if (StatConfig.isEnableStatService()) {
            if (i2 <= 0) {
                statLogger = f8q;
                str2 = "The intervalSecond of StatService.trackCustomTimeIntervalEvent() can must bigger than 0!";
            } else {
                Context context2 = getContext(context);
                if (context2 == null) {
                    statLogger = f8q;
                    str2 = "The Context of StatService.trackCustomTimeIntervalEvent() can not be null!";
                } else {
                    if (c(context2) != null) {
                        d.a(new ab());
                    }
                    return;
                }
            }
            statLogger.error((Object) str2);
        }
    }

    public static void trackEndPage(Context context, String str, StatSpecifyReportedInfo statSpecifyReportedInfo) {
        if (StatConfig.isEnableStatService()) {
            Context context2 = getContext(context);
            if (context2 == null || str == null || str.length() == 0) {
                f8q.error((Object) "The Context or pageName of StatService.trackEndPage() can not be null or empty!");
                return;
            }
            String str2 = new String(str);
            if (c(context2) != null) {
                d.a(new ah(context2, str2, statSpecifyReportedInfo));
            }
        }
    }
}
