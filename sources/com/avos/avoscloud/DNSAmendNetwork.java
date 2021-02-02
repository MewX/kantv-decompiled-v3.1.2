package com.avos.avoscloud;

import com.avos.avoscloud.LogUtil.avlog;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
import okhttp3.Dns;
import okhttp3.HttpUrl;
import okhttp3.HttpUrl.Builder;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class DNSAmendNetwork implements Dns {
    static final String AVOS_SERVER_HOST_ZONE = "avoscloud_server_host_zone";
    private static final int DNS_REQUEST_TIME_OUT = 2000;
    public static final String EXPIRE_TIME = ".expireTime";
    static final long TWENTY_MIN_IN_MILLS = 1200000;
    private static DNSAmendNetwork instance = new DNSAmendNetwork();

    private DNSAmendNetwork() {
    }

    public static DNSAmendNetwork getInstance() {
        return instance;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(7:10|11|(1:13)|14|(1:16)|17|18) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        r0 = getCacheDNSResult(r4);
        r1 = !com.avos.avoscloud.AVUtils.isBlankString(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002e, code lost:
        if (r1 == false) goto L_0x0030;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0030, code lost:
        r0 = getIPByHostSync(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0034, code lost:
        r2 = getIPAddress(r4, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0038, code lost:
        if (r1 == false) goto L_0x003a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003a, code lost:
        cacheDNS(r4, r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0041, code lost:
        return java.util.Arrays.asList(r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0047, code lost:
        throw new java.net.UnknownHostException();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0024 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<java.net.InetAddress> lookup(java.lang.String r4) throws java.net.UnknownHostException {
        /*
            r3 = this;
            android.content.Context r0 = com.avos.avoscloud.AVOSCloud.applicationContext
            java.lang.String r1 = "android.permission.INTERNET"
            boolean r0 = com.avos.avoscloud.AVUtils.checkPermission(r0, r1)
            if (r0 != 0) goto L_0x001b
            boolean r4 = com.avos.avoscloud.AVOSCloud.isDebugLogEnabled()
            if (r4 == 0) goto L_0x0015
            java.lang.String r4 = "Please add <uses-permission android:name=\"android.permission.INTERNET\"/> in your AndroidManifest file"
            com.avos.avoscloud.LogUtil.avlog.e(r4)
        L_0x0015:
            java.net.UnknownHostException r4 = new java.net.UnknownHostException
            r4.<init>()
            throw r4
        L_0x001b:
            java.net.InetAddress[] r0 = java.net.InetAddress.getAllByName(r4)     // Catch:{ UnknownHostException -> 0x0024 }
            java.util.List r4 = java.util.Arrays.asList(r0)     // Catch:{ UnknownHostException -> 0x0024 }
            return r4
        L_0x0024:
            java.lang.String r0 = r3.getCacheDNSResult(r4)     // Catch:{ Exception -> 0x0042 }
            boolean r1 = com.avos.avoscloud.AVUtils.isBlankString(r0)     // Catch:{ Exception -> 0x0042 }
            r1 = r1 ^ 1
            if (r1 != 0) goto L_0x0034
            java.lang.String r0 = getIPByHostSync(r4)     // Catch:{ Exception -> 0x0042 }
        L_0x0034:
            java.net.InetAddress[] r2 = getIPAddress(r4, r0)     // Catch:{ Exception -> 0x0042 }
            if (r1 != 0) goto L_0x003d
            r3.cacheDNS(r4, r0)     // Catch:{ Exception -> 0x0042 }
        L_0x003d:
            java.util.List r4 = java.util.Arrays.asList(r2)     // Catch:{ Exception -> 0x0042 }
            return r4
        L_0x0042:
            java.net.UnknownHostException r4 = new java.net.UnknownHostException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.DNSAmendNetwork.lookup(java.lang.String):java.util.List");
    }

    public static String getIPByHostSync(String str) throws Exception {
        String str2 = "";
        HttpUrl build = new Builder().scheme("http").host("119.29.29.29").addPathSegment("d").addQueryParameter("dn", str).build();
        OkHttpClient.Builder okHttpClientBuilder = AVHttpClient.clientInstance().getOkHttpClientBuilder();
        okHttpClientBuilder.connectTimeout(2000, TimeUnit.MILLISECONDS);
        okHttpClientBuilder.dns(Dns.SYSTEM);
        try {
            Response execute = okHttpClientBuilder.build().newCall(new Request.Builder().url(build).get().build()).execute();
            return (execute == null || !execute.isSuccessful()) ? str2 : execute.body().string();
        } catch (IOException e) {
            if (AVOSCloud.isDebugLogEnabled()) {
                avlog.e("getIPByHostSync error", e);
            }
            return str2;
        }
    }

    private void cacheDNS(String str, String str2) {
        AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
        String str3 = AVOS_SERVER_HOST_ZONE;
        sharedInstance.savePersistentSettingString(str3, str, str2);
        AVPersistenceUtils sharedInstance2 = AVPersistenceUtils.sharedInstance();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(EXPIRE_TIME);
        sharedInstance2.savePersistentSettingString(str3, sb.toString(), String.valueOf(System.currentTimeMillis() + TWENTY_MIN_IN_MILLS));
    }

    private String getCacheDNSResult(String str) {
        AVPersistenceUtils sharedInstance = AVPersistenceUtils.sharedInstance();
        String str2 = AVOS_SERVER_HOST_ZONE;
        String persistentSettingString = sharedInstance.getPersistentSettingString(str2, str, null);
        AVPersistenceUtils sharedInstance2 = AVPersistenceUtils.sharedInstance();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(EXPIRE_TIME);
        String persistentSettingString2 = sharedInstance2.getPersistentSettingString(str2, sb.toString(), "0");
        if (AVUtils.isBlankString(persistentSettingString) || System.currentTimeMillis() >= Long.parseLong(persistentSettingString2)) {
            return null;
        }
        return persistentSettingString;
    }

    private static InetAddress[] getIPAddress(String str, String str2) throws Exception {
        String[] split = str2.split(";");
        InetAddress[] inetAddressArr = new InetAddress[split.length];
        Constructor declaredConstructor = InetAddress.class.getDeclaredConstructor(new Class[]{Integer.TYPE, byte[].class, String.class});
        declaredConstructor.setAccessible(true);
        for (int i = 0; i < split.length; i++) {
            String[] split2 = split[i].split("\\.");
            if (split2.length == 4) {
                inetAddressArr[i] = (InetAddress) declaredConstructor.newInstance(new Object[]{Integer.valueOf(2), new byte[]{(byte) Integer.parseInt(split2[0]), (byte) Integer.parseInt(split2[1]), (byte) Integer.parseInt(split2[2]), (byte) Integer.parseInt(split2[3])}, str});
            }
        }
        return inetAddressArr;
    }
}
