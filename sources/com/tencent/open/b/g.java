package com.tencent.open.b;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.f;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.e;
import com.tencent.open.utils.i;
import com.tencent.open.utils.k;
import java.io.Serializable;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: ProGuard */
public class g {
    protected static g a;
    protected Random b = new Random();
    protected List<Serializable> c = Collections.synchronizedList(new ArrayList());
    protected List<Serializable> d = Collections.synchronizedList(new ArrayList());
    protected HandlerThread e = null;
    protected Handler f;
    protected Executor g = i.b();
    protected Executor h = i.b();

    public static synchronized g a() {
        g gVar;
        synchronized (g.class) {
            if (a == null) {
                a = new g();
            }
            gVar = a;
        }
        return gVar;
    }

    private g() {
        if (this.e == null) {
            this.e = new HandlerThread("opensdk.report.handlerthread", 10);
            this.e.start();
        }
        if (this.e.isAlive() && this.e.getLooper() != null) {
            this.f = new Handler(this.e.getLooper()) {
                public void handleMessage(Message message) {
                    int i = message.what;
                    if (i == 1000) {
                        g.this.b();
                    } else if (i == 1001) {
                        g.this.e();
                    }
                    super.handleMessage(message);
                }
            };
        }
    }

    public void a(final Bundle bundle, String str, final boolean z) {
        if (bundle != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("-->reportVia, bundle: ");
            sb.append(bundle.toString());
            f.a("openSDK_LOG.ReportManager", sb.toString());
            if (a("report_via", str) || z) {
                this.g.execute(new Runnable() {
                    public void run() {
                        try {
                            Bundle bundle = new Bundle();
                            bundle.putString("uin", Constants.DEFAULT_UIN);
                            bundle.putString("imei", c.b(e.a()));
                            bundle.putString("imsi", c.c(e.a()));
                            bundle.putString("android_id", c.d(e.a()));
                            bundle.putString("mac", c.a());
                            bundle.putString(Constants.PARAM_PLATFORM, "1");
                            bundle.putString("os_ver", VERSION.RELEASE);
                            bundle.putString("position", k.c(e.a()));
                            bundle.putString("network", a.a(e.a()));
                            bundle.putString(IjkMediaMeta.IJKM_KEY_LANGUAGE, c.b());
                            bundle.putString("resolution", c.a(e.a()));
                            bundle.putString("apn", a.b(e.a()));
                            bundle.putString("model_name", Build.MODEL);
                            bundle.putString("timezone", TimeZone.getDefault().getID());
                            bundle.putString("sdk_ver", Constants.SDK_VERSION);
                            bundle.putString("qz_ver", k.d(e.a(), Constants.PACKAGE_QZONE));
                            bundle.putString("qq_ver", k.c(e.a(), "com.tencent.mobileqq"));
                            bundle.putString("qua", k.e(e.a(), e.b()));
                            bundle.putString("packagename", e.b());
                            bundle.putString("app_ver", k.d(e.a(), e.b()));
                            if (bundle != null) {
                                bundle.putAll(bundle);
                            }
                            g.this.d.add(new b(bundle));
                            int size = g.this.d.size();
                            int a2 = com.tencent.open.utils.f.a(e.a(), (String) null).a("Agent_ReportTimeInterval");
                            if (a2 == 0) {
                                a2 = 10000;
                            }
                            if (!g.this.a("report_via", size)) {
                                if (!z) {
                                    if (!g.this.f.hasMessages(1001)) {
                                        Message obtain = Message.obtain();
                                        obtain.what = 1001;
                                        g.this.f.sendMessageDelayed(obtain, (long) a2);
                                        return;
                                    }
                                    return;
                                }
                            }
                            g.this.e();
                            g.this.f.removeMessages(1001);
                        } catch (Exception e) {
                            f.b("openSDK_LOG.ReportManager", "--> reporVia, exception in sub thread.", e);
                        }
                    }
                });
            }
        }
    }

    public void a(String str, long j, long j2, long j3, int i) {
        a(str, j, j2, j3, i, "", false);
    }

    public void a(String str, long j, long j2, long j3, int i, String str2, boolean z) {
        int i2 = i;
        StringBuilder sb = new StringBuilder();
        sb.append("-->reportCgi, command: ");
        sb.append(str);
        sb.append(" | startTime: ");
        sb.append(j);
        sb.append(" | reqSize:");
        sb.append(j2);
        sb.append(" | rspSize: ");
        sb.append(j3);
        sb.append(" | responseCode: ");
        sb.append(i2);
        sb.append(" | detail: ");
        sb.append(str2);
        f.a("openSDK_LOG.ReportManager", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("");
        sb2.append(i2);
        if (a("report_cgi", sb2.toString()) || z) {
            Executor executor = this.h;
            final long j4 = j;
            final String str3 = str;
            final String str4 = str2;
            final int i3 = i;
            final long j5 = j2;
            final long j6 = j3;
            final boolean z2 = z;
            AnonymousClass3 r0 = new Runnable() {
                public void run() {
                    String str = "";
                    try {
                        long elapsedRealtime = SystemClock.elapsedRealtime() - j4;
                        Bundle bundle = new Bundle();
                        String a2 = a.a(e.a());
                        bundle.putString("apn", a2);
                        bundle.putString("appid", "1000067");
                        bundle.putString("commandid", str3);
                        bundle.putString(ProductAction.ACTION_DETAIL, str4);
                        StringBuilder sb = new StringBuilder();
                        sb.append("network=");
                        sb.append(a2);
                        sb.append('&');
                        sb.append("sdcard=");
                        sb.append(Environment.getExternalStorageState().equals("mounted") ? 1 : 0);
                        sb.append('&');
                        sb.append("wifi=");
                        sb.append(a.e(e.a()));
                        bundle.putString("deviceInfo", sb.toString());
                        int a3 = 100 / g.this.a(i3);
                        if (a3 <= 0) {
                            a3 = 1;
                        } else if (a3 > 100) {
                            a3 = 100;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(a3);
                        sb2.append(str);
                        bundle.putString("frequency", sb2.toString());
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(j5);
                        sb3.append(str);
                        bundle.putString("reqSize", sb3.toString());
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(i3);
                        sb4.append(str);
                        bundle.putString("resultCode", sb4.toString());
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(j6);
                        sb5.append(str);
                        bundle.putString("rspSize", sb5.toString());
                        StringBuilder sb6 = new StringBuilder();
                        sb6.append(elapsedRealtime);
                        sb6.append(str);
                        bundle.putString("timeCost", sb6.toString());
                        bundle.putString("uin", Constants.DEFAULT_UIN);
                        g.this.c.add(new b(bundle));
                        int size = g.this.c.size();
                        int a4 = com.tencent.open.utils.f.a(e.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (a4 == 0) {
                            a4 = 10000;
                        }
                        if (!g.this.a("report_cgi", size)) {
                            if (!z2) {
                                if (!g.this.f.hasMessages(1000)) {
                                    Message obtain = Message.obtain();
                                    obtain.what = 1000;
                                    g.this.f.sendMessageDelayed(obtain, (long) a4);
                                    return;
                                }
                                return;
                            }
                        }
                        g.this.b();
                        g.this.f.removeMessages(1000);
                    } catch (Exception e2) {
                        f.b("openSDK_LOG.ReportManager", "--> reportCGI, exception in sub thread.", e2);
                    }
                }
            };
            executor.execute(r0);
        }
    }

    /* access modifiers changed from: protected */
    public void b() {
        this.h.execute(new Runnable() {
            /*  JADX ERROR: IF instruction can be used only in fallback mode
                jadx.core.utils.exceptions.CodegenException: IF instruction can be used only in fallback mode
                	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:568)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:474)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:193)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:138)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:62)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:98)
                	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:299)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:68)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:210)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:203)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:316)
                	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
                	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:661)
                	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:595)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:353)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:223)
                	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:105)
                	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:773)
                	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:713)
                	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:357)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:239)
                	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:213)
                	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:109)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
                	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:92)
                	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:58)
                	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:210)
                	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:203)
                	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:316)
                	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:262)
                	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:225)
                	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:110)
                	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:76)
                	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
                	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:32)
                	at jadx.core.codegen.CodeGen.generate(CodeGen.java:20)
                	at jadx.core.ProcessClass.process(ProcessClass.java:36)
                	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
                	at jadx.api.JavaClass.decompile(JavaClass.java:62)
                	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
                */
            public void run() {
                /*
                    r14 = this;
                    java.lang.String r0 = "report_cgi"
                    java.lang.String r1 = "https://wspeed.qq.com/w.cgi"
                    java.lang.String r2 = "-->doReportCgi, doupload exception"
                    java.lang.String r3 = "openSDK_LOG.ReportManager"
                    com.tencent.open.b.g r4 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00b8 }
                    android.os.Bundle r4 = r4.c()     // Catch:{ Exception -> 0x00b8 }
                    if (r4 != 0) goto L_0x0011     // Catch:{ Exception -> 0x00b8 }
                    return     // Catch:{ Exception -> 0x00b8 }
                L_0x0011:
                    android.content.Context r5 = com.tencent.open.utils.e.a()     // Catch:{ Exception -> 0x00b8 }
                    r6 = 0     // Catch:{ Exception -> 0x00b8 }
                    com.tencent.open.utils.f r5 = com.tencent.open.utils.f.a(r5, r6)     // Catch:{ Exception -> 0x00b8 }
                    java.lang.String r7 = "Common_HttpRetryCount"     // Catch:{ Exception -> 0x00b8 }
                    int r5 = r5.a(r7)     // Catch:{ Exception -> 0x00b8 }
                    if (r5 != 0) goto L_0x0023     // Catch:{ Exception -> 0x00b8 }
                    r5 = 3     // Catch:{ Exception -> 0x00b8 }
                L_0x0023:
                    java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00b8 }
                    r7.<init>()     // Catch:{ Exception -> 0x00b8 }
                    java.lang.String r8 = "-->doReportCgi, retryCount: "     // Catch:{ Exception -> 0x00b8 }
                    r7.append(r8)     // Catch:{ Exception -> 0x00b8 }
                    r7.append(r5)     // Catch:{ Exception -> 0x00b8 }
                    java.lang.String r7 = r7.toString()     // Catch:{ Exception -> 0x00b8 }
                    com.tencent.open.a.f.b(r3, r7)     // Catch:{ Exception -> 0x00b8 }
                    r7 = 0
                    r8 = 0
                L_0x0039:
                    r9 = 1
                    int r8 = r8 + r9
                    android.content.Context r10 = com.tencent.open.utils.e.a()     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    org.apache.http.client.HttpClient r10 = com.tencent.open.utils.HttpUtils.getHttpClient(r10, r6, r1)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    org.apache.http.client.methods.HttpPost r11 = new org.apache.http.client.methods.HttpPost     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11.<init>(r1)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.String r12 = "Accept-Encoding"     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.String r13 = "gzip"     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11.addHeader(r12, r13)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.String r12 = "Content-Type"     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.String r13 = "application/x-www-form-urlencoded"     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11.setHeader(r12, r13)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.String r12 = com.tencent.open.utils.HttpUtils.encodeUrl(r4)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    byte[] r12 = com.tencent.open.utils.k.i(r12)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    org.apache.http.entity.ByteArrayEntity r13 = new org.apache.http.entity.ByteArrayEntity     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r13.<init>(r12)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11.setEntity(r13)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    org.apache.http.HttpResponse r10 = r10.execute(r11)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    org.apache.http.StatusLine r10 = r10.getStatusLine()     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    int r10 = r10.getStatusCode()     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11.<init>()     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.String r12 = "-->doReportCgi, statusCode: "     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11.append(r12)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11.append(r10)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    java.lang.String r11 = r11.toString()     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    com.tencent.open.a.f.b(r3, r11)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r11 = 200(0xc8, float:2.8E-43)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    if (r10 != r11) goto L_0x00a3     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    com.tencent.open.b.f r10 = com.tencent.open.b.f.a()     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r10.b(r0)     // Catch:{ ConnectTimeoutException -> 0x009d, SocketTimeoutException -> 0x0098, Exception -> 0x0093 }
                    r7 = 1
                    goto L_0x00a3
                L_0x0093:
                    r1 = move-exception
                    com.tencent.open.a.f.b(r3, r2, r1)     // Catch:{ Exception -> 0x00b8 }
                    goto L_0x00a3     // Catch:{ Exception -> 0x00b8 }
                L_0x0098:
                    r9 = move-exception     // Catch:{ Exception -> 0x00b8 }
                    com.tencent.open.a.f.b(r3, r2, r9)     // Catch:{ Exception -> 0x00b8 }
                    goto L_0x00a1     // Catch:{ Exception -> 0x00b8 }
                L_0x009d:
                    r9 = move-exception     // Catch:{ Exception -> 0x00b8 }
                    com.tencent.open.a.f.b(r3, r2, r9)     // Catch:{ Exception -> 0x00b8 }
                L_0x00a1:
                    if (r8 < r5) goto L_0x0039     // Catch:{ Exception -> 0x00b8 }
                L_0x00a3:
                    if (r7 != 0) goto L_0x00b0     // Catch:{ Exception -> 0x00b8 }
                    com.tencent.open.b.f r1 = com.tencent.open.b.f.a()     // Catch:{ Exception -> 0x00b8 }
                    com.tencent.open.b.g r2 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00b8 }
                    java.util.List<java.io.Serializable> r2 = r2.c     // Catch:{ Exception -> 0x00b8 }
                    r1.a(r0, r2)     // Catch:{ Exception -> 0x00b8 }
                L_0x00b0:
                    com.tencent.open.b.g r0 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00b8 }
                    java.util.List<java.io.Serializable> r0 = r0.c     // Catch:{ Exception -> 0x00b8 }
                    r0.clear()     // Catch:{ Exception -> 0x00b8 }
                    goto L_0x00be
                L_0x00b8:
                    r0 = move-exception
                    java.lang.String r1 = "-->doReportCgi, doupload exception out."
                    com.tencent.open.a.f.b(r3, r1, r0)
                L_0x00be:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.AnonymousClass4.run():void");
            }
        });
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0055, code lost:
        if (r5.b.nextInt(100) < r6) goto L_0x0057;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x003f, code lost:
        if (r5.b.nextInt(100) < r6) goto L_0x0057;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "-->availableFrequency, report: "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r1 = " | ext: "
            r0.append(r1)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "openSDK_LOG.ReportManager"
            com.tencent.open.a.f.b(r1, r0)
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r2 = 0
            if (r0 == 0) goto L_0x0026
            return r2
        L_0x0026:
            java.lang.String r0 = "report_cgi"
            boolean r0 = r6.equals(r0)
            r3 = 1
            r4 = 100
            if (r0 == 0) goto L_0x0043
            int r6 = java.lang.Integer.parseInt(r7)     // Catch:{ Exception -> 0x0042 }
            int r6 = r5.a(r6)
            java.util.Random r7 = r5.b
            int r7 = r7.nextInt(r4)
            if (r7 >= r6) goto L_0x005b
            goto L_0x0057
        L_0x0042:
            return r2
        L_0x0043:
            java.lang.String r0 = "report_via"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L_0x0059
            int r6 = com.tencent.open.b.e.a(r7)
            java.util.Random r7 = r5.b
            int r7 = r7.nextInt(r4)
            if (r7 >= r6) goto L_0x005b
        L_0x0057:
            r2 = 1
            goto L_0x005b
        L_0x0059:
            r6 = 100
        L_0x005b:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "-->availableFrequency, result: "
            r7.append(r0)
            r7.append(r2)
            java.lang.String r0 = " | frequency: "
            r7.append(r0)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            com.tencent.open.a.f.b(r1, r6)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.a(java.lang.String, java.lang.String):boolean");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0019, code lost:
        if (r0 == 0) goto L_0x001b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0033, code lost:
        if (r0 == 0) goto L_0x001b;
     */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0061 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.lang.String r5, int r6) {
        /*
            r4 = this;
            java.lang.String r0 = "report_cgi"
            boolean r0 = r5.equals(r0)
            r1 = 5
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L_0x001d
            android.content.Context r0 = com.tencent.open.utils.e.a()
            com.tencent.open.utils.f r0 = com.tencent.open.utils.f.a(r0, r2)
            java.lang.String r2 = "Common_CGIReportMaxcount"
            int r0 = r0.a(r2)
            if (r0 != 0) goto L_0x0037
        L_0x001b:
            r0 = 5
            goto L_0x0037
        L_0x001d:
            java.lang.String r0 = "report_via"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0036
            android.content.Context r0 = com.tencent.open.utils.e.a()
            com.tencent.open.utils.f r0 = com.tencent.open.utils.f.a(r0, r2)
            java.lang.String r2 = "Agent_ReportBatchCount"
            int r0 = r0.a(r2)
            if (r0 != 0) goto L_0x0037
            goto L_0x001b
        L_0x0036:
            r0 = 0
        L_0x0037:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "-->availableCount, report: "
            r1.append(r2)
            r1.append(r5)
            java.lang.String r5 = " | dataSize: "
            r1.append(r5)
            r1.append(r6)
            java.lang.String r5 = " | maxcount: "
            r1.append(r5)
            r1.append(r0)
            java.lang.String r5 = r1.toString()
            java.lang.String r1 = "openSDK_LOG.ReportManager"
            com.tencent.open.a.f.b(r1, r5)
            if (r6 < r0) goto L_0x0061
            r5 = 1
            return r5
        L_0x0061:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.a(java.lang.String, int):boolean");
    }

    /* access modifiers changed from: protected */
    public int a(int i) {
        if (i == 0) {
            int a2 = com.tencent.open.utils.f.a(e.a(), (String) null).a("Common_CGIReportFrequencySuccess");
            if (a2 == 0) {
                return 10;
            }
            return a2;
        }
        int a3 = com.tencent.open.utils.f.a(e.a(), (String) null).a("Common_CGIReportFrequencyFailed");
        if (a3 == 0) {
            return 100;
        }
        return a3;
    }

    /* access modifiers changed from: protected */
    public Bundle c() {
        if (this.c.size() == 0) {
            return null;
        }
        b bVar = (b) this.c.get(0);
        String str = "openSDK_LOG.ReportManager";
        if (bVar == null) {
            f.b(str, "-->prepareCgiData, the 0th cgireportitem is null.");
            return null;
        }
        String str2 = "appid";
        String str3 = (String) bVar.a.get(str2);
        List a2 = f.a().a("report_cgi");
        if (a2 != null) {
            this.c.addAll(a2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("-->prepareCgiData, mCgiList size: ");
        sb.append(this.c.size());
        f.b(str, sb.toString());
        if (this.c.size() == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        try {
            bundle.putString(str2, str3);
            bundle.putString("releaseversion", Constants.SDK_VERSION_REPORT);
            bundle.putString("device", Build.DEVICE);
            bundle.putString("qua", Constants.SDK_QUA);
            bundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo");
            for (int i = 0; i < this.c.size(); i++) {
                b bVar2 = (b) this.c.get(i);
                StringBuilder sb2 = new StringBuilder();
                sb2.append(i);
                sb2.append("_1");
                bundle.putString(sb2.toString(), (String) bVar2.a.get("apn"));
                StringBuilder sb3 = new StringBuilder();
                sb3.append(i);
                sb3.append("_2");
                bundle.putString(sb3.toString(), (String) bVar2.a.get("frequency"));
                StringBuilder sb4 = new StringBuilder();
                sb4.append(i);
                sb4.append("_3");
                bundle.putString(sb4.toString(), (String) bVar2.a.get("commandid"));
                StringBuilder sb5 = new StringBuilder();
                sb5.append(i);
                sb5.append("_4");
                bundle.putString(sb5.toString(), (String) bVar2.a.get("resultCode"));
                StringBuilder sb6 = new StringBuilder();
                sb6.append(i);
                sb6.append("_5");
                bundle.putString(sb6.toString(), (String) bVar2.a.get("timeCost"));
                StringBuilder sb7 = new StringBuilder();
                sb7.append(i);
                sb7.append("_6");
                bundle.putString(sb7.toString(), (String) bVar2.a.get("reqSize"));
                StringBuilder sb8 = new StringBuilder();
                sb8.append(i);
                sb8.append("_7");
                bundle.putString(sb8.toString(), (String) bVar2.a.get("rspSize"));
                StringBuilder sb9 = new StringBuilder();
                sb9.append(i);
                sb9.append("_8");
                bundle.putString(sb9.toString(), (String) bVar2.a.get(ProductAction.ACTION_DETAIL));
                StringBuilder sb10 = new StringBuilder();
                sb10.append(i);
                sb10.append("_9");
                bundle.putString(sb10.toString(), (String) bVar2.a.get("uin"));
                StringBuilder sb11 = new StringBuilder();
                sb11.append(c.e(e.a()));
                sb11.append("&");
                sb11.append((String) bVar2.a.get("deviceInfo"));
                String sb12 = sb11.toString();
                StringBuilder sb13 = new StringBuilder();
                sb13.append(i);
                sb13.append("_10");
                bundle.putString(sb13.toString(), sb12);
            }
            StringBuilder sb14 = new StringBuilder();
            sb14.append("-->prepareCgiData, end. params: ");
            sb14.append(bundle.toString());
            f.a(str, sb14.toString());
            return bundle;
        } catch (Exception e2) {
            f.b(str, "-->prepareCgiData, exception.", e2);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public Bundle d() {
        String str = "data";
        List a2 = f.a().a("report_via");
        if (a2 != null) {
            this.d.addAll(a2);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("-->prepareViaData, mViaList size: ");
        sb.append(this.d.size());
        String str2 = "openSDK_LOG.ReportManager";
        f.b(str2, sb.toString());
        if (this.d.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.d.iterator();
        while (true) {
            String str3 = "-->prepareViaData, put bundle to json array exception";
            if (it.hasNext()) {
                Serializable serializable = (Serializable) it.next();
                JSONObject jSONObject = new JSONObject();
                b bVar = (b) serializable;
                for (String str4 : bVar.a.keySet()) {
                    try {
                        String str5 = (String) bVar.a.get(str4);
                        if (str5 == null) {
                            str5 = "";
                        }
                        jSONObject.put(str4, str5);
                    } catch (JSONException e2) {
                        f.b(str2, str3, e2);
                    }
                }
                jSONArray.put(jSONObject);
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("-->prepareViaData, JSONArray array: ");
                sb2.append(jSONArray.toString());
                f.a(str2, sb2.toString());
                Bundle bundle = new Bundle();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(str, jSONArray);
                    bundle.putString(str, jSONObject2.toString());
                    return bundle;
                } catch (JSONException e3) {
                    f.b(str2, str3, e3);
                    return null;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void e() {
        this.g.execute(new Runnable() {
            /* JADX WARNING: Code restructure failed: missing block: B:13:0x0051, code lost:
                r7 = -4;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:18:0x005a, code lost:
                if (android.text.TextUtils.isEmpty(r0.a) == false) goto L_0x005c;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:22:0x0067, code lost:
                r0 = r4;
                r6 = -6;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:24:0x006b, code lost:
                r0 = move-exception;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:27:0x0070, code lost:
                r6 = com.tencent.open.utils.HttpUtils.getErrorCodeFromException(r0);
                r0 = r16;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:28:0x0074, code lost:
                r0 = move-exception;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
                r6 = java.lang.Integer.parseInt(r0.getMessage().replace(com.tencent.open.utils.HttpUtils.HttpStatusException.ERROR_INFO, ""));
             */
            /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
                r1.a.d.clear();
                com.tencent.open.a.f.b(r2, "doReportVia, NetworkUnavailableException.");
             */
            /* JADX WARNING: Code restructure failed: missing block: B:33:0x0092, code lost:
                return;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:37:0x009b, code lost:
                r9 = android.os.SystemClock.elapsedRealtime();
                r0 = r16;
                r6 = -8;
             */
            /* JADX WARNING: Code restructure failed: missing block: B:39:0x00a5, code lost:
                r9 = android.os.SystemClock.elapsedRealtime();
                r0 = r16;
                r6 = -7;
             */
            /* JADX WARNING: Failed to process nested try/catch */
            /* JADX WARNING: Missing exception handler attribute for start block: B:31:0x0086 */
            /* JADX WARNING: Removed duplicated region for block: B:23:? A[ExcHandler: Exception (unused java.lang.Exception), SYNTHETIC, Splitter:B:8:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:24:0x006b A[ExcHandler: IOException (r0v25 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:8:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:28:0x0074 A[ExcHandler: HttpStatusException (r0v22 'e' com.tencent.open.utils.HttpUtils$HttpStatusException A[CUSTOM_DECLARE]), Splitter:B:8:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:31:0x0086 A[SYNTHETIC, Splitter:B:31:0x0086] */
            /* JADX WARNING: Removed duplicated region for block: B:38:? A[ExcHandler: SocketTimeoutException (unused java.net.SocketTimeoutException), SYNTHETIC, Splitter:B:8:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:40:? A[ExcHandler: ConnectTimeoutException (unused org.apache.http.conn.ConnectTimeoutException), SYNTHETIC, Splitter:B:8:0x0038] */
            /* JADX WARNING: Removed duplicated region for block: B:46:0x00ca A[SYNTHETIC, Splitter:B:46:0x00ca] */
            /* JADX WARNING: Removed duplicated region for block: B:48:0x00d2 A[Catch:{ Exception -> 0x00f9 }] */
            /* JADX WARNING: Removed duplicated region for block: B:53:0x00b1 A[SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r28 = this;
                    r1 = r28
                    java.lang.String r2 = "openSDK_LOG.ReportManager"
                    com.tencent.open.b.g r0 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00f9 }
                    android.os.Bundle r3 = r0.d()     // Catch:{ Exception -> 0x00f9 }
                    if (r3 != 0) goto L_0x000d
                    return
                L_0x000d:
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00f9 }
                    r0.<init>()     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r4 = "-->doReportVia, params: "
                    r0.append(r4)     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r4 = r3.toString()     // Catch:{ Exception -> 0x00f9 }
                    r0.append(r4)     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x00f9 }
                    com.tencent.open.a.f.a(r2, r0)     // Catch:{ Exception -> 0x00f9 }
                    int r4 = com.tencent.open.b.e.a()     // Catch:{ Exception -> 0x00f9 }
                    long r5 = android.os.SystemClock.elapsedRealtime()     // Catch:{ Exception -> 0x00f9 }
                    r0 = 0
                    r9 = r5
                    r5 = 0
                    r6 = 0
                    r11 = 0
                    r13 = 0
                L_0x0035:
                    r15 = 1
                    int r16 = r0 + 1
                    android.content.Context r0 = com.tencent.open.utils.e.a()     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    java.lang.String r7 = "https://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report"
                    java.lang.String r8 = "POST"
                    com.tencent.open.utils.k$a r0 = com.tencent.open.utils.HttpUtils.openUrl2(r0, r7, r8, r3)     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    java.lang.String r7 = r0.a     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    org.json.JSONObject r7 = com.tencent.open.utils.k.d(r7)     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    java.lang.String r8 = "ret"
                    int r7 = r7.getInt(r8)     // Catch:{ JSONException -> 0x0051, ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    goto L_0x0052
                L_0x0051:
                    r7 = -4
                L_0x0052:
                    if (r7 == 0) goto L_0x005c
                    java.lang.String r7 = r0.a     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    boolean r7 = android.text.TextUtils.isEmpty(r7)     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    if (r7 != 0) goto L_0x005f
                L_0x005c:
                    r16 = r4
                    r5 = 1
                L_0x005f:
                    long r11 = r0.b     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    long r7 = r0.c     // Catch:{ ConnectTimeoutException -> 0x00a5, SocketTimeoutException -> 0x009b, JSONException -> 0x0093, NetworkUnavailableException -> 0x0086, HttpStatusException -> 0x0074, IOException -> 0x006b, Exception -> 0x0067 }
                    r13 = r7
                    r0 = r16
                    goto L_0x00af
                L_0x0067:
                    r0 = -6
                    r0 = r4
                    r6 = -6
                    goto L_0x0096
                L_0x006b:
                    r0 = move-exception
                    int r0 = com.tencent.open.utils.HttpUtils.getErrorCodeFromException(r0)     // Catch:{ Exception -> 0x00f9 }
                    r6 = r0
                    r0 = r16
                    goto L_0x0096
                L_0x0074:
                    r0 = move-exception
                    java.lang.String r0 = r0.getMessage()     // Catch:{ Exception -> 0x00b1 }
                    java.lang.String r3 = "http status code error:"
                    java.lang.String r4 = ""
                    java.lang.String r0 = r0.replace(r3, r4)     // Catch:{ Exception -> 0x00b1 }
                    int r6 = java.lang.Integer.parseInt(r0)     // Catch:{ Exception -> 0x00b1 }
                    goto L_0x00b1
                L_0x0086:
                    com.tencent.open.b.g r0 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00f9 }
                    java.util.List<java.io.Serializable> r0 = r0.d     // Catch:{ Exception -> 0x00f9 }
                    r0.clear()     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r0 = "doReportVia, NetworkUnavailableException."
                    com.tencent.open.a.f.b(r2, r0)     // Catch:{ Exception -> 0x00f9 }
                    return
                L_0x0093:
                    r0 = r16
                    r6 = -4
                L_0x0096:
                    r11 = 0
                    r13 = 0
                    goto L_0x00af
                L_0x009b:
                    long r6 = android.os.SystemClock.elapsedRealtime()     // Catch:{ Exception -> 0x00f9 }
                    r0 = -8
                    r9 = r6
                    r0 = r16
                    r6 = -8
                    goto L_0x0096
                L_0x00a5:
                    long r6 = android.os.SystemClock.elapsedRealtime()     // Catch:{ Exception -> 0x00f9 }
                    r0 = -7
                    r9 = r6
                    r0 = r16
                    r6 = -7
                    goto L_0x0096
                L_0x00af:
                    if (r0 < r4) goto L_0x0035
                L_0x00b1:
                    r25 = r6
                    r19 = r9
                    r21 = r11
                    r23 = r13
                    com.tencent.open.b.g r0 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r18 = "mapp_apptrace_sdk"
                    r26 = 0
                    r27 = 0
                    r17 = r0
                    r17.a(r18, r19, r21, r23, r25, r26, r27)     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r0 = "report_via"
                    if (r5 == 0) goto L_0x00d2
                    com.tencent.open.b.f r3 = com.tencent.open.b.f.a()     // Catch:{ Exception -> 0x00f9 }
                    r3.b(r0)     // Catch:{ Exception -> 0x00f9 }
                    goto L_0x00dd
                L_0x00d2:
                    com.tencent.open.b.f r3 = com.tencent.open.b.f.a()     // Catch:{ Exception -> 0x00f9 }
                    com.tencent.open.b.g r4 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00f9 }
                    java.util.List<java.io.Serializable> r4 = r4.d     // Catch:{ Exception -> 0x00f9 }
                    r3.a(r0, r4)     // Catch:{ Exception -> 0x00f9 }
                L_0x00dd:
                    com.tencent.open.b.g r0 = com.tencent.open.b.g.this     // Catch:{ Exception -> 0x00f9 }
                    java.util.List<java.io.Serializable> r0 = r0.d     // Catch:{ Exception -> 0x00f9 }
                    r0.clear()     // Catch:{ Exception -> 0x00f9 }
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00f9 }
                    r0.<init>()     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r3 = "-->doReportVia, uploadSuccess: "
                    r0.append(r3)     // Catch:{ Exception -> 0x00f9 }
                    r0.append(r5)     // Catch:{ Exception -> 0x00f9 }
                    java.lang.String r0 = r0.toString()     // Catch:{ Exception -> 0x00f9 }
                    com.tencent.open.a.f.b(r2, r0)     // Catch:{ Exception -> 0x00f9 }
                    goto L_0x00ff
                L_0x00f9:
                    r0 = move-exception
                    java.lang.String r3 = "-->doReportVia, exception in serial executor."
                    com.tencent.open.a.f.b(r2, r3, r0)
                L_0x00ff:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.AnonymousClass5.run():void");
            }
        });
    }

    public void a(String str, String str2, Bundle bundle, boolean z) {
        final Bundle bundle2 = bundle;
        final String str3 = str;
        final boolean z2 = z;
        final String str4 = str2;
        AnonymousClass6 r0 = new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:45:0x00e2 A[Catch:{ Exception -> 0x00f4 }] */
            /* JADX WARNING: Removed duplicated region for block: B:46:0x00e8 A[Catch:{ Exception -> 0x00f4 }] */
            /* JADX WARNING: Removed duplicated region for block: B:54:0x00e0 A[EDGE_INSN: B:54:0x00e0->B:44:0x00e0 ?: BREAK  , SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r10 = this;
                    java.lang.String r0 = "openSDK_LOG.ReportManager"
                    android.os.Bundle r1 = r2     // Catch:{ Exception -> 0x00f4 }
                    if (r1 != 0) goto L_0x000c
                    java.lang.String r1 = "-->httpRequest, params is null!"
                    com.tencent.open.a.f.e(r0, r1)     // Catch:{ Exception -> 0x00f4 }
                    return
                L_0x000c:
                    int r1 = com.tencent.open.b.e.a()     // Catch:{ Exception -> 0x00f4 }
                    if (r1 != 0) goto L_0x0013
                    r1 = 3
                L_0x0013:
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00f4 }
                    r2.<init>()     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r3 = "-->httpRequest, retryCount: "
                    r2.append(r3)     // Catch:{ Exception -> 0x00f4 }
                    r2.append(r1)     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x00f4 }
                    com.tencent.open.a.f.b(r0, r2)     // Catch:{ Exception -> 0x00f4 }
                    android.content.Context r2 = com.tencent.open.utils.e.a()     // Catch:{ Exception -> 0x00f4 }
                    r3 = 0
                    java.lang.String r4 = r3     // Catch:{ Exception -> 0x00f4 }
                    org.apache.http.client.HttpClient r2 = com.tencent.open.utils.HttpUtils.getHttpClient(r2, r3, r4)     // Catch:{ Exception -> 0x00f4 }
                    android.os.Bundle r3 = r2     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r3 = com.tencent.open.utils.HttpUtils.encodeUrl(r3)     // Catch:{ Exception -> 0x00f4 }
                    boolean r4 = r4     // Catch:{ Exception -> 0x00f4 }
                    if (r4 == 0) goto L_0x0040
                    java.lang.String r3 = java.net.URLEncoder.encode(r3)     // Catch:{ Exception -> 0x00f4 }
                L_0x0040:
                    java.lang.String r4 = r5     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r4 = r4.toUpperCase()     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r5 = "GET"
                    boolean r4 = r4.equals(r5)     // Catch:{ Exception -> 0x00f4 }
                    if (r4 == 0) goto L_0x0062
                    java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r5 = r3     // Catch:{ Exception -> 0x00f4 }
                    r4.<init>(r5)     // Catch:{ Exception -> 0x00f4 }
                    r4.append(r3)     // Catch:{ Exception -> 0x00f4 }
                    org.apache.http.client.methods.HttpGet r3 = new org.apache.http.client.methods.HttpGet     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x00f4 }
                    r3.<init>(r4)     // Catch:{ Exception -> 0x00f4 }
                    goto L_0x0084
                L_0x0062:
                    java.lang.String r4 = r5     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r4 = r4.toUpperCase()     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r5 = "POST"
                    boolean r4 = r4.equals(r5)     // Catch:{ Exception -> 0x00f4 }
                    if (r4 == 0) goto L_0x00ee
                    org.apache.http.client.methods.HttpPost r4 = new org.apache.http.client.methods.HttpPost     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r5 = r3     // Catch:{ Exception -> 0x00f4 }
                    r4.<init>(r5)     // Catch:{ Exception -> 0x00f4 }
                    byte[] r3 = com.tencent.open.utils.k.i(r3)     // Catch:{ Exception -> 0x00f4 }
                    org.apache.http.entity.ByteArrayEntity r5 = new org.apache.http.entity.ByteArrayEntity     // Catch:{ Exception -> 0x00f4 }
                    r5.<init>(r3)     // Catch:{ Exception -> 0x00f4 }
                    r4.setEntity(r5)     // Catch:{ Exception -> 0x00f4 }
                    r3 = r4
                L_0x0084:
                    java.lang.String r4 = "Accept-Encoding"
                    java.lang.String r5 = "gzip"
                    r3.addHeader(r4, r5)     // Catch:{ Exception -> 0x00f4 }
                    java.lang.String r4 = "Content-Type"
                    java.lang.String r5 = "application/x-www-form-urlencoded"
                    r3.addHeader(r4, r5)     // Catch:{ Exception -> 0x00f4 }
                    r4 = 0
                    r5 = 0
                L_0x0094:
                    r6 = 1
                    int r4 = r4 + r6
                    org.apache.http.HttpResponse r7 = r2.execute(r3)     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    org.apache.http.StatusLine r7 = r7.getStatusLine()     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    int r7 = r7.getStatusCode()     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    r8.<init>()     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    java.lang.String r9 = "-->httpRequest, statusCode: "
                    r8.append(r9)     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    r8.append(r7)     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    java.lang.String r8 = r8.toString()     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    com.tencent.open.a.f.b(r0, r8)     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    r8 = 200(0xc8, float:2.8E-43)
                    if (r7 == r8) goto L_0x00c0
                    java.lang.String r7 = "-->ReportCenter httpRequest : HttpStatuscode != 200"
                    com.tencent.open.a.f.b(r0, r7)     // Catch:{ ConnectTimeoutException -> 0x00d9, SocketTimeoutException -> 0x00d3, Exception -> 0x00cd }
                    goto L_0x00e0
                L_0x00c0:
                    java.lang.String r5 = "-->ReportCenter httpRequest Thread success"
                    com.tencent.open.a.f.b(r0, r5)     // Catch:{ ConnectTimeoutException -> 0x00cb, SocketTimeoutException -> 0x00c9, Exception -> 0x00c7 }
                    r5 = 1
                    goto L_0x00e0
                L_0x00c7:
                    r5 = 1
                    goto L_0x00cd
                L_0x00c9:
                    r5 = 1
                    goto L_0x00d3
                L_0x00cb:
                    r5 = 1
                    goto L_0x00d9
                L_0x00cd:
                    java.lang.String r1 = "-->ReportCenter httpRequest Exception"
                    com.tencent.open.a.f.b(r0, r1)     // Catch:{ Exception -> 0x00f4 }
                    goto L_0x00e0
                L_0x00d3:
                    java.lang.String r7 = "-->ReportCenter httpRequest SocketTimeoutException"
                    com.tencent.open.a.f.b(r0, r7)     // Catch:{ Exception -> 0x00f4 }
                    goto L_0x00de
                L_0x00d9:
                    java.lang.String r7 = "-->ReportCenter httpRequest ConnectTimeoutException"
                    com.tencent.open.a.f.b(r0, r7)     // Catch:{ Exception -> 0x00f4 }
                L_0x00de:
                    if (r4 < r1) goto L_0x0094
                L_0x00e0:
                    if (r5 != r6) goto L_0x00e8
                    java.lang.String r1 = "-->ReportCenter httpRequest Thread request success"
                    com.tencent.open.a.f.b(r0, r1)     // Catch:{ Exception -> 0x00f4 }
                    goto L_0x00f9
                L_0x00e8:
                    java.lang.String r1 = "-->ReportCenter httpRequest Thread request failed"
                    com.tencent.open.a.f.b(r0, r1)     // Catch:{ Exception -> 0x00f4 }
                    goto L_0x00f9
                L_0x00ee:
                    java.lang.String r1 = "-->httpRequest unkonw request method return."
                    com.tencent.open.a.f.e(r0, r1)     // Catch:{ Exception -> 0x00f4 }
                    return
                L_0x00f4:
                    java.lang.String r1 = "-->httpRequest, exception in serial executor."
                    com.tencent.open.a.f.b(r0, r1)
                L_0x00f9:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.b.g.AnonymousClass6.run():void");
            }
        };
        i.a(r0);
    }
}
