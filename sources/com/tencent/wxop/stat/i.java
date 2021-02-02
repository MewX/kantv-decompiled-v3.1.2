package com.tencent.wxop.stat;

import android.content.Context;
import com.avos.avoscloud.im.v2.Conversation;
import com.tencent.a.a.a.a.g;
import com.tencent.a.a.a.a.h;
import com.tencent.wxop.stat.common.StatLogger;
import com.tencent.wxop.stat.common.e;
import com.tencent.wxop.stat.common.f;
import com.tencent.wxop.stat.common.l;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.eclipse.jetty.http.HttpHeaders;
import org.json.JSONObject;

class i {
    private static StatLogger d = l.b();
    private static i e = null;
    private static Context f = null;
    DefaultHttpClient a = null;
    e b = null;
    StringBuilder c = new StringBuilder(4096);
    private long g = 0;

    /* JADX WARNING: Can't wrap try/catch for region: R(7:0|1|2|(3:4|5|6)|7|8|9) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0066 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private i(android.content.Context r6) {
        /*
            r5 = this;
            java.lang.String r0 = "debug"
            r5.<init>()
            r1 = 0
            r5.a = r1
            r5.b = r1
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = 4096(0x1000, float:5.74E-42)
            r1.<init>(r2)
            r5.c = r1
            r1 = 0
            r5.g = r1
            android.content.Context r6 = r6.getApplicationContext()     // Catch:{ Throwable -> 0x0089 }
            f = r6     // Catch:{ Throwable -> 0x0089 }
            long r1 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x0089 }
            r3 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r3
            r5.g = r1     // Catch:{ Throwable -> 0x0089 }
            com.tencent.wxop.stat.common.e r6 = new com.tencent.wxop.stat.common.e     // Catch:{ Throwable -> 0x0089 }
            r6.<init>()     // Catch:{ Throwable -> 0x0089 }
            r5.b = r6     // Catch:{ Throwable -> 0x0089 }
            boolean r6 = com.tencent.wxop.stat.StatConfig.isDebugEnable()     // Catch:{ Throwable -> 0x0089 }
            if (r6 == 0) goto L_0x0066
            java.lang.String r6 = "org.apache.http.wire"
            java.util.logging.Logger r6 = java.util.logging.Logger.getLogger(r6)     // Catch:{ Throwable -> 0x0066 }
            java.util.logging.Level r1 = java.util.logging.Level.FINER     // Catch:{ Throwable -> 0x0066 }
            r6.setLevel(r1)     // Catch:{ Throwable -> 0x0066 }
            java.lang.String r6 = "org.apache.http.headers"
            java.util.logging.Logger r6 = java.util.logging.Logger.getLogger(r6)     // Catch:{ Throwable -> 0x0066 }
            java.util.logging.Level r1 = java.util.logging.Level.FINER     // Catch:{ Throwable -> 0x0066 }
            r6.setLevel(r1)     // Catch:{ Throwable -> 0x0066 }
            java.lang.String r6 = "org.apache.commons.logging.Log"
            java.lang.String r1 = "org.apache.commons.logging.impl.SimpleLog"
            java.lang.System.setProperty(r6, r1)     // Catch:{ Throwable -> 0x0066 }
            java.lang.String r6 = "org.apache.commons.logging.simplelog.showdatetime"
            java.lang.String r1 = "true"
            java.lang.System.setProperty(r6, r1)     // Catch:{ Throwable -> 0x0066 }
            java.lang.String r6 = "org.apache.commons.logging.simplelog.log.httpclient.wire"
            java.lang.System.setProperty(r6, r0)     // Catch:{ Throwable -> 0x0066 }
            java.lang.String r6 = "org.apache.commons.logging.simplelog.log.org.apache.http"
            java.lang.System.setProperty(r6, r0)     // Catch:{ Throwable -> 0x0066 }
            java.lang.String r6 = "org.apache.commons.logging.simplelog.log.org.apache.http.headers"
            java.lang.System.setProperty(r6, r0)     // Catch:{ Throwable -> 0x0066 }
        L_0x0066:
            org.apache.http.params.BasicHttpParams r6 = new org.apache.http.params.BasicHttpParams     // Catch:{ Throwable -> 0x0089 }
            r6.<init>()     // Catch:{ Throwable -> 0x0089 }
            r0 = 0
            org.apache.http.params.HttpConnectionParams.setStaleCheckingEnabled(r6, r0)     // Catch:{ Throwable -> 0x0089 }
            r0 = 10000(0x2710, float:1.4013E-41)
            org.apache.http.params.HttpConnectionParams.setConnectionTimeout(r6, r0)     // Catch:{ Throwable -> 0x0089 }
            org.apache.http.params.HttpConnectionParams.setSoTimeout(r6, r0)     // Catch:{ Throwable -> 0x0089 }
            org.apache.http.impl.client.DefaultHttpClient r0 = new org.apache.http.impl.client.DefaultHttpClient     // Catch:{ Throwable -> 0x0089 }
            r0.<init>(r6)     // Catch:{ Throwable -> 0x0089 }
            r5.a = r0     // Catch:{ Throwable -> 0x0089 }
            org.apache.http.impl.client.DefaultHttpClient r6 = r5.a     // Catch:{ Throwable -> 0x0089 }
            com.tencent.wxop.stat.j r0 = new com.tencent.wxop.stat.j     // Catch:{ Throwable -> 0x0089 }
            r0.<init>(r5)     // Catch:{ Throwable -> 0x0089 }
            r6.setKeepAliveStrategy(r0)     // Catch:{ Throwable -> 0x0089 }
            return
        L_0x0089:
            r6 = move-exception
            com.tencent.wxop.stat.common.StatLogger r0 = d
            r0.e(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.i.<init>(android.content.Context):void");
    }

    static Context a() {
        return f;
    }

    static void a(Context context) {
        f = context.getApplicationContext();
    }

    private void a(JSONObject jSONObject) {
        String str = "ncts";
        String str2 = "cfg";
        try {
            String optString = jSONObject.optString(Conversation.PARAM_MESSAGE_QUERY_MSGID);
            if (h.c(optString)) {
                if (StatConfig.isDebugEnable()) {
                    StatLogger statLogger = d;
                    StringBuilder sb = new StringBuilder("update mid:");
                    sb.append(optString);
                    statLogger.i(sb.toString());
                }
                g.C(f).a(optString);
            }
            if (!jSONObject.isNull(str2)) {
                StatConfig.a(f, jSONObject.getJSONObject(str2));
            }
            if (!jSONObject.isNull(str)) {
                int i = jSONObject.getInt(str);
                int currentTimeMillis = (int) (((long) i) - (System.currentTimeMillis() / 1000));
                if (StatConfig.isDebugEnable()) {
                    StatLogger statLogger2 = d;
                    StringBuilder sb2 = new StringBuilder("server time:");
                    sb2.append(i);
                    sb2.append(", diff time:");
                    sb2.append(currentTimeMillis);
                    statLogger2.i(sb2.toString());
                }
                l.x(f);
                l.a(f, currentTimeMillis);
            }
        } catch (Throwable th) {
            d.w(th);
        }
    }

    static i b(Context context) {
        if (e == null) {
            synchronized (i.class) {
                if (e == null) {
                    e = new i(context);
                }
            }
        }
        return e;
    }

    /* access modifiers changed from: 0000 */
    public void a(com.tencent.wxop.stat.event.e eVar, h hVar) {
        b(Arrays.asList(new String[]{eVar.g()}), hVar);
    }

    /* access modifiers changed from: 0000 */
    public void a(List<?> list, h hVar) {
        Throwable th;
        List<?> list2 = list;
        String str = "gzip";
        String str2 = "rc4";
        String str3 = "[";
        String str4 = "UTF-8";
        String str5 = "Content-Encoding";
        if (list2 != null && !list.isEmpty()) {
            int size = list.size();
            list2.get(0);
            try {
                this.c.delete(0, this.c.length());
                this.c.append(str3);
                for (int i = 0; i < size; i++) {
                    this.c.append(list2.get(i).toString());
                    if (i != size - 1) {
                        this.c.append(",");
                    }
                }
                this.c.append("]");
                String sb = this.c.toString();
                int length = sb.length();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(StatConfig.getStatReportUrl());
                sb2.append("/?index=");
                sb2.append(this.g);
                String sb3 = sb2.toString();
                this.g++;
                if (StatConfig.isDebugEnable()) {
                    StatLogger statLogger = d;
                    StringBuilder sb4 = new StringBuilder(str3);
                    sb4.append(sb3);
                    sb4.append("]Send request(");
                    sb4.append(length);
                    sb4.append("bytes), content:");
                    sb4.append(sb);
                    statLogger.i(sb4.toString());
                }
                HttpPost httpPost = new HttpPost(sb3);
                httpPost.addHeader("Accept-Encoding", str);
                httpPost.setHeader(HttpHeaders.CONNECTION, HttpHeaders.KEEP_ALIVE);
                httpPost.removeHeaders("Cache-Control");
                HttpHost a2 = a.a(f).a();
                httpPost.addHeader(str5, str2);
                String str6 = "http.route.default-proxy";
                String str7 = "X-Content-Encoding";
                if (a2 == null) {
                    this.a.getParams().removeParameter(str6);
                } else {
                    if (StatConfig.isDebugEnable()) {
                        StatLogger statLogger2 = d;
                        StringBuilder sb5 = new StringBuilder("proxy:");
                        sb5.append(a2.toHostString());
                        statLogger2.d(sb5.toString());
                    }
                    httpPost.addHeader(str7, str2);
                    this.a.getParams().setParameter(str6, a2);
                    httpPost.addHeader("X-Online-Host", StatConfig.k);
                    httpPost.addHeader("Accept", "*/*");
                    httpPost.addHeader("Content-Type", "json");
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
                byte[] bytes = sb.getBytes(str4);
                int length2 = bytes.length;
                if (length > StatConfig.o) {
                    httpPost.removeHeaders(str5);
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append(str2);
                    sb6.append(",gzip");
                    String sb7 = sb6.toString();
                    httpPost.addHeader(str5, sb7);
                    if (a2 != null) {
                        httpPost.removeHeaders(str7);
                        httpPost.addHeader(str7, sb7);
                    }
                    byteArrayOutputStream.write(new byte[4]);
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    gZIPOutputStream.write(bytes);
                    gZIPOutputStream.close();
                    bytes = byteArrayOutputStream.toByteArray();
                    ByteBuffer.wrap(bytes, 0, 4).putInt(length2);
                    if (StatConfig.isDebugEnable()) {
                        StatLogger statLogger3 = d;
                        StringBuilder sb8 = new StringBuilder("before Gzip:");
                        sb8.append(length2);
                        sb8.append(" bytes, after Gzip:");
                        sb8.append(bytes.length);
                        sb8.append(" bytes");
                        statLogger3.d(sb8.toString());
                    }
                }
                httpPost.setEntity(new ByteArrayEntity(f.a(bytes)));
                HttpResponse execute = this.a.execute(httpPost);
                HttpEntity entity = execute.getEntity();
                int statusCode = execute.getStatusLine().getStatusCode();
                long contentLength = entity.getContentLength();
                if (StatConfig.isDebugEnable()) {
                    StatLogger statLogger4 = d;
                    StringBuilder sb9 = new StringBuilder("http recv response status code:");
                    sb9.append(statusCode);
                    sb9.append(", content length:");
                    sb9.append(contentLength);
                    statLogger4.i(sb9.toString());
                }
                if (contentLength <= 0) {
                    d.e((Object) "Server response no data.");
                    if (hVar != null) {
                        hVar.b();
                    }
                    EntityUtils.toString(entity);
                    return;
                }
                if (contentLength > 0) {
                    InputStream content = entity.getContent();
                    DataInputStream dataInputStream = new DataInputStream(content);
                    byte[] bArr = new byte[((int) entity.getContentLength())];
                    dataInputStream.readFully(bArr);
                    content.close();
                    dataInputStream.close();
                    Header firstHeader = execute.getFirstHeader(str5);
                    if (firstHeader != null) {
                        if (firstHeader.getValue().equalsIgnoreCase("gzip,rc4")) {
                            bArr = f.b(l.a(bArr));
                        } else if (firstHeader.getValue().equalsIgnoreCase("rc4,gzip")) {
                            bArr = l.a(f.b(bArr));
                        } else if (firstHeader.getValue().equalsIgnoreCase(str)) {
                            bArr = l.a(bArr);
                        } else if (firstHeader.getValue().equalsIgnoreCase(str2)) {
                            bArr = f.b(bArr);
                        }
                    }
                    String str8 = new String(bArr, str4);
                    if (StatConfig.isDebugEnable()) {
                        StatLogger statLogger5 = d;
                        StringBuilder sb10 = new StringBuilder("http get response data:");
                        sb10.append(str8);
                        statLogger5.i(sb10.toString());
                    }
                    JSONObject jSONObject = new JSONObject(str8);
                    if (statusCode == 200) {
                        a(jSONObject);
                        if (hVar != null) {
                            if (jSONObject.optInt("ret") == 0) {
                                hVar.a();
                            } else {
                                d.error((Object) "response error data.");
                            }
                        }
                        content.close();
                    } else {
                        StatLogger statLogger6 = d;
                        StringBuilder sb11 = new StringBuilder("Server response error code:");
                        sb11.append(statusCode);
                        sb11.append(", error:");
                        sb11.append(new String(bArr, str4));
                        statLogger6.error((Object) sb11.toString());
                        if (hVar != null) {
                        }
                        content.close();
                    }
                    hVar.b();
                    content.close();
                } else {
                    EntityUtils.toString(entity);
                }
                byteArrayOutputStream.close();
                th = null;
                if (th != null) {
                    d.error(th);
                    if (hVar != null) {
                        try {
                            hVar.b();
                        } catch (Throwable th2) {
                            d.e(th2);
                        }
                    }
                    if (th instanceof OutOfMemoryError) {
                        System.gc();
                        this.c = null;
                        this.c = new StringBuilder(2048);
                    }
                    a.a(f).d();
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void b(List<?> list, h hVar) {
        e eVar = this.b;
        if (eVar != null) {
            eVar.a(new k(this, list, hVar));
        }
    }
}
