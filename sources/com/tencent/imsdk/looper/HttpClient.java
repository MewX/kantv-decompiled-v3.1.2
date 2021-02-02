package com.tencent.imsdk.looper;

import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class HttpClient {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    public static final int HTTP_ACTION_REQUEST = 0;
    public static final int HTTP_ACTION_RESPONSE = 1;
    private static final long KEEP_ALIVE = 5;
    private static final int MAX_POOL_SIZE;
    /* access modifiers changed from: private */
    public static final String TAG = "HttpClient";
    /* access modifiers changed from: private */
    public static HostnameVerifier mHostnameVerifier = new HostnameVerifier() {
        public boolean verify(String str, SSLSession sSLSession) {
            return str.contains("cloud") || str.contains("tim");
        }
    };
    private static final Executor mThreadPoolExecutor;
    /* access modifiers changed from: private */
    public static TrustManager[] mTrustManagers = {new X509TrustManager() {
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }

        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            try {
                x509CertificateArr[0].checkValidity();
            } catch (CertificateExpiredException e) {
                e.printStackTrace();
            } catch (CertificateNotYetValidException e2) {
                e2.printStackTrace();
            }
        }

        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            try {
                x509CertificateArr[0].checkValidity();
            } catch (CertificateExpiredException e) {
                e.printStackTrace();
            } catch (CertificateNotYetValidException e2) {
                e2.printStackTrace();
            }
        }
    }};

    public interface HttpRequestListener {
        void onCompleted(int i, Map<String, String> map, byte[] bArr);

        void onProgress(int i, int i2, int i3);
    }

    /* access modifiers changed from: private */
    public static native void nativeProgressCallback(int i, int i2, int i3, long j);

    /* access modifiers changed from: private */
    public static native void nativeResponseCallback(int i, String[] strArr, String[] strArr2, byte[] bArr, long j, long j2);

    static {
        int i = CPU_COUNT;
        CORE_POOL_SIZE = i + 1;
        MAX_POOL_SIZE = (i * 2) + 1;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(CORE_POOL_SIZE, MAX_POOL_SIZE, 5, TimeUnit.SECONDS, new LinkedBlockingQueue());
        mThreadPoolExecutor = threadPoolExecutor;
    }

    private static void httpRequest(String str, String str2, Map<String, String> map, byte[] bArr, String str3, String str4, HttpRequestListener httpRequestListener, String str5, int i, int i2, int i3) {
        final String str6 = str5;
        final int i4 = i;
        final String str7 = str2;
        final String str8 = str;
        final int i5 = i2;
        final int i6 = i3;
        final Map<String, String> map2 = map;
        final byte[] bArr2 = bArr;
        final String str9 = str3;
        final HttpRequestListener httpRequestListener2 = httpRequestListener;
        final String str10 = str4;
        AnonymousClass3 r0 = new Runnable() {
            /* JADX WARNING: type inference failed for: r5v0 */
            /* JADX WARNING: type inference failed for: r5v1, types: [java.io.InputStream] */
            /* JADX WARNING: type inference failed for: r5v2, types: [java.io.InputStream] */
            /* JADX WARNING: type inference failed for: r5v3, types: [java.io.InputStream] */
            /* JADX WARNING: type inference failed for: r5v4 */
            /* JADX WARNING: type inference failed for: r5v5, types: [byte[]] */
            /* JADX WARNING: type inference failed for: r4v16, types: [java.io.InputStream] */
            /* JADX WARNING: type inference failed for: r4v17 */
            /* JADX WARNING: type inference failed for: r4v18, types: [java.io.BufferedInputStream, java.io.InputStream] */
            /* JADX WARNING: type inference failed for: r0v38, types: [byte[]] */
            /* JADX WARNING: type inference failed for: r0v39 */
            /* JADX WARNING: type inference failed for: r5v6 */
            /* JADX WARNING: type inference failed for: r0v40, types: [byte[]] */
            /* JADX WARNING: type inference failed for: r5v7 */
            /* JADX WARNING: type inference failed for: r5v8 */
            /* JADX WARNING: type inference failed for: r5v9 */
            /* JADX WARNING: type inference failed for: r5v10 */
            /* JADX WARNING: type inference failed for: r5v11 */
            /* JADX WARNING: type inference failed for: r5v12 */
            /* JADX WARNING: type inference failed for: r5v13 */
            /* JADX WARNING: type inference failed for: r5v14 */
            /* JADX WARNING: type inference failed for: r5v15 */
            /* JADX WARNING: type inference failed for: r5v16 */
            /* JADX WARNING: type inference failed for: r5v17 */
            /* JADX WARNING: type inference failed for: r5v18 */
            /* JADX WARNING: type inference failed for: r5v19 */
            /* JADX WARNING: type inference failed for: r5v20 */
            /* JADX WARNING: type inference failed for: r5v21 */
            /* JADX WARNING: type inference failed for: r5v22 */
            /* JADX WARNING: type inference failed for: r5v23 */
            /* JADX WARNING: type inference failed for: r5v24 */
            /* JADX WARNING: type inference failed for: r4v23 */
            /* JADX WARNING: type inference failed for: r0v60 */
            /* JADX WARNING: type inference failed for: r0v61 */
            /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r5v4
              assigns: []
              uses: []
              mth insns count: 311
            	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
            	at java.util.ArrayList.forEach(ArrayList.java:1257)
            	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
            	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
            	at java.util.ArrayList.forEach(ArrayList.java:1257)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
            	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
            	at java.util.ArrayList.forEach(ArrayList.java:1257)
            	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
            	at jadx.core.ProcessClass.process(ProcessClass.java:30)
            	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
            	at jadx.api.JavaClass.decompile(JavaClass.java:62)
            	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
             */
            /* JADX WARNING: Removed duplicated region for block: B:102:0x01c0  */
            /* JADX WARNING: Removed duplicated region for block: B:133:0x0220 A[SYNTHETIC, Splitter:B:133:0x0220] */
            /* JADX WARNING: Removed duplicated region for block: B:138:0x022b  */
            /* JADX WARNING: Removed duplicated region for block: B:141:0x0232  */
            /* JADX WARNING: Removed duplicated region for block: B:152:0x025f A[SYNTHETIC, Splitter:B:152:0x025f] */
            /* JADX WARNING: Removed duplicated region for block: B:157:0x026a  */
            /* JADX WARNING: Removed duplicated region for block: B:160:0x0271  */
            /* JADX WARNING: Removed duplicated region for block: B:164:0x027b A[SYNTHETIC, Splitter:B:164:0x027b] */
            /* JADX WARNING: Removed duplicated region for block: B:169:0x0286  */
            /* JADX WARNING: Removed duplicated region for block: B:172:0x028d  */
            /* JADX WARNING: Removed duplicated region for block: B:176:0x0102 A[EDGE_INSN: B:176:0x0102->B:46:0x0102 ?: BREAK  
            EDGE_INSN: B:176:0x0102->B:46:0x0102 ?: BREAK  , SYNTHETIC] */
            /* JADX WARNING: Removed duplicated region for block: B:185:? A[RETURN, SYNTHETIC] */
            /* JADX WARNING: Removed duplicated region for block: B:187:? A[RETURN, SYNTHETIC] */
            /* JADX WARNING: Removed duplicated region for block: B:189:? A[RETURN, SYNTHETIC] */
            /* JADX WARNING: Removed duplicated region for block: B:41:0x00e3 A[Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }] */
            /* JADX WARNING: Removed duplicated region for block: B:42:0x00eb A[Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }] */
            /* JADX WARNING: Removed duplicated region for block: B:47:0x0106 A[Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }] */
            /* JADX WARNING: Removed duplicated region for block: B:54:0x0126 A[Catch:{ UnknownHostException -> 0x01da, Exception -> 0x01d6, all -> 0x01d0 }] */
            /* JADX WARNING: Removed duplicated region for block: B:59:0x013c A[Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }] */
            /* JADX WARNING: Removed duplicated region for block: B:62:0x0143 A[Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }] */
            /* JADX WARNING: Removed duplicated region for block: B:70:0x0155 A[Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }] */
            /* JADX WARNING: Removed duplicated region for block: B:92:0x01ab  */
            /* JADX WARNING: Removed duplicated region for block: B:94:0x01ae A[SYNTHETIC, Splitter:B:94:0x01ae] */
            /* JADX WARNING: Removed duplicated region for block: B:99:0x01b9  */
            /* JADX WARNING: Unknown variable types count: 11 */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r17 = this;
                    r1 = r17
                    java.lang.String r2 = "http request failed."
                    r3 = -1
                    r4 = 200(0xc8, float:2.8E-43)
                    r5 = 0
                    java.lang.String r0 = r1     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    boolean r0 = r0.isEmpty()     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    if (r0 != 0) goto L_0x0034
                    int r0 = r2     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    if (r0 == 0) goto L_0x0034
                    java.net.Proxy r0 = new java.net.Proxy     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.Proxy$Type r6 = java.net.Proxy.Type.HTTP     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.InetSocketAddress r7 = new java.net.InetSocketAddress     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.lang.String r8 = r1     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    int r9 = r2     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    r7.<init>(r8, r9)     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    r0.<init>(r6, r7)     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.URL r6 = new java.net.URL     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.lang.String r7 = r3     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    r6.<init>(r7)     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.URLConnection r0 = r6.openConnection(r0)     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    goto L_0x0043
                L_0x0034:
                    java.net.URL r0 = new java.net.URL     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.lang.String r6 = r3     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    r0.<init>(r6)     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.URLConnection r0 = r0.openConnection()     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                    java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ UnknownHostException -> 0x023d, Exception -> 0x01f6, all -> 0x01ed }
                L_0x0043:
                    r6 = r0
                    java.lang.String r0 = r3     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.lang.String r7 = "https"
                    boolean r0 = r0.startsWith(r7)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r0 == 0) goto L_0x006c
                    java.lang.String r0 = "TLS"
                    javax.net.ssl.SSLContext r0 = javax.net.ssl.SSLContext.getInstance(r0)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    javax.net.ssl.TrustManager[] r7 = com.tencent.imsdk.looper.HttpClient.mTrustManagers     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r0.init(r5, r7, r5)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r7 = r6
                    javax.net.ssl.HttpsURLConnection r7 = (javax.net.ssl.HttpsURLConnection) r7     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    javax.net.ssl.SSLSocketFactory r0 = r0.getSocketFactory()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r7.setSSLSocketFactory(r0)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    javax.net.ssl.HostnameVerifier r0 = com.tencent.imsdk.looper.HttpClient.mHostnameVerifier     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r7.setHostnameVerifier(r0)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                L_0x006c:
                    java.lang.String r0 = r4     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r6.setRequestMethod(r0)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    int r0 = r5     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r6.setConnectTimeout(r0)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    int r0 = r6     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r6.setReadTimeout(r0)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r0 = 0
                    r6.setUseCaches(r0)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r7 = 1
                    r6.setDoInput(r7)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.util.Map r8 = r7     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r8 == 0) goto L_0x00ad
                    java.util.Map r8 = r7     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.util.Set r8 = r8.entrySet()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.util.Iterator r8 = r8.iterator()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                L_0x0091:
                    boolean r9 = r8.hasNext()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r9 == 0) goto L_0x00ad
                    java.lang.Object r9 = r8.next()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.util.Map$Entry r9 = (java.util.Map.Entry) r9     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.lang.Object r10 = r9.getKey()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.lang.String r10 = (java.lang.String) r10     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.lang.Object r9 = r9.getValue()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.lang.String r9 = (java.lang.String) r9     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r6.setRequestProperty(r10, r9)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    goto L_0x0091
                L_0x00ad:
                    byte[] r8 = r8     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r8 == 0) goto L_0x00b8
                    byte[] r8 = r8     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    int r8 = r8.length     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r8 <= 0) goto L_0x00b8
                    r8 = 1
                    goto L_0x00b9
                L_0x00b8:
                    r8 = 0
                L_0x00b9:
                    java.lang.String r9 = r9     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r9 == 0) goto L_0x00c7
                    java.lang.String r9 = r9     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    int r9 = r9.length()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r9 == 0) goto L_0x00c7
                    r9 = 1
                    goto L_0x00c8
                L_0x00c7:
                    r9 = 0
                L_0x00c8:
                    if (r8 != 0) goto L_0x00cf
                    if (r9 == 0) goto L_0x00cd
                    goto L_0x00cf
                L_0x00cd:
                    r8 = 0
                    goto L_0x00d0
                L_0x00cf:
                    r8 = 1
                L_0x00d0:
                    java.lang.String r10 = r4     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.lang.String r11 = "GET"
                    boolean r10 = r10.equalsIgnoreCase(r11)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r11 = 4096(0x1000, float:5.74E-42)
                    if (r10 != 0) goto L_0x0118
                    if (r8 == 0) goto L_0x0118
                    r6.setDoOutput(r7)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r9 == 0) goto L_0x00eb
                    java.io.FileInputStream r8 = new java.io.FileInputStream     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.lang.String r9 = r9     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r8.<init>(r9)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    goto L_0x00f2
                L_0x00eb:
                    java.io.ByteArrayInputStream r8 = new java.io.ByteArrayInputStream     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    byte[] r9 = r8     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r8.<init>(r9)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                L_0x00f2:
                    int r9 = r8.available()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r6.setFixedLengthStreamingMode(r9)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    byte[] r10 = new byte[r11]     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r12 = 0
                L_0x00fc:
                    int r13 = r8.read(r10)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r13 >= 0) goto L_0x0106
                    r8.close()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    goto L_0x0118
                L_0x0106:
                    int r12 = r12 + r13
                    java.io.OutputStream r14 = r6.getOutputStream()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r14.write(r10, r0, r13)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r13 = r10     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    if (r13 == 0) goto L_0x00fc
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r13 = r10     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    r13.onProgress(r0, r12, r9)     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    goto L_0x00fc
                L_0x0118:
                    int r8 = r6.getResponseCode()     // Catch:{ UnknownHostException -> 0x01e9, Exception -> 0x01e5, all -> 0x01e0 }
                    java.util.Map r9 = r6.getHeaderFields()     // Catch:{ UnknownHostException -> 0x01da, Exception -> 0x01d6, all -> 0x01d0 }
                    int r9 = r9.size()     // Catch:{ UnknownHostException -> 0x01da, Exception -> 0x01d6, all -> 0x01d0 }
                    if (r9 <= 0) goto L_0x013c
                    java.util.HashMap r10 = new java.util.HashMap     // Catch:{ UnknownHostException -> 0x01da, Exception -> 0x01d6, all -> 0x01d0 }
                    r10.<init>()     // Catch:{ UnknownHostException -> 0x01da, Exception -> 0x01d6, all -> 0x01d0 }
                    r12 = 0
                L_0x012c:
                    if (r12 >= r9) goto L_0x013d
                    java.lang.String r13 = r6.getHeaderFieldKey(r12)     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    java.lang.String r14 = r6.getHeaderField(r12)     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    r10.put(r13, r14)     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    int r12 = r12 + 1
                    goto L_0x012c
                L_0x013c:
                    r10 = r5
                L_0x013d:
                    int r9 = r6.getContentLength()     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    if (r9 != r3) goto L_0x0144
                    r9 = 0
                L_0x0144:
                    java.lang.String r12 = r11     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    if (r12 == 0) goto L_0x0152
                    java.lang.String r12 = r11     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    int r12 = r12.length()     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    if (r12 == 0) goto L_0x0152
                    r12 = 1
                    goto L_0x0153
                L_0x0152:
                    r12 = 0
                L_0x0153:
                    if (r8 != r4) goto L_0x01ab
                    java.io.BufferedInputStream r4 = new java.io.BufferedInputStream     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    java.io.InputStream r13 = r6.getInputStream()     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    r4.<init>(r13)     // Catch:{ UnknownHostException -> 0x01cd, Exception -> 0x01ca, all -> 0x01c5 }
                    if (r12 == 0) goto L_0x0168
                    java.io.FileOutputStream r13 = new java.io.FileOutputStream     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    java.lang.String r14 = r11     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    r13.<init>(r14)     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    goto L_0x016d
                L_0x0168:
                    java.io.ByteArrayOutputStream r13 = new java.io.ByteArrayOutputStream     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    r13.<init>()     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                L_0x016d:
                    byte[] r11 = new byte[r11]     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    r14 = 0
                L_0x0170:
                    int r15 = r4.read(r11)     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    if (r15 >= 0) goto L_0x0188
                    if (r12 == 0) goto L_0x017c
                    byte[] r0 = new byte[r0]     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                L_0x017a:
                    r5 = r0
                    goto L_0x0184
                L_0x017c:
                    r0 = r13
                    java.io.ByteArrayOutputStream r0 = (java.io.ByteArrayOutputStream) r0     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    byte[] r0 = r0.toByteArray()     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    goto L_0x017a
                L_0x0184:
                    r13.close()     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    goto L_0x01ac
                L_0x0188:
                    int r14 = r14 + r15
                    r13.write(r11, r0, r15)     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r15 = r10     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    if (r15 == 0) goto L_0x0170
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r15 = r10     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    r15.onProgress(r7, r14, r9)     // Catch:{ UnknownHostException -> 0x01a7, Exception -> 0x019f, all -> 0x0196 }
                    goto L_0x0170
                L_0x0196:
                    r0 = move-exception
                    r2 = r0
                    r16 = r5
                    r5 = r4
                    r4 = r16
                    goto L_0x0279
                L_0x019f:
                    r0 = move-exception
                    r16 = r5
                    r5 = r4
                    r4 = r16
                    goto L_0x01fc
                L_0x01a7:
                    r0 = move-exception
                    r3 = r5
                    r5 = r4
                    goto L_0x01dd
                L_0x01ab:
                    r4 = r5
                L_0x01ac:
                    if (r4 == 0) goto L_0x01b7
                    r4.close()     // Catch:{ IOException -> 0x01b2 }
                    goto L_0x01b7
                L_0x01b2:
                    r0 = move-exception
                    r2 = r0
                    r2.printStackTrace()
                L_0x01b7:
                    if (r6 == 0) goto L_0x01bc
                    r6.disconnect()
                L_0x01bc:
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r0 = r10
                    if (r0 == 0) goto L_0x0274
                    r0.onCompleted(r8, r10, r5)
                    goto L_0x0274
                L_0x01c5:
                    r0 = move-exception
                    r2 = r0
                    r4 = r5
                    goto L_0x0279
                L_0x01ca:
                    r0 = move-exception
                    r4 = r5
                    goto L_0x01fc
                L_0x01cd:
                    r0 = move-exception
                    r3 = r5
                    goto L_0x01dd
                L_0x01d0:
                    r0 = move-exception
                    r2 = r0
                    r4 = r5
                    r10 = r4
                    goto L_0x0279
                L_0x01d6:
                    r0 = move-exception
                    r4 = r5
                    r10 = r4
                    goto L_0x01fc
                L_0x01da:
                    r0 = move-exception
                    r3 = r5
                    r10 = r3
                L_0x01dd:
                    r4 = r8
                    goto L_0x0241
                L_0x01e0:
                    r0 = move-exception
                    r2 = r0
                    r4 = r5
                    r10 = r4
                    goto L_0x01f2
                L_0x01e5:
                    r0 = move-exception
                    r4 = r5
                    r10 = r4
                    goto L_0x01fa
                L_0x01e9:
                    r0 = move-exception
                    r3 = r5
                    r10 = r3
                    goto L_0x0241
                L_0x01ed:
                    r0 = move-exception
                    r2 = r0
                    r4 = r5
                    r6 = r4
                    r10 = r6
                L_0x01f2:
                    r8 = 200(0xc8, float:2.8E-43)
                    goto L_0x0279
                L_0x01f6:
                    r0 = move-exception
                    r4 = r5
                    r6 = r4
                    r10 = r6
                L_0x01fa:
                    r8 = 200(0xc8, float:2.8E-43)
                L_0x01fc:
                    java.lang.String r7 = com.tencent.imsdk.looper.HttpClient.TAG     // Catch:{ all -> 0x023a }
                    java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x023a }
                    r9.<init>()     // Catch:{ all -> 0x023a }
                    r9.append(r2)     // Catch:{ all -> 0x023a }
                    java.lang.String r2 = r0.getLocalizedMessage()     // Catch:{ all -> 0x023a }
                    r9.append(r2)     // Catch:{ all -> 0x023a }
                    java.lang.String r2 = r9.toString()     // Catch:{ all -> 0x023a }
                    com.tencent.imsdk.log.QLog.e(r7, r2)     // Catch:{ all -> 0x023a }
                    java.lang.String r0 = android.util.Log.getStackTraceString(r0)     // Catch:{ all -> 0x0236 }
                    byte[] r2 = r0.getBytes()     // Catch:{ all -> 0x0236 }
                    if (r5 == 0) goto L_0x0229
                    r5.close()     // Catch:{ IOException -> 0x0224 }
                    goto L_0x0229
                L_0x0224:
                    r0 = move-exception
                    r4 = r0
                    r4.printStackTrace()
                L_0x0229:
                    if (r6 == 0) goto L_0x022e
                    r6.disconnect()
                L_0x022e:
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r0 = r10
                    if (r0 == 0) goto L_0x0274
                    r0.onCompleted(r3, r10, r2)
                    goto L_0x0274
                L_0x0236:
                    r0 = move-exception
                    r2 = r0
                    r8 = -1
                    goto L_0x0279
                L_0x023a:
                    r0 = move-exception
                    r2 = r0
                    goto L_0x0279
                L_0x023d:
                    r0 = move-exception
                    r3 = r5
                    r6 = r3
                    r10 = r6
                L_0x0241:
                    java.lang.String r7 = com.tencent.imsdk.looper.HttpClient.TAG     // Catch:{ all -> 0x0275 }
                    java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x0275 }
                    r8.<init>()     // Catch:{ all -> 0x0275 }
                    r8.append(r2)     // Catch:{ all -> 0x0275 }
                    java.lang.String r0 = r0.getLocalizedMessage()     // Catch:{ all -> 0x0275 }
                    r8.append(r0)     // Catch:{ all -> 0x0275 }
                    java.lang.String r0 = r8.toString()     // Catch:{ all -> 0x0275 }
                    com.tencent.imsdk.log.QLog.e(r7, r0)     // Catch:{ all -> 0x0275 }
                    r2 = 404(0x194, float:5.66E-43)
                    if (r5 == 0) goto L_0x0268
                    r5.close()     // Catch:{ IOException -> 0x0263 }
                    goto L_0x0268
                L_0x0263:
                    r0 = move-exception
                    r4 = r0
                    r4.printStackTrace()
                L_0x0268:
                    if (r6 == 0) goto L_0x026d
                    r6.disconnect()
                L_0x026d:
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r0 = r10
                    if (r0 == 0) goto L_0x0274
                    r0.onCompleted(r2, r10, r3)
                L_0x0274:
                    return
                L_0x0275:
                    r0 = move-exception
                    r2 = r0
                    r8 = r4
                    r4 = r3
                L_0x0279:
                    if (r5 == 0) goto L_0x0284
                    r5.close()     // Catch:{ IOException -> 0x027f }
                    goto L_0x0284
                L_0x027f:
                    r0 = move-exception
                    r3 = r0
                    r3.printStackTrace()
                L_0x0284:
                    if (r6 == 0) goto L_0x0289
                    r6.disconnect()
                L_0x0289:
                    com.tencent.imsdk.looper.HttpClient$HttpRequestListener r0 = r10
                    if (r0 == 0) goto L_0x0290
                    r0.onCompleted(r8, r10, r4)
                L_0x0290:
                    goto L_0x0292
                L_0x0291:
                    throw r2
                L_0x0292:
                    goto L_0x0291
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.imsdk.looper.HttpClient.AnonymousClass3.run():void");
            }
        };
        mThreadPoolExecutor.execute(r0);
    }

    private static void httpRequest(String str, String str2, String[] strArr, String[] strArr2, byte[] bArr, String str3, String str4, long j, long j2, String str5, int i, int i2, int i3) {
        HashMap hashMap;
        String[] strArr3 = strArr;
        String[] strArr4 = strArr2;
        if (strArr3 == null || strArr4 == null || strArr3.length != strArr4.length) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            for (int i4 = 0; i4 < strArr3.length; i4++) {
                hashMap.put(strArr3[i4], strArr4[i4]);
            }
        }
        Map map = hashMap;
        final long j3 = j;
        final long j4 = j2;
        httpRequest(str, str2, map, bArr, str3, str4, new HttpRequestListener() {
            public void onProgress(int i, int i2, int i3) {
                long j = j3;
                if (j != 0) {
                    HttpClient.nativeProgressCallback(i, i2, i3, j);
                }
            }

            public void onCompleted(int i, Map<String, String> map, byte[] bArr) {
                String[] strArr;
                String[] strArr2;
                if (j4 != 0) {
                    if (map != null) {
                        String[] strArr3 = new String[map.size()];
                        String[] strArr4 = new String[map.size()];
                        int i2 = 0;
                        for (Entry entry : map.entrySet()) {
                            strArr3[i2] = (String) entry.getKey();
                            strArr4[i2] = (String) entry.getValue();
                            i2++;
                        }
                        strArr2 = strArr3;
                        strArr = strArr4;
                    } else {
                        strArr2 = null;
                        strArr = null;
                    }
                    HttpClient.nativeResponseCallback(i, strArr2, strArr, bArr, j3, j4);
                }
            }
        }, str5, i, i2, i3);
    }
}
