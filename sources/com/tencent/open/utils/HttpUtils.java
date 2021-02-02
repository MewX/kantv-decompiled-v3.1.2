package com.tencent.open.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.avos.avoscloud.java_websocket.WebSocket;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.tencent.connect.auth.QQToken;
import com.tencent.open.a.f;
import com.tencent.tauth.IRequestListener;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.ByteArrayOutputStream;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.util.InvalidPropertiesFormatException;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.eclipse.jetty.http.HttpHeaders;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class HttpUtils {

    /* compiled from: ProGuard */
    public static class HttpStatusException extends Exception {
        public static final String ERROR_INFO = "http status code error:";

        public HttpStatusException(String str) {
            super(str);
        }
    }

    /* compiled from: ProGuard */
    public static class NetworkUnavailableException extends Exception {
        public static final String ERROR_INFO = "network unavailable";

        public NetworkUnavailableException(String str) {
            super(str);
        }
    }

    /* compiled from: ProGuard */
    public static class a {
        public final String a;
        public final int b;

        private a(String str, int i) {
            this.a = str;
            this.b = i;
        }
    }

    private HttpUtils() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x00d1, code lost:
        r13 = -4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x00f1, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x00f2, code lost:
        r9 = r0;
        r9.printStackTrace();
        com.tencent.open.b.g.a().a(r3, r5, 0, 0, getErrorCodeFromException(r9));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0109, code lost:
        throw r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x010a, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x010b, code lost:
        r9 = r0;
        r9.printStackTrace();
        com.tencent.open.b.g.a().a(r3, r5, 0, 0, -3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x011f, code lost:
        throw r9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0120, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0121, code lost:
        r0.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0124, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0125, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0126, code lost:
        r9 = r0;
        r9.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x013a, code lost:
        r8 = java.lang.Integer.parseInt(r9.getMessage().replace(com.tencent.open.utils.HttpUtils.HttpStatusException.ERROR_INFO, ""));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x013c, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x013d, code lost:
        r0.printStackTrace();
        r8 = -9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0154, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0155, code lost:
        r13 = r0;
        r13.printStackTrace();
        r14 = -8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x015e, code lost:
        if (r7 < r8) goto L_0x0160;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0160, code lost:
        r5 = android.os.SystemClock.elapsedRealtime();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0165, code lost:
        com.tencent.open.b.g.a().a(r3, r5, 0, 0, -8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0172, code lost:
        throw r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0173, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0174, code lost:
        r13 = r0;
        r13.printStackTrace();
        r14 = -7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x017d, code lost:
        if (r7 < r8) goto L_0x017f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x017f, code lost:
        r5 = android.os.SystemClock.elapsedRealtime();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0185, code lost:
        r11 = r2;
        r8 = r14;
        r14 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0194, code lost:
        com.tencent.open.b.g.a().a(r3, r5, 0, 0, -7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x01a2, code lost:
        throw r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0183, code lost:
        continue;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0183, code lost:
        continue;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x00f1 A[ExcHandler: IOException (r0v17 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:9:0x00c0] */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x010a A[ExcHandler: MalformedURLException (r0v15 'e' java.net.MalformedURLException A[CUSTOM_DECLARE]), Splitter:B:9:0x00c0] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0120 A[ExcHandler: NetworkUnavailableException (r0v14 'e' com.tencent.open.utils.HttpUtils$NetworkUnavailableException A[CUSTOM_DECLARE]), Splitter:B:9:0x00c0] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0125 A[ExcHandler: HttpStatusException (r0v7 'e' com.tencent.open.utils.HttpUtils$HttpStatusException A[CUSTOM_DECLARE]), Splitter:B:9:0x00c0] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0154 A[ExcHandler: SocketTimeoutException (r0v5 'e' java.net.SocketTimeoutException A[CUSTOM_DECLARE]), PHI: r2 
      PHI: (r2v12 org.json.JSONObject) = (r2v7 org.json.JSONObject), (r2v19 org.json.JSONObject), (r2v19 org.json.JSONObject), (r2v19 org.json.JSONObject) binds: [B:9:0x00c0, B:12:0x00cc, B:16:0x00d2, B:17:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:9:0x00c0] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0173 A[ExcHandler: ConnectTimeoutException (r0v3 'e' org.apache.http.conn.ConnectTimeoutException A[CUSTOM_DECLARE]), PHI: r2 
      PHI: (r2v10 org.json.JSONObject) = (r2v7 org.json.JSONObject), (r2v19 org.json.JSONObject), (r2v19 org.json.JSONObject), (r2v19 org.json.JSONObject) binds: [B:9:0x00c0, B:12:0x00cc, B:16:0x00d2, B:17:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:9:0x00c0] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.json.JSONObject request(com.tencent.connect.auth.QQToken r19, android.content.Context r20, java.lang.String r21, android.os.Bundle r22, java.lang.String r23) throws java.io.IOException, org.json.JSONException, com.tencent.open.utils.HttpUtils.NetworkUnavailableException, com.tencent.open.utils.HttpUtils.HttpStatusException {
        /*
            r1 = r20
            r0 = r21
            java.lang.String r2 = "openSDK_LOG.HttpUtils"
            java.lang.String r3 = "OpenApi request"
            com.tencent.open.a.f.a(r2, r3)
            java.lang.String r2 = r21.toLowerCase()
            java.lang.String r3 = "http"
            boolean r2 = r2.startsWith(r3)
            if (r2 != 0) goto L_0x004b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.tencent.open.utils.g r3 = com.tencent.open.utils.g.a()
            java.lang.String r4 = "https://openmobile.qq.com/"
            java.lang.String r3 = r3.a(r1, r4)
            r2.append(r3)
            r2.append(r0)
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            com.tencent.open.utils.g r5 = com.tencent.open.utils.g.a()
            java.lang.String r4 = r5.a(r1, r4)
            r3.append(r4)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            r4 = r2
            r2 = r19
            goto L_0x004f
        L_0x004b:
            r2 = r19
            r3 = r0
            r4 = r3
        L_0x004f:
            a(r1, r2, r0)
            r0 = 0
            long r5 = android.os.SystemClock.elapsedRealtime()
            r7 = 0
            java.lang.String r8 = r19.getAppId()
            com.tencent.open.utils.f r8 = com.tencent.open.utils.f.a(r1, r8)
            java.lang.String r9 = "Common_HttpRetryCount"
            int r8 = r8.a(r9)
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r10 = "config 1:Common_HttpRetryCount            config_value:"
            r9.append(r10)
            r9.append(r8)
            java.lang.String r10 = "   appid:"
            r9.append(r10)
            java.lang.String r11 = r19.getAppId()
            r9.append(r11)
            java.lang.String r11 = "     url:"
            r9.append(r11)
            r9.append(r3)
            java.lang.String r9 = r9.toString()
            java.lang.String r12 = "OpenConfig_test"
            com.tencent.open.a.f.a(r12, r9)
            if (r8 != 0) goto L_0x0093
            r8 = 3
        L_0x0093:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.String r13 = "config 1:Common_HttpRetryCount            result_value:"
            r9.append(r13)
            r9.append(r8)
            r9.append(r10)
            java.lang.String r2 = r19.getAppId()
            r9.append(r2)
            r9.append(r11)
            r9.append(r3)
            java.lang.String r2 = r9.toString()
            com.tencent.open.a.f.a(r12, r2)
            r2 = r0
        L_0x00b8:
            int r7 = r7 + 1
            r9 = 0
            r11 = r22
            r12 = r23
            com.tencent.open.utils.k$a r0 = openUrl2(r1, r4, r12, r11)     // Catch:{ ConnectTimeoutException -> 0x0173, SocketTimeoutException -> 0x0154, HttpStatusException -> 0x0125, NetworkUnavailableException -> 0x0120, MalformedURLException -> 0x010a, IOException -> 0x00f1, JSONException -> 0x00db }
            java.lang.String r13 = r0.a     // Catch:{ ConnectTimeoutException -> 0x0173, SocketTimeoutException -> 0x0154, HttpStatusException -> 0x0125, NetworkUnavailableException -> 0x0120, MalformedURLException -> 0x010a, IOException -> 0x00f1, JSONException -> 0x00db }
            org.json.JSONObject r2 = com.tencent.open.utils.k.d(r13)     // Catch:{ ConnectTimeoutException -> 0x0173, SocketTimeoutException -> 0x0154, HttpStatusException -> 0x0125, NetworkUnavailableException -> 0x0120, MalformedURLException -> 0x010a, IOException -> 0x00f1, JSONException -> 0x00db }
            java.lang.String r13 = "ret"
            int r13 = r2.getInt(r13)     // Catch:{ JSONException -> 0x00d1, ConnectTimeoutException -> 0x0173, SocketTimeoutException -> 0x0154, HttpStatusException -> 0x0125, NetworkUnavailableException -> 0x0120, MalformedURLException -> 0x010a, IOException -> 0x00f1 }
            goto L_0x00d2
        L_0x00d1:
            r13 = -4
        L_0x00d2:
            long r14 = r0.b     // Catch:{ ConnectTimeoutException -> 0x0173, SocketTimeoutException -> 0x0154, HttpStatusException -> 0x0125, NetworkUnavailableException -> 0x0120, MalformedURLException -> 0x010a, IOException -> 0x00f1, JSONException -> 0x00db }
            long r0 = r0.c     // Catch:{ ConnectTimeoutException -> 0x0173, SocketTimeoutException -> 0x0154, HttpStatusException -> 0x0125, NetworkUnavailableException -> 0x0120, MalformedURLException -> 0x010a, IOException -> 0x00f1, JSONException -> 0x00db }
            r9 = r0
            r11 = r2
            r8 = r13
            goto L_0x0188
        L_0x00db:
            r0 = move-exception
            r9 = r0
            r9.printStackTrace()
            r8 = -4
            r10 = 0
            r12 = 0
            com.tencent.open.b.g r0 = com.tencent.open.b.g.a()
            r1 = r3
            r2 = r5
            r4 = r10
            r6 = r12
            r0.a(r1, r2, r4, r6, r8)
            throw r9
        L_0x00f1:
            r0 = move-exception
            r9 = r0
            r9.printStackTrace()
            int r8 = getErrorCodeFromException(r9)
            r10 = 0
            r12 = 0
            com.tencent.open.b.g r0 = com.tencent.open.b.g.a()
            r1 = r3
            r2 = r5
            r4 = r10
            r6 = r12
            r0.a(r1, r2, r4, r6, r8)
            throw r9
        L_0x010a:
            r0 = move-exception
            r9 = r0
            r9.printStackTrace()
            r8 = -3
            r10 = 0
            r12 = 0
            com.tencent.open.b.g r0 = com.tencent.open.b.g.a()
            r1 = r3
            r2 = r5
            r4 = r10
            r6 = r12
            r0.a(r1, r2, r4, r6, r8)
            throw r9
        L_0x0120:
            r0 = move-exception
            r0.printStackTrace()
            throw r0
        L_0x0125:
            r0 = move-exception
            r9 = r0
            r9.printStackTrace()
            java.lang.String r0 = r9.getMessage()
            java.lang.String r1 = "http status code error:"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.replace(r1, r2)     // Catch:{ Exception -> 0x013c }
            int r0 = java.lang.Integer.parseInt(r0)     // Catch:{ Exception -> 0x013c }
            r8 = r0
            goto L_0x0144
        L_0x013c:
            r0 = move-exception
            r0.printStackTrace()
            r0 = -9
            r8 = -9
        L_0x0144:
            r10 = 0
            r12 = 0
            com.tencent.open.b.g r0 = com.tencent.open.b.g.a()
            r1 = r3
            r2 = r5
            r4 = r10
            r6 = r12
            r0.a(r1, r2, r4, r6, r8)
            throw r9
        L_0x0154:
            r0 = move-exception
            r13 = r0
            r13.printStackTrace()
            r14 = -8
            r15 = 0
            r17 = 0
            if (r7 >= r8) goto L_0x0165
            long r5 = android.os.SystemClock.elapsedRealtime()
            goto L_0x0183
        L_0x0165:
            com.tencent.open.b.g r0 = com.tencent.open.b.g.a()
            r1 = r3
            r2 = r5
            r4 = r15
            r6 = r17
            r8 = r14
            r0.a(r1, r2, r4, r6, r8)
            throw r13
        L_0x0173:
            r0 = move-exception
            r13 = r0
            r13.printStackTrace()
            r14 = -7
            r15 = 0
            r17 = 0
            if (r7 >= r8) goto L_0x0194
            long r5 = android.os.SystemClock.elapsedRealtime()
        L_0x0183:
            if (r7 < r8) goto L_0x00b8
            r11 = r2
            r8 = r14
            r14 = r9
        L_0x0188:
            com.tencent.open.b.g r0 = com.tencent.open.b.g.a()
            r1 = r3
            r2 = r5
            r4 = r14
            r6 = r9
            r0.a(r1, r2, r4, r6, r8)
            return r11
        L_0x0194:
            com.tencent.open.b.g r0 = com.tencent.open.b.g.a()
            r1 = r3
            r2 = r5
            r4 = r15
            r6 = r17
            r8 = r14
            r0.a(r1, r2, r4, r6, r8)
            goto L_0x01a3
        L_0x01a2:
            throw r13
        L_0x01a3:
            goto L_0x01a2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.HttpUtils.request(com.tencent.connect.auth.QQToken, android.content.Context, java.lang.String, android.os.Bundle, java.lang.String):org.json.JSONObject");
    }

    public static void requestAsync(QQToken qQToken, Context context, String str, Bundle bundle, String str2, IRequestListener iRequestListener) {
        f.a("openSDK_LOG.HttpUtils", "OpenApi requestAsync");
        final QQToken qQToken2 = qQToken;
        final Context context2 = context;
        final String str3 = str;
        final Bundle bundle2 = bundle;
        final String str4 = str2;
        final IRequestListener iRequestListener2 = iRequestListener;
        AnonymousClass1 r2 = new Thread() {
            public void run() {
                String str = "openSDK_LOG.HttpUtils";
                try {
                    JSONObject request = HttpUtils.request(qQToken2, context2, str3, bundle2, str4);
                    if (iRequestListener2 != null) {
                        iRequestListener2.onComplete(request);
                        f.b(str, "OpenApi onComplete");
                    }
                } catch (MalformedURLException e2) {
                    IRequestListener iRequestListener = iRequestListener2;
                    if (iRequestListener != null) {
                        iRequestListener.onMalformedURLException(e2);
                        f.b(str, "OpenApi requestAsync MalformedURLException", e2);
                    }
                } catch (ConnectTimeoutException e3) {
                    IRequestListener iRequestListener2 = iRequestListener2;
                    if (iRequestListener2 != null) {
                        iRequestListener2.onConnectTimeoutException(e3);
                        f.b(str, "OpenApi requestAsync onConnectTimeoutException", e3);
                    }
                } catch (SocketTimeoutException e4) {
                    IRequestListener iRequestListener3 = iRequestListener2;
                    if (iRequestListener3 != null) {
                        iRequestListener3.onSocketTimeoutException(e4);
                        f.b(str, "OpenApi requestAsync onSocketTimeoutException", e4);
                    }
                } catch (NetworkUnavailableException e5) {
                    IRequestListener iRequestListener4 = iRequestListener2;
                    if (iRequestListener4 != null) {
                        iRequestListener4.onNetworkUnavailableException(e5);
                        f.b(str, "OpenApi requestAsync onNetworkUnavailableException", e5);
                    }
                } catch (HttpStatusException e6) {
                    IRequestListener iRequestListener5 = iRequestListener2;
                    if (iRequestListener5 != null) {
                        iRequestListener5.onHttpStatusException(e6);
                        f.b(str, "OpenApi requestAsync onHttpStatusException", e6);
                    }
                } catch (IOException e7) {
                    IRequestListener iRequestListener6 = iRequestListener2;
                    if (iRequestListener6 != null) {
                        iRequestListener6.onIOException(e7);
                        f.b(str, "OpenApi requestAsync IOException", e7);
                    }
                } catch (JSONException e8) {
                    IRequestListener iRequestListener7 = iRequestListener2;
                    if (iRequestListener7 != null) {
                        iRequestListener7.onJSONException(e8);
                        f.b(str, "OpenApi requestAsync JSONException", e8);
                    }
                } catch (Exception e9) {
                    IRequestListener iRequestListener8 = iRequestListener2;
                    if (iRequestListener8 != null) {
                        iRequestListener8.onUnknowException(e9);
                        f.b(str, "OpenApi requestAsync onUnknowException", e9);
                    }
                }
            }
        };
        r2.start();
    }

    private static void a(Context context, QQToken qQToken, String str) {
        if (str.indexOf("add_share") > -1 || str.indexOf("upload_pic") > -1 || str.indexOf("add_topic") > -1 || str.indexOf("set_user_face") > -1 || str.indexOf("add_t") > -1 || str.indexOf("add_pic_t") > -1 || str.indexOf("add_pic_url") > -1 || str.indexOf("add_video") > -1) {
            com.tencent.connect.a.a.a(context, qQToken, "requireApi", str);
        }
    }

    public static int getErrorCodeFromException(IOException iOException) {
        if (iOException instanceof CharConversionException) {
            return -20;
        }
        if (iOException instanceof MalformedInputException) {
            return -21;
        }
        if (iOException instanceof UnmappableCharacterException) {
            return -22;
        }
        if (iOException instanceof HttpResponseException) {
            return -23;
        }
        if (iOException instanceof ClosedChannelException) {
            return -24;
        }
        if (iOException instanceof ConnectionClosedException) {
            return -25;
        }
        if (iOException instanceof EOFException) {
            return -26;
        }
        if (iOException instanceof FileLockInterruptionException) {
            return -27;
        }
        if (iOException instanceof FileNotFoundException) {
            return -28;
        }
        if (iOException instanceof HttpRetryException) {
            return -29;
        }
        if (iOException instanceof ConnectTimeoutException) {
            return -7;
        }
        if (iOException instanceof SocketTimeoutException) {
            return -8;
        }
        if (iOException instanceof InvalidPropertiesFormatException) {
            return -30;
        }
        if (iOException instanceof MalformedChunkCodingException) {
            return -31;
        }
        if (iOException instanceof MalformedURLException) {
            return -3;
        }
        if (iOException instanceof NoHttpResponseException) {
            return -32;
        }
        if (iOException instanceof InvalidClassException) {
            return -33;
        }
        if (iOException instanceof InvalidObjectException) {
            return -34;
        }
        if (iOException instanceof NotActiveException) {
            return -35;
        }
        if (iOException instanceof NotSerializableException) {
            return -36;
        }
        if (iOException instanceof OptionalDataException) {
            return -37;
        }
        if (iOException instanceof StreamCorruptedException) {
            return -38;
        }
        if (iOException instanceof WriteAbortedException) {
            return -39;
        }
        if (iOException instanceof ProtocolException) {
            return -40;
        }
        if (iOException instanceof SSLHandshakeException) {
            return -41;
        }
        if (iOException instanceof SSLKeyException) {
            return -42;
        }
        if (iOException instanceof SSLPeerUnverifiedException) {
            return -43;
        }
        if (iOException instanceof SSLProtocolException) {
            return -44;
        }
        if (iOException instanceof BindException) {
            return -45;
        }
        if (iOException instanceof ConnectException) {
            return -46;
        }
        if (iOException instanceof NoRouteToHostException) {
            return -47;
        }
        if (iOException instanceof PortUnreachableException) {
            return -48;
        }
        if (iOException instanceof SyncFailedException) {
            return -49;
        }
        if (iOException instanceof UTFDataFormatException) {
            return -50;
        }
        if (iOException instanceof UnknownHostException) {
            return -51;
        }
        if (iOException instanceof UnknownServiceException) {
            return -52;
        }
        if (iOException instanceof UnsupportedEncodingException) {
            return -53;
        }
        return iOException instanceof ZipException ? -54 : -2;
    }

    public static com.tencent.open.utils.k.a openUrl2(Context context, String str, String str2, Bundle bundle) throws MalformedURLException, IOException, NetworkUnavailableException, HttpStatusException {
        Bundle bundle2;
        String str3;
        if (context != null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                    throw new NetworkUnavailableException(NetworkUnavailableException.ERROR_INFO);
                }
            }
        }
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        String str4 = "appid_for_getting_config";
        String string = bundle2.getString(str4);
        bundle2.remove(str4);
        HttpClient httpClient = getHttpClient(context, string, str);
        HttpGet httpGet = null;
        int i = 0;
        String str5 = "gzip";
        String str6 = "Accept-Encoding";
        int i2 = -1;
        if (str2.equals("GET")) {
            String encodeUrl = encodeUrl(bundle2);
            i = 0 + encodeUrl.length();
            StringBuilder sb = new StringBuilder();
            sb.append("-->openUrl2 before url =");
            sb.append(str);
            String str7 = "openSDK_LOG.HttpUtils";
            f.a(str7, sb.toString());
            String str8 = "?";
            if (str.indexOf(str8) == -1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append(str8);
                str3 = sb2.toString();
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(str);
                sb3.append("&");
                str3 = sb3.toString();
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append("-->openUrl2 encodedParam =");
            sb4.append(encodeUrl);
            sb4.append(" -- url = ");
            sb4.append(str3);
            f.a(str7, sb4.toString());
            StringBuilder sb5 = new StringBuilder();
            sb5.append(str3);
            sb5.append(encodeUrl);
            httpGet = new HttpGet(sb5.toString());
            httpGet.addHeader(str6, str5);
        } else if (str2.equals("POST")) {
            httpGet = new HttpPost(str);
            httpGet.addHeader(str6, str5);
            Bundle bundle3 = new Bundle();
            for (String str9 : bundle2.keySet()) {
                Object obj = bundle2.get(str9);
                if (obj instanceof byte[]) {
                    bundle3.putByteArray(str9, (byte[]) obj);
                }
            }
            String str10 = Param.METHOD;
            if (!bundle2.containsKey(str10)) {
                bundle2.putString(str10, str2);
            }
            httpGet.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
            httpGet.setHeader(HttpHeaders.CONNECTION, HttpHeaders.KEEP_ALIVE);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(k.i("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
            byteArrayOutputStream.write(k.i(encodePostBody(bundle2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f")));
            if (!bundle3.isEmpty()) {
                int size = bundle3.size();
                String str11 = "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n";
                byteArrayOutputStream.write(k.i(str11));
                for (String str12 : bundle3.keySet()) {
                    i2++;
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("Content-Disposition: form-data; name=\"");
                    sb6.append(str12);
                    sb6.append("\"; filename=\"");
                    sb6.append(str12);
                    sb6.append("\"");
                    sb6.append("\r\n");
                    byteArrayOutputStream.write(k.i(sb6.toString()));
                    byteArrayOutputStream.write(k.i("Content-Type: content/unknown\r\n\r\n"));
                    byte[] byteArray = bundle3.getByteArray(str12);
                    if (byteArray != null) {
                        byteArrayOutputStream.write(byteArray);
                    }
                    if (i2 < size - 1) {
                        byteArrayOutputStream.write(k.i(str11));
                    }
                }
            }
            byteArrayOutputStream.write(k.i("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"));
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            i = 0 + byteArray2.length;
            byteArrayOutputStream.close();
            httpGet.setEntity(new ByteArrayEntity(byteArray2));
        }
        HttpResponse execute = httpClient.execute(httpGet);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 200) {
            return new com.tencent.open.utils.k.a(a(execute), i);
        }
        StringBuilder sb7 = new StringBuilder();
        sb7.append(HttpStatusException.ERROR_INFO);
        sb7.append(statusCode);
        throw new HttpStatusException(sb7.toString());
    }

    private static String a(HttpResponse httpResponse) throws IllegalStateException, IOException {
        InputStream content = httpResponse.getEntity().getContent();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Header firstHeader = httpResponse.getFirstHeader("Content-Encoding");
        InputStream gZIPInputStream = (firstHeader == null || firstHeader.getValue().toLowerCase().indexOf("gzip") <= -1) ? content : new GZIPInputStream(content);
        byte[] bArr = new byte[512];
        while (true) {
            int read = gZIPInputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                String str = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                gZIPInputStream.close();
                return str;
            }
        }
    }

    public static HttpClient getHttpClient(Context context, String str, String str2) {
        int i;
        String str3 = "https";
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        try {
            if (VERSION.SDK_INT >= 23) {
                SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
                socketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                schemeRegistry.register(new Scheme(str3, socketFactory, WebSocket.DEFAULT_WSS_PORT));
            } else {
                schemeRegistry.register(new Scheme(str3, new j(), WebSocket.DEFAULT_WSS_PORT));
            }
        } catch (Exception unused) {
            schemeRegistry.register(new Scheme(str3, SSLSocketFactory.getSocketFactory(), WebSocket.DEFAULT_WSS_PORT));
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        f fVar = null;
        if (context != null) {
            fVar = f.a(context, str);
        }
        int i2 = 0;
        if (fVar != null) {
            i2 = fVar.a("Common_HttpConnectionTimeout");
            i = fVar.a("Common_SocketConnectionTimeout");
        } else {
            i = 0;
        }
        if (i2 == 0) {
            i2 = 15000;
        }
        if (i == 0) {
            i = AsyncHttpRequest.DEFAULT_TIMEOUT;
        }
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, i2);
        HttpConnectionParams.setSoTimeout(basicHttpParams, i);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        StringBuilder sb = new StringBuilder();
        sb.append("AndroidSDK_");
        sb.append(VERSION.SDK);
        String str4 = EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR;
        sb.append(str4);
        sb.append(Build.DEVICE);
        sb.append(str4);
        sb.append(VERSION.RELEASE);
        HttpProtocolParams.setUserAgent(basicHttpParams, sb.toString());
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        a proxy = getProxy(context);
        if (proxy != null) {
            defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(proxy.a, proxy.b));
        }
        return defaultHttpClient;
    }

    public static String encodeUrl(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if ((obj instanceof String) || (obj instanceof String[])) {
                String str2 = "=";
                String str3 = "&";
                if (obj instanceof String[]) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(str3);
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(URLEncoder.encode(str));
                    sb2.append(str2);
                    sb.append(sb2.toString());
                    String[] stringArray = bundle.getStringArray(str);
                    if (stringArray != null) {
                        for (int i = 0; i < stringArray.length; i++) {
                            if (i == 0) {
                                sb.append(URLEncoder.encode(stringArray[i]));
                            } else {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(",");
                                sb3.append(stringArray[i]);
                                sb.append(URLEncoder.encode(sb3.toString()));
                            }
                        }
                    }
                } else {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(str3);
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(URLEncoder.encode(str));
                    sb4.append(str2);
                    sb4.append(URLEncoder.encode(bundle.getString(str)));
                    sb.append(sb4.toString());
                }
            }
        }
        return sb.toString();
    }

    public static String encodePostBody(Bundle bundle, String str) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = -1;
        int size = bundle.size();
        for (String str2 : bundle.keySet()) {
            i++;
            Object obj = bundle.get(str2);
            if (obj instanceof String) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Content-Disposition: form-data; name=\"");
                sb2.append(str2);
                sb2.append("\"");
                String str3 = "\r\n";
                sb2.append(str3);
                sb2.append(str3);
                sb2.append((String) obj);
                sb.append(sb2.toString());
                if (i < size - 1) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("\r\n--");
                    sb3.append(str);
                    sb3.append(str3);
                    sb.append(sb3.toString());
                }
            }
        }
        return sb.toString();
    }

    public static a getProxy(Context context) {
        if (context == null) {
            return null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return null;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.getType() == 0) {
            String b = b(context);
            int a2 = a(context);
            if (!TextUtils.isEmpty(b) && a2 >= 0) {
                return new a(b, a2);
            }
        }
        return null;
    }

    private static int a(Context context) {
        if (VERSION.SDK_INT >= 11) {
            String property = System.getProperty("http.proxyPort");
            if (!TextUtils.isEmpty(property)) {
                try {
                    return Integer.parseInt(property);
                } catch (NumberFormatException unused) {
                }
            }
            return -1;
        } else if (context == null) {
            return Proxy.getDefaultPort();
        } else {
            int port = Proxy.getPort(context);
            if (port < 0) {
                return Proxy.getDefaultPort();
            }
            return port;
        }
    }

    private static String b(Context context) {
        if (VERSION.SDK_INT >= 11) {
            return System.getProperty("http.proxyHost");
        }
        if (context == null) {
            return Proxy.getDefaultHost();
        }
        String host = Proxy.getHost(context);
        if (TextUtils.isEmpty(host)) {
            return Proxy.getDefaultHost();
        }
        return host;
    }
}
