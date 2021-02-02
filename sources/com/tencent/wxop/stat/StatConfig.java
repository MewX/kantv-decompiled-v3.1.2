package com.tencent.wxop.stat;

import android.content.Context;
import com.avos.avoscloud.im.v2.Conversation;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.urlimageviewhelper.UrlImageViewHelper;
import com.tencent.a.a.a.a.g;
import com.tencent.wxop.stat.common.StatConstants;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.l;
import com.tencent.wxop.stat.common.q;
import java.net.URI;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class StatConfig {
    private static String A = null;
    private static String B;
    private static String C;
    private static String D = "mta_channel";
    private static int E = 180;
    private static int F = 1024;
    private static long G = 0;
    private static long H = 300000;
    private static volatile String I = StatConstants.MTA_REPORT_FULL_URL;
    private static int J = 0;
    private static volatile int K = 0;
    private static int L = 20;
    private static int M = 0;
    private static boolean N = false;
    private static int O = 4096;
    private static boolean P = false;
    private static String Q = null;
    private static boolean R = false;
    private static g S = null;
    static f a = new f(2);
    static f b = new f(1);
    static String c = "__HIBERNATE__";
    static String d = "__HIBERNATE__TIME";
    static String e = "__MTA_KILL__";
    static String f = "";
    static boolean g = false;
    static int h = 100;
    static long i = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    public static boolean isAutoExceptionCaught = true;
    static boolean j = true;
    static volatile String k = StatConstants.MTA_SERVER;
    static boolean l = true;
    static int m = 0;
    static long n = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    static int o = 512;
    private static StatLogger p = l.b();

    /* renamed from: q reason: collision with root package name */
    private static StatReportStrategy f7q = StatReportStrategy.APP_LAUNCH;
    private static boolean r = false;
    private static boolean s = true;
    private static int t = AsyncHttpRequest.DEFAULT_TIMEOUT;
    private static int u = 100000;
    private static int v = 30;
    private static int w = 10;
    private static int x = 100;
    private static int y = 30;
    private static int z = 1;

    static int a() {
        return v;
    }

    static String a(String str, String str2) {
        try {
            String string = b.b.getString(str);
            return string != null ? string : str2;
        } catch (Throwable unused) {
            StatLogger statLogger = p;
            StringBuilder sb = new StringBuilder("can't find custom key:");
            sb.append(str);
            statLogger.w(sb.toString());
        }
    }

    static synchronized void a(int i2) {
        synchronized (StatConfig.class) {
            K = i2;
        }
    }

    static void a(long j2) {
        q.b(i.a(), c, j2);
        setEnableStatService(false);
        p.warn("MTA is disable for current SDK version");
    }

    static void a(Context context, f fVar) {
        if (fVar.a == b.a) {
            b = fVar;
            a(fVar.b);
            String str = "iplist";
            if (!b.b.isNull(str)) {
                a.a(context).a(b.b.getString(str));
            }
            return;
        }
        if (fVar.a == a.a) {
            a = fVar;
        }
    }

    static void a(Context context, f fVar, JSONObject jSONObject) {
        String str = "m";
        String str2 = Conversation.CREATOR;
        boolean z2 = false;
        try {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str3 = (String) keys.next();
                if (str3.equalsIgnoreCase("v")) {
                    int i2 = jSONObject.getInt(str3);
                    if (fVar.d != i2) {
                        z2 = true;
                    }
                    fVar.d = i2;
                } else if (str3.equalsIgnoreCase(str2)) {
                    String string = jSONObject.getString(str2);
                    if (string.length() > 0) {
                        fVar.b = new JSONObject(string);
                    }
                } else if (str3.equalsIgnoreCase(str)) {
                    fVar.c = jSONObject.getString(str);
                }
            }
            if (z2) {
                au a2 = au.a(i.a());
                if (a2 != null) {
                    a2.a(fVar);
                }
                if (fVar.a == b.a) {
                    a(fVar.b);
                    b(fVar.b);
                }
            }
            a(context, fVar);
        } catch (Throwable th) {
            p.e(th);
        }
    }

    static void a(Context context, JSONObject jSONObject) {
        JSONObject jSONObject2;
        f fVar;
        try {
            Iterator keys = jSONObject.keys();
            while (keys.hasNext()) {
                String str = (String) keys.next();
                if (!str.equalsIgnoreCase(Integer.toString(b.a))) {
                    if (!str.equalsIgnoreCase(Integer.toString(a.a))) {
                        if (!str.equalsIgnoreCase("rs")) {
                            break;
                        }
                        StatReportStrategy statReportStrategy = StatReportStrategy.getStatReportStrategy(jSONObject.getInt(str));
                        if (statReportStrategy != null) {
                            f7q = statReportStrategy;
                            if (isDebugEnable()) {
                                StatLogger statLogger = p;
                                StringBuilder sb = new StringBuilder("Change to ReportStrategy:");
                                sb.append(statReportStrategy.name());
                                statLogger.d(sb.toString());
                            }
                        }
                    } else {
                        jSONObject2 = jSONObject.getJSONObject(str);
                        fVar = a;
                    }
                } else {
                    jSONObject2 = jSONObject.getJSONObject(str);
                    fVar = b;
                }
                a(context, fVar, jSONObject2);
            }
        } catch (JSONException e2) {
            p.e((Throwable) e2);
        }
    }

    static void a(JSONObject jSONObject) {
        try {
            StatReportStrategy statReportStrategy = StatReportStrategy.getStatReportStrategy(jSONObject.getInt("rs"));
            if (statReportStrategy != null) {
                setStatSendStrategy(statReportStrategy);
            }
        } catch (JSONException unused) {
            if (isDebugEnable()) {
                p.i("rs not found.");
            }
        }
    }

    static boolean a(int i2, int i3, int i4) {
        return i2 >= i3 && i2 <= i4;
    }

    static boolean a(JSONObject jSONObject, String str, String str2) {
        if (!jSONObject.isNull(str)) {
            String optString = jSONObject.optString(str);
            if (l.c(str2) && l.c(optString) && str2.equalsIgnoreCase(optString)) {
                return true;
            }
        }
        return false;
    }

    static void b() {
        M++;
    }

    static void b(int i2) {
        if (i2 >= 0) {
            M = i2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x0040 A[Catch:{ Exception -> 0x01b1 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void b(android.content.Context r8, org.json.JSONObject r9) {
        /*
            java.lang.String r0 = "2.0.4"
            java.lang.String r1 = "sm"
            java.lang.String r2 = e     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r9 = r9.optString(r2)     // Catch:{ Exception -> 0x01b1 }
            boolean r2 = com.tencent.wxop.stat.common.l.c(r9)     // Catch:{ Exception -> 0x01b1 }
            if (r2 == 0) goto L_0x01b0
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch:{ Exception -> 0x01b1 }
            r2.<init>(r9)     // Catch:{ Exception -> 0x01b1 }
            int r9 = r2.length()     // Catch:{ Exception -> 0x01b1 }
            if (r9 != 0) goto L_0x001c
            return
        L_0x001c:
            boolean r9 = r2.isNull(r1)     // Catch:{ Exception -> 0x01b1 }
            r3 = 0
            if (r9 != 0) goto L_0x0077
            java.lang.Object r9 = r2.get(r1)     // Catch:{ Exception -> 0x01b1 }
            boolean r1 = r9 instanceof java.lang.Integer     // Catch:{ Exception -> 0x01b1 }
            if (r1 == 0) goto L_0x0032
            java.lang.Integer r9 = (java.lang.Integer) r9     // Catch:{ Exception -> 0x01b1 }
        L_0x002d:
            int r9 = r9.intValue()     // Catch:{ Exception -> 0x01b1 }
            goto L_0x003e
        L_0x0032:
            boolean r1 = r9 instanceof java.lang.String     // Catch:{ Exception -> 0x01b1 }
            if (r1 == 0) goto L_0x003d
            java.lang.String r9 = (java.lang.String) r9     // Catch:{ Exception -> 0x01b1 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ Exception -> 0x01b1 }
            goto L_0x002d
        L_0x003d:
            r9 = 0
        L_0x003e:
            if (r9 <= 0) goto L_0x0077
            boolean r1 = isDebugEnable()     // Catch:{ Exception -> 0x01b1 }
            if (r1 == 0) goto L_0x005e
            com.tencent.wxop.stat.common.StatLogger r1 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r5 = "match sleepTime:"
            r4.<init>(r5)     // Catch:{ Exception -> 0x01b1 }
            r4.append(r9)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r5 = " minutes"
            r4.append(r5)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x01b1 }
            r1.i(r4)     // Catch:{ Exception -> 0x01b1 }
        L_0x005e:
            long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Exception -> 0x01b1 }
            int r9 = r9 * 60
            int r9 = r9 * 1000
            long r6 = (long) r9     // Catch:{ Exception -> 0x01b1 }
            long r4 = r4 + r6
            java.lang.String r9 = d     // Catch:{ Exception -> 0x01b1 }
            com.tencent.wxop.stat.common.q.b(r8, r9, r4)     // Catch:{ Exception -> 0x01b1 }
            setEnableStatService(r3)     // Catch:{ Exception -> 0x01b1 }
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r1 = "MTA is disable for current SDK version"
            r9.warn(r1)     // Catch:{ Exception -> 0x01b1 }
        L_0x0077:
            java.lang.String r9 = "sv"
            boolean r9 = a(r2, r9, r0)     // Catch:{ Exception -> 0x01b1 }
            r1 = 1
            if (r9 == 0) goto L_0x0088
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = "match sdk version:2.0.4"
            r9.i(r3)     // Catch:{ Exception -> 0x01b1 }
            r3 = 1
        L_0x0088:
            java.lang.String r9 = "md"
            java.lang.String r4 = android.os.Build.MODEL     // Catch:{ Exception -> 0x01b1 }
            boolean r9 = a(r2, r9, r4)     // Catch:{ Exception -> 0x01b1 }
            if (r9 == 0) goto L_0x00a8
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = "match MODEL:"
            r3.<init>(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = android.os.Build.MODEL     // Catch:{ Exception -> 0x01b1 }
            r3.append(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x01b1 }
            r9.i(r3)     // Catch:{ Exception -> 0x01b1 }
            r3 = 1
        L_0x00a8:
            java.lang.String r9 = "av"
            java.lang.String r4 = com.tencent.wxop.stat.common.l.h(r8)     // Catch:{ Exception -> 0x01b1 }
            boolean r9 = a(r2, r9, r4)     // Catch:{ Exception -> 0x01b1 }
            if (r9 == 0) goto L_0x00cc
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = "match app version:"
            r3.<init>(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = com.tencent.wxop.stat.common.l.h(r8)     // Catch:{ Exception -> 0x01b1 }
            r3.append(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x01b1 }
            r9.i(r3)     // Catch:{ Exception -> 0x01b1 }
            r3 = 1
        L_0x00cc:
            java.lang.String r9 = "mf"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            r4.<init>()     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r5 = android.os.Build.MANUFACTURER     // Catch:{ Exception -> 0x01b1 }
            r4.append(r5)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x01b1 }
            boolean r9 = a(r2, r9, r4)     // Catch:{ Exception -> 0x01b1 }
            if (r9 == 0) goto L_0x00f8
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = "match MANUFACTURER:"
            r3.<init>(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = android.os.Build.MANUFACTURER     // Catch:{ Exception -> 0x01b1 }
            r3.append(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x01b1 }
            r9.i(r3)     // Catch:{ Exception -> 0x01b1 }
            r3 = 1
        L_0x00f8:
            java.lang.String r9 = "osv"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            r4.<init>()     // Catch:{ Exception -> 0x01b1 }
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x01b1 }
            r4.append(r5)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x01b1 }
            boolean r9 = a(r2, r9, r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = "match android SDK version:"
            if (r9 == 0) goto L_0x0124
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            r3.<init>(r4)     // Catch:{ Exception -> 0x01b1 }
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x01b1 }
            r3.append(r5)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x01b1 }
            r9.i(r3)     // Catch:{ Exception -> 0x01b1 }
            r3 = 1
        L_0x0124:
            java.lang.String r9 = "ov"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            r5.<init>()     // Catch:{ Exception -> 0x01b1 }
            int r6 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x01b1 }
            r5.append(r6)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r5 = r5.toString()     // Catch:{ Exception -> 0x01b1 }
            boolean r9 = a(r2, r9, r5)     // Catch:{ Exception -> 0x01b1 }
            if (r9 == 0) goto L_0x014e
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            r3.<init>(r4)     // Catch:{ Exception -> 0x01b1 }
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch:{ Exception -> 0x01b1 }
            r3.append(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x01b1 }
            r9.i(r3)     // Catch:{ Exception -> 0x01b1 }
            r3 = 1
        L_0x014e:
            java.lang.String r9 = "ui"
            com.tencent.wxop.stat.au r4 = com.tencent.wxop.stat.au.a(r8)     // Catch:{ Exception -> 0x01b1 }
            com.tencent.wxop.stat.common.a r4 = r4.b(r8)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = r4.b()     // Catch:{ Exception -> 0x01b1 }
            boolean r9 = a(r2, r9, r4)     // Catch:{ Exception -> 0x01b1 }
            if (r9 == 0) goto L_0x0182
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = "match imei:"
            r3.<init>(r4)     // Catch:{ Exception -> 0x01b1 }
            com.tencent.wxop.stat.au r4 = com.tencent.wxop.stat.au.a(r8)     // Catch:{ Exception -> 0x01b1 }
            com.tencent.wxop.stat.common.a r4 = r4.b(r8)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r4 = r4.b()     // Catch:{ Exception -> 0x01b1 }
            r3.append(r4)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x01b1 }
            r9.i(r3)     // Catch:{ Exception -> 0x01b1 }
            r3 = 1
        L_0x0182:
            java.lang.String r9 = "mid"
            java.lang.String r4 = getLocalMidOnly(r8)     // Catch:{ Exception -> 0x01b1 }
            boolean r9 = a(r2, r9, r4)     // Catch:{ Exception -> 0x01b1 }
            if (r9 == 0) goto L_0x01a6
            com.tencent.wxop.stat.common.StatLogger r9 = p     // Catch:{ Exception -> 0x01b1 }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r3 = "match mid:"
            r2.<init>(r3)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r8 = getLocalMidOnly(r8)     // Catch:{ Exception -> 0x01b1 }
            r2.append(r8)     // Catch:{ Exception -> 0x01b1 }
            java.lang.String r8 = r2.toString()     // Catch:{ Exception -> 0x01b1 }
            r9.i(r8)     // Catch:{ Exception -> 0x01b1 }
            goto L_0x01a7
        L_0x01a6:
            r1 = r3
        L_0x01a7:
            if (r1 == 0) goto L_0x01b0
            long r8 = com.tencent.wxop.stat.common.l.b(r0)     // Catch:{ Exception -> 0x01b1 }
            a(r8)     // Catch:{ Exception -> 0x01b1 }
        L_0x01b0:
            return
        L_0x01b1:
            r8 = move-exception
            com.tencent.wxop.stat.common.StatLogger r9 = p
            r9.e(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.StatConfig.b(android.content.Context, org.json.JSONObject):void");
    }

    static void b(JSONObject jSONObject) {
        if (!(jSONObject == null || jSONObject.length() == 0)) {
            try {
                b(i.a(), jSONObject);
                String string = jSONObject.getString(c);
                if (isDebugEnable()) {
                    StatLogger statLogger = p;
                    StringBuilder sb = new StringBuilder("hibernateVer:");
                    sb.append(string);
                    sb.append(", current version:2.0.4");
                    statLogger.d(sb.toString());
                }
                long b2 = l.b(string);
                if (l.b(StatConstants.VERSION) <= b2) {
                    a(b2);
                }
            } catch (JSONException unused) {
                p.d("__HIBERNATE__ not found.");
            }
        }
    }

    static int c() {
        return M;
    }

    public static synchronized String getAppKey(Context context) {
        String str;
        synchronized (StatConfig.class) {
            str = B;
        }
        return str;
    }

    public static int getCurSessionStatReportCount() {
        return K;
    }

    public static g getCustomLogger() {
        return S;
    }

    public static String getCustomProperty(String str) {
        try {
            return a.b.getString(str);
        } catch (Throwable th) {
            p.e(th);
            return null;
        }
    }

    public static String getCustomProperty(String str, String str2) {
        try {
            String string = a.b.getString(str);
            return string != null ? string : str2;
        } catch (Throwable th) {
            p.e(th);
        }
    }

    public static String getCustomUserId(Context context) {
        if (context == null) {
            p.error((Object) "Context for getCustomUid is null.");
            return null;
        }
        if (Q == null) {
            Q = q.a(context, "MTA_CUSTOM_UID", "");
        }
        return Q;
    }

    public static long getFlushDBSpaceMS() {
        return n;
    }

    public static synchronized String getInstallChannel(Context context) {
        String str;
        synchronized (StatConfig.class) {
            str = C;
        }
        return str;
    }

    public static String getLocalMidOnly(Context context) {
        return context != null ? g.C(context).p().a() : "0";
    }

    public static int getMaxBatchReportCount() {
        return y;
    }

    public static int getMaxDaySessionNumbers() {
        return L;
    }

    public static int getMaxImportantDataSendRetryCount() {
        return x;
    }

    public static int getMaxParallelTimmingEvents() {
        return F;
    }

    public static int getMaxReportEventLength() {
        return O;
    }

    public static int getMaxSendRetryCount() {
        return w;
    }

    public static int getMaxSessionStatReportCount() {
        return J;
    }

    public static int getMaxStoreEventCount() {
        return u;
    }

    public static String getMid(Context context) {
        return getLocalMidOnly(context);
    }

    public static long getMsPeriodForMethodsCalledLimitClear() {
        return i;
    }

    public static int getNumEventsCachedInMemory() {
        return m;
    }

    public static int getNumEventsCommitPerSec() {
        return z;
    }

    public static int getNumOfMethodsCalledLimit() {
        return h;
    }

    public static String getQQ(Context context) {
        return q.a(context, "mta.acc.qq", f);
    }

    public static int getReportCompressedSize() {
        return o;
    }

    public static int getSendPeriodMinutes() {
        return E;
    }

    public static int getSessionTimoutMillis() {
        return t;
    }

    public static String getStatReportHost() {
        return k;
    }

    public static String getStatReportUrl() {
        return I;
    }

    public static StatReportStrategy getStatSendStrategy() {
        return f7q;
    }

    public static boolean isAutoExceptionCaught() {
        return isAutoExceptionCaught;
    }

    public static boolean isDebugEnable() {
        return r;
    }

    public static boolean isEnableConcurrentProcess() {
        return P;
    }

    public static boolean isEnableSmartReporting() {
        return j;
    }

    public static boolean isEnableStatService() {
        return s;
    }

    public static boolean isReportEventsByOrder() {
        return l;
    }

    public static boolean isXGProMode() {
        return R;
    }

    public static void setAppKey(Context context, String str) {
        StatLogger statLogger;
        String str2;
        if (context == null) {
            statLogger = p;
            str2 = "ctx in StatConfig.setAppKey() is null";
        } else if (str == null || str.length() > 256) {
            statLogger = p;
            str2 = "appkey in StatConfig.setAppKey() is null or exceed 256 bytes";
        } else {
            B = str;
            return;
        }
        statLogger.error((Object) str2);
    }

    public static void setAppKey(String str) {
        StatLogger statLogger;
        String str2;
        if (str == null) {
            statLogger = p;
            str2 = "appkey in StatConfig.setAppKey() is null";
        } else if (str.length() > 256) {
            statLogger = p;
            str2 = "The length of appkey cann't exceed 256 bytes.";
        } else {
            B = str;
            return;
        }
        statLogger.error((Object) str2);
    }

    public static void setAutoExceptionCaught(boolean z2) {
        isAutoExceptionCaught = z2;
    }

    public static void setCustomLogger(g gVar) {
        S = gVar;
    }

    public static void setCustomUserId(Context context, String str) {
        if (context == null) {
            p.error((Object) "Context for setCustomUid is null.");
            return;
        }
        q.b(context, "MTA_CUSTOM_UID", str);
        Q = str;
    }

    public static void setDebugEnable(boolean z2) {
        r = z2;
        l.b().setDebugEnable(z2);
    }

    public static void setEnableConcurrentProcess(boolean z2) {
        P = z2;
    }

    public static void setEnableSmartReporting(boolean z2) {
        j = z2;
    }

    public static void setEnableStatService(boolean z2) {
        s = z2;
        if (!z2) {
            p.warn("!!!!!!MTA StatService has been disabled!!!!!!");
        }
    }

    public static void setFlushDBSpaceMS(long j2) {
        if (j2 > 0) {
            n = j2;
        }
    }

    public static void setInstallChannel(Context context, String str) {
        if (str.length() > 128) {
            p.error((Object) "the length of installChannel can not exceed the range of 128 bytes.");
        } else {
            C = str;
        }
    }

    public static void setInstallChannel(String str) {
        C = str;
    }

    public static void setMaxBatchReportCount(int i2) {
        if (!a(i2, 2, 1000)) {
            p.error((Object) "setMaxBatchReportCount can not exceed the range of [2,1000].");
        } else {
            y = i2;
        }
    }

    public static void setMaxDaySessionNumbers(int i2) {
        if (i2 <= 0) {
            p.e((Object) "maxDaySessionNumbers must be greater than 0.");
        } else {
            L = i2;
        }
    }

    public static void setMaxImportantDataSendRetryCount(int i2) {
        if (i2 > 100) {
            x = i2;
        }
    }

    public static void setMaxParallelTimmingEvents(int i2) {
        if (!a(i2, 1, 4096)) {
            p.error((Object) "setMaxParallelTimmingEvents can not exceed the range of [1, 4096].");
        } else {
            F = i2;
        }
    }

    public static void setMaxReportEventLength(int i2) {
        if (i2 <= 0) {
            p.error((Object) "maxReportEventLength on setMaxReportEventLength() must greater than 0.");
        } else {
            O = i2;
        }
    }

    public static void setMaxSendRetryCount(int i2) {
        if (!a(i2, 1, 1000)) {
            p.error((Object) "setMaxSendRetryCount can not exceed the range of [1,1000].");
        } else {
            w = i2;
        }
    }

    public static void setMaxSessionStatReportCount(int i2) {
        if (i2 < 0) {
            p.error((Object) "maxSessionStatReportCount cannot be less than 0.");
        } else {
            J = i2;
        }
    }

    public static void setMaxStoreEventCount(int i2) {
        if (!a(i2, 0, 500000)) {
            p.error((Object) "setMaxStoreEventCount can not exceed the range of [0, 500000].");
        } else {
            u = i2;
        }
    }

    public static void setNumEventsCachedInMemory(int i2) {
        if (i2 >= 0) {
            m = i2;
        }
    }

    public static void setNumEventsCommitPerSec(int i2) {
        if (i2 > 0) {
            z = i2;
        }
    }

    public static void setNumOfMethodsCalledLimit(int i2, long j2) {
        h = i2;
        if (j2 >= 1000) {
            i = j2;
        }
    }

    public static void setQQ(Context context, String str) {
        q.b(context, "mta.acc.qq", str);
        f = str;
    }

    public static void setReportCompressedSize(int i2) {
        if (i2 > 0) {
            o = i2;
        }
    }

    public static void setReportEventsByOrder(boolean z2) {
        l = z2;
    }

    public static void setSendPeriodMinutes(int i2) {
        if (!a(i2, 1, 10080)) {
            p.error((Object) "setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
        } else {
            E = i2;
        }
    }

    public static void setSessionTimoutMillis(int i2) {
        if (!a(i2, 1000, (int) UrlImageViewHelper.CACHE_DURATION_ONE_DAY)) {
            p.error((Object) "setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
        } else {
            t = i2;
        }
    }

    public static void setStatReportUrl(String str) {
        if (str == null || str.length() == 0) {
            p.error((Object) "statReportUrl cannot be null or empty.");
            return;
        }
        I = str;
        try {
            k = new URI(I).getHost();
        } catch (Exception e2) {
            p.w(e2);
        }
        if (isDebugEnable()) {
            StatLogger statLogger = p;
            StringBuilder sb = new StringBuilder("url:");
            sb.append(I);
            sb.append(", domain:");
            sb.append(k);
            statLogger.i(sb.toString());
        }
    }

    public static void setStatSendStrategy(StatReportStrategy statReportStrategy) {
        f7q = statReportStrategy;
        if (statReportStrategy != StatReportStrategy.PERIOD) {
            StatServiceImpl.c = 0;
        }
        if (isDebugEnable()) {
            StatLogger statLogger = p;
            StringBuilder sb = new StringBuilder("Change to statSendStrategy: ");
            sb.append(statReportStrategy);
            statLogger.d(sb.toString());
        }
    }

    public static void setXGProMode(boolean z2) {
        R = z2;
    }
}
