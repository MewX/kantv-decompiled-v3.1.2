package com.tencent.open.utils;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import com.avos.avoscloud.im.v2.Conversation;
import com.tencent.connect.common.Constants;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class f {
    private static Map<String, f> a = Collections.synchronizedMap(new HashMap());
    private static String b = null;
    /* access modifiers changed from: private */
    public Context c = null;
    private String d = null;
    private JSONObject e = null;
    private long f = 0;
    /* access modifiers changed from: private */
    public int g = 0;
    private boolean h = true;

    public static f a(Context context, String str) {
        f fVar;
        synchronized (a) {
            com.tencent.open.a.f.a("openSDK_LOG.OpenConfig", "getInstance begin");
            if (str != null) {
                b = str;
            }
            if (str == null) {
                str = b != null ? b : "0";
            }
            fVar = (f) a.get(str);
            if (fVar == null) {
                fVar = new f(context, str);
                a.put(str, fVar);
            }
            com.tencent.open.a.f.a("openSDK_LOG.OpenConfig", "getInstance end");
        }
        return fVar;
    }

    private f(Context context, String str) {
        this.c = context.getApplicationContext();
        this.d = str;
        a();
        b();
    }

    private void a() {
        try {
            this.e = new JSONObject(c("com.tencent.open.config.json"));
        } catch (JSONException unused) {
            this.e = new JSONObject();
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:7|8) */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0077, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0078, code lost:
        r5.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x007b, code lost:
        return r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:?, code lost:
        r5 = r4.c.getAssets().open(r5);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0025 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String c(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = ""
            java.lang.String r1 = r4.d     // Catch:{ FileNotFoundException -> 0x0025 }
            if (r1 == 0) goto L_0x001d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ FileNotFoundException -> 0x0025 }
            r1.<init>()     // Catch:{ FileNotFoundException -> 0x0025 }
            r1.append(r5)     // Catch:{ FileNotFoundException -> 0x0025 }
            java.lang.String r2 = "."
            r1.append(r2)     // Catch:{ FileNotFoundException -> 0x0025 }
            java.lang.String r2 = r4.d     // Catch:{ FileNotFoundException -> 0x0025 }
            r1.append(r2)     // Catch:{ FileNotFoundException -> 0x0025 }
            java.lang.String r1 = r1.toString()     // Catch:{ FileNotFoundException -> 0x0025 }
            goto L_0x001e
        L_0x001d:
            r1 = r5
        L_0x001e:
            android.content.Context r2 = r4.c     // Catch:{ FileNotFoundException -> 0x0025 }
            java.io.FileInputStream r5 = r2.openFileInput(r1)     // Catch:{ FileNotFoundException -> 0x0025 }
            goto L_0x002f
        L_0x0025:
            android.content.Context r1 = r4.c     // Catch:{ IOException -> 0x0077 }
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch:{ IOException -> 0x0077 }
            java.io.InputStream r5 = r1.open(r5)     // Catch:{ IOException -> 0x0077 }
        L_0x002f:
            java.io.BufferedReader r1 = new java.io.BufferedReader
            java.io.InputStreamReader r2 = new java.io.InputStreamReader
            java.lang.String r3 = "UTF-8"
            java.nio.charset.Charset r3 = java.nio.charset.Charset.forName(r3)
            r2.<init>(r5, r3)
            r1.<init>(r2)
            java.lang.StringBuffer r2 = new java.lang.StringBuffer
            r2.<init>()
        L_0x0044:
            java.lang.String r3 = r1.readLine()     // Catch:{ IOException -> 0x0060 }
            if (r3 == 0) goto L_0x004e
            r2.append(r3)     // Catch:{ IOException -> 0x0060 }
            goto L_0x0044
        L_0x004e:
            java.lang.String r0 = r2.toString()     // Catch:{ IOException -> 0x0060 }
            r5.close()     // Catch:{ IOException -> 0x0059 }
            r1.close()     // Catch:{ IOException -> 0x0059 }
            goto L_0x006a
        L_0x0059:
            r5 = move-exception
            r5.printStackTrace()
            goto L_0x006a
        L_0x005e:
            r0 = move-exception
            goto L_0x006b
        L_0x0060:
            r2 = move-exception
            r2.printStackTrace()     // Catch:{ all -> 0x005e }
            r5.close()     // Catch:{ IOException -> 0x0059 }
            r1.close()     // Catch:{ IOException -> 0x0059 }
        L_0x006a:
            return r0
        L_0x006b:
            r5.close()     // Catch:{ IOException -> 0x0072 }
            r1.close()     // Catch:{ IOException -> 0x0072 }
            goto L_0x0076
        L_0x0072:
            r5 = move-exception
            r5.printStackTrace()
        L_0x0076:
            throw r0
        L_0x0077:
            r5 = move-exception
            r5.printStackTrace()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.f.c(java.lang.String):java.lang.String");
    }

    private void a(String str, String str2) {
        try {
            if (this.d != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(".");
                sb.append(this.d);
                str = sb.toString();
            }
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.c.openFileOutput(str, 0), Charset.forName("UTF-8"));
            outputStreamWriter.write(str2);
            outputStreamWriter.flush();
            outputStreamWriter.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    private void b() {
        if (this.g != 0) {
            d("update thread is running, return");
            return;
        }
        this.g = 1;
        final Bundle bundle = new Bundle();
        bundle.putString("appid", this.d);
        bundle.putString("appid_for_getting_config", this.d);
        bundle.putString("status_os", VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", VERSION.SDK);
        bundle.putString("sdkv", Constants.SDK_VERSION);
        bundle.putString("sdkp", "a");
        new Thread() {
            public void run() {
                try {
                    f.this.a(k.d(HttpUtils.openUrl2(f.this.c, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", "GET", bundle).a));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                f.this.g = 0;
            }
        }.start();
    }

    /* access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        d("cgi back, do update");
        this.e = jSONObject;
        a("com.tencent.open.config.json", jSONObject.toString());
        this.f = SystemClock.elapsedRealtime();
    }

    private void c() {
        int optInt = this.e.optInt("Common_frequency");
        if (optInt == 0) {
            optInt = 1;
        }
        if (SystemClock.elapsedRealtime() - this.f >= ((long) (optInt * Conversation.DEFAULT_CONVERSATION_EXPIRE_TIME_IN_MILLS))) {
            b();
        }
    }

    public int a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("get ");
        sb.append(str);
        d(sb.toString());
        c();
        return this.e.optInt(str);
    }

    public boolean b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("get ");
        sb.append(str);
        d(sb.toString());
        c();
        Object opt = this.e.opt(str);
        if (opt == null) {
            return false;
        }
        if (opt instanceof Integer) {
            return !opt.equals(Integer.valueOf(0));
        }
        if (opt instanceof Boolean) {
            return ((Boolean) opt).booleanValue();
        }
        return false;
    }

    private void d(String str) {
        if (this.h) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("; appid: ");
            sb.append(this.d);
            com.tencent.open.a.f.a("openSDK_LOG.OpenConfig", sb.toString());
        }
    }
}
