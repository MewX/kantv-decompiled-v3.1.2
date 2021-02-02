package com.tencent.open.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import com.google.android.exoplayer2.C;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.f;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ProGuard */
public class k {
    private static String a = "";
    private static String b = "";
    private static String c = "";
    private static String d = "";
    private static int e = -1;
    private static String f = null;
    private static String g = "0123456789ABCDEF";

    /* compiled from: ProGuard */
    public static class a {
        public String a;
        public long b;
        public long c;

        public a(String str, int i) {
            this.a = str;
            this.b = (long) i;
            String str2 = this.a;
            if (str2 != null) {
                this.c = (long) str2.length();
            }
        }
    }

    private static char a(int i) {
        int i2 = i & 15;
        return (char) (i2 < 10 ? i2 + 48 : (i2 - 10) + 97);
    }

    public static Bundle a(String str) {
        Bundle bundle = new Bundle();
        if (str == null) {
            return bundle;
        }
        try {
            for (String split : str.split("&")) {
                String[] split2 = split.split("=");
                if (split2.length == 2) {
                    bundle.putString(URLDecoder.decode(split2[0]), URLDecoder.decode(split2[1]));
                }
            }
            return bundle;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:11:0x0034 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.json.JSONObject a(org.json.JSONObject r6, java.lang.String r7) {
        /*
            if (r6 != 0) goto L_0x0007
            org.json.JSONObject r6 = new org.json.JSONObject
            r6.<init>()
        L_0x0007:
            if (r7 == 0) goto L_0x0059
            java.lang.String r0 = "&"
            java.lang.String[] r7 = r7.split(r0)
            int r0 = r7.length
            r1 = 0
            r2 = 0
        L_0x0012:
            if (r2 >= r0) goto L_0x0059
            r3 = r7[r2]
            java.lang.String r4 = "="
            java.lang.String[] r3 = r3.split(r4)
            int r4 = r3.length
            r5 = 2
            if (r4 != r5) goto L_0x0056
            r4 = 1
            r5 = r3[r1]     // Catch:{ Exception -> 0x0034 }
            java.lang.String r5 = java.net.URLDecoder.decode(r5)     // Catch:{ Exception -> 0x0034 }
            r3[r1] = r5     // Catch:{ Exception -> 0x0034 }
            r5 = r3[r4]     // Catch:{ Exception -> 0x0034 }
            java.lang.String r5 = java.net.URLDecoder.decode(r5)     // Catch:{ Exception -> 0x0034 }
            r3[r4] = r5     // Catch:{ Exception -> 0x0034 }
            goto L_0x0034
        L_0x0032:
            r3 = move-exception
            goto L_0x003c
        L_0x0034:
            r5 = r3[r1]     // Catch:{ JSONException -> 0x0032 }
            r3 = r3[r4]     // Catch:{ JSONException -> 0x0032 }
            r6.put(r5, r3)     // Catch:{ JSONException -> 0x0032 }
            goto L_0x0056
        L_0x003c:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "decodeUrlToJson has exception: "
            r4.append(r5)
            java.lang.String r3 = r3.getMessage()
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.lang.String r4 = "openSDK_LOG.Util"
            com.tencent.open.a.f.e(r4, r3)
        L_0x0056:
            int r2 = r2 + 1
            goto L_0x0012
        L_0x0059:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.k.a(org.json.JSONObject, java.lang.String):org.json.JSONObject");
    }

    public static Bundle b(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            Bundle a2 = a(url.getQuery());
            a2.putAll(a(url.getRef()));
            return a2;
        } catch (MalformedURLException unused) {
            return new Bundle();
        }
    }

    public static JSONObject c(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            JSONObject a2 = a((JSONObject) null, url.getQuery());
            a(a2, url.getRef());
            return a2;
        } catch (MalformedURLException unused) {
            return new JSONObject();
        }
    }

    public static JSONObject d(String str) throws JSONException {
        if (str.equals("false")) {
            str = "{value : false}";
        }
        if (str.equals("true")) {
            str = "{value : true}";
        }
        if (str.contains("allback(")) {
            str = str.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
        }
        if (str.contains("online[0]=")) {
            StringBuilder sb = new StringBuilder();
            sb.append("{online:");
            sb.append(str.charAt(str.length() - 2));
            sb.append("}");
            str = sb.toString();
        }
        return new JSONObject(str);
    }

    public static String a() {
        try {
            Enumeration networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces != null && networkInterfaces.hasMoreElements()) {
                Enumeration inetAddresses = ((NetworkInterface) networkInterfaces.nextElement()).getInetAddresses();
                while (true) {
                    if (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddress = (InetAddress) inetAddresses.nextElement();
                        if (!inetAddress.isLoopbackAddress()) {
                            return inetAddress.getHostAddress().toString();
                        }
                    }
                }
            }
        } catch (SocketException e2) {
            f.a("openSDK_LOG.Util", "getUserIp SocketException ", e2);
        }
        return "";
    }

    public static boolean e(String str) {
        return str == null || str.length() == 0;
    }

    private static boolean f(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
            String str = packageInfo.versionName;
            if (h.a(str, "4.3") >= 0 && !str.startsWith("4.4")) {
                Signature[] signatureArr = packageInfo.signatures;
                if (signatureArr != null) {
                    try {
                        MessageDigest instance = MessageDigest.getInstance("MD5");
                        instance.update(signatureArr[0].toByteArray());
                        String a2 = a(instance.digest());
                        instance.reset();
                        if (a2.equals("d8391a394d4a179e6fe7bdb8a301258b")) {
                            return true;
                        }
                    } catch (NoSuchAlgorithmException e2) {
                        String str2 = "openSDK_LOG.Util";
                        StringBuilder sb = new StringBuilder();
                        sb.append("isQQBrowerAvailable has exception: ");
                        sb.append(e2.getMessage());
                        f.e(str2, sb.toString());
                    }
                }
            }
        } catch (NameNotFoundException unused) {
        }
        return false;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:22|23|24|25) */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:14|15|16|17|18|19) */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x002e, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0038, code lost:
        return false;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:16:0x0026 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:18:0x002a */
    /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x0033 */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0022 A[SYNTHETIC, Splitter:B:14:0x0022] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x002f A[SYNTHETIC, Splitter:B:22:0x002f] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(android.content.Context r7, java.lang.String r8) {
        /*
            java.lang.String r0 = "com.android.browser"
            java.lang.String r1 = "com.android.browser.BrowserActivity"
            r2 = 0
            boolean r3 = f(r7)     // Catch:{ Exception -> 0x0019 }
            if (r3 == 0) goto L_0x0015
            java.lang.String r4 = "com.tencent.mtt"
            java.lang.String r5 = "com.tencent.mtt.MainActivity"
            a(r7, r4, r5, r8)     // Catch:{ Exception -> 0x0013 }
            goto L_0x0036
        L_0x0013:
            goto L_0x001a
        L_0x0015:
            a(r7, r0, r1, r8)     // Catch:{ Exception -> 0x0013 }
            goto L_0x0036
        L_0x0019:
            r3 = 0
        L_0x001a:
            java.lang.String r4 = "com.google.android.apps.chrome.Main"
            java.lang.String r5 = "com.android.chrome"
            java.lang.String r6 = "com.google.android.browser"
            if (r3 == 0) goto L_0x002f
            a(r7, r0, r1, r8)     // Catch:{ Exception -> 0x0026 }
            goto L_0x0036
        L_0x0026:
            a(r7, r6, r1, r8)     // Catch:{ Exception -> 0x002a }
            goto L_0x0036
        L_0x002a:
            a(r7, r5, r4, r8)     // Catch:{ Exception -> 0x002e }
            goto L_0x0036
        L_0x002e:
            return r2
        L_0x002f:
            a(r7, r6, r1, r8)     // Catch:{ Exception -> 0x0033 }
            goto L_0x0036
        L_0x0033:
            a(r7, r5, r4, r8)     // Catch:{ Exception -> 0x0038 }
        L_0x0036:
            r7 = 1
            return r7
        L_0x0038:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.open.utils.k.a(android.content.Context, java.lang.String):boolean");
    }

    private static void a(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, str2));
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(1073741824);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.setData(Uri.parse(str3));
        context.startActivity(intent);
    }

    public static String f(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(i(str));
            byte[] digest = instance.digest();
            if (digest == null) {
                return str;
            }
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(a(b2 >>> 4));
                sb.append(a((int) b2));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("encrypt has exception: ");
            sb2.append(e2.getMessage());
            f.e("openSDK_LOG.Util", sb2.toString());
            return str;
        }
    }

    public static boolean b() {
        return (Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory() : null) != null;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            String num = Integer.toString(b2 & Draft_75.END_OF_FRAME, 16);
            if (num.length() == 1) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("0");
                sb2.append(num);
                num = sb2.toString();
            }
            sb.append(num);
        }
        return sb.toString();
    }

    public static final String a(Context context) {
        if (context != null) {
            CharSequence applicationLabel = context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
            if (applicationLabel != null) {
                return applicationLabel.toString();
            }
        }
        return null;
    }

    public static final boolean g(String str) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        if (str.startsWith("http://") || str.startsWith("https://")) {
            z = true;
        }
        return z;
    }

    public static boolean h(String str) {
        if (str != null && new File(str).exists()) {
            return true;
        }
        return false;
    }

    public static final String a(String str, int i, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "UTF-8";
        }
        try {
            if (str.getBytes(str2).length <= i) {
                return str;
            }
            int i2 = 0;
            int i3 = 0;
            while (i2 < str.length()) {
                int i4 = i2 + 1;
                i3 += str.substring(i2, i4).getBytes(str2).length;
                if (i3 > i) {
                    String substring = str.substring(0, i2);
                    if (!TextUtils.isEmpty(str3)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(substring);
                        sb.append(str3);
                        substring = sb.toString();
                    }
                    return substring;
                }
                i2 = i4;
            }
            return str;
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Util.subString has exception: ");
            sb2.append(e2.getMessage());
            f.e("openSDK_LOG.Util", sb2.toString());
            return str;
        }
    }

    public static boolean b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return true;
        }
        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
        if (allNetworkInfo != null) {
            for (NetworkInfo isConnectedOrConnecting : allNetworkInfo) {
                if (isConnectedOrConnecting.isConnectedOrConnecting()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6) {
        return a(str, str3, str4, str2, str5, str6, "", "", "", "", "", "");
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        Bundle bundle = new Bundle();
        bundle.putString("openid", str);
        bundle.putString("report_type", str2);
        bundle.putString("act_type", str3);
        bundle.putString("via", str4);
        bundle.putString("app_id", str5);
        bundle.putString(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT, str6);
        bundle.putString("type", str7);
        bundle.putString("login_status", str8);
        bundle.putString("need_user_auth", str9);
        bundle.putString("to_uin", str10);
        bundle.putString("call_source", str11);
        bundle.putString("to_type", str12);
        return bundle;
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        Bundle bundle = new Bundle();
        bundle.putString(Constants.PARAM_PLATFORM, "1");
        bundle.putString(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT, str);
        bundle.putString("code", str2);
        bundle.putString("tmcost", str3);
        bundle.putString("rate", str4);
        bundle.putString("cmd", str5);
        bundle.putString("uin", str6);
        bundle.putString("appid", str7);
        bundle.putString("share_type", str8);
        bundle.putString(ProductAction.ACTION_DETAIL, str9);
        bundle.putString("os_ver", VERSION.RELEASE);
        bundle.putString("network", com.tencent.open.b.a.a(e.a()));
        bundle.putString("apn", com.tencent.open.b.a.b(e.a()));
        bundle.putString("model_name", Build.MODEL);
        bundle.putString("sdk_ver", Constants.SDK_VERSION);
        bundle.putString("packagename", e.b());
        bundle.putString("app_ver", d(e.a(), e.b()));
        return bundle;
    }

    public static String c(Context context) {
        String str = "";
        if (context == null) {
            return str;
        }
        try {
            LocationManager locationManager = (LocationManager) context.getSystemService(Param.LOCATION);
            Criteria criteria = new Criteria();
            criteria.setCostAllowed(false);
            criteria.setAccuracy(2);
            String bestProvider = locationManager.getBestProvider(criteria, true);
            if (bestProvider != null) {
                Location lastKnownLocation = locationManager.getLastKnownLocation(bestProvider);
                if (lastKnownLocation == null) {
                    return str;
                }
                double latitude = lastKnownLocation.getLatitude();
                double longitude = lastKnownLocation.getLongitude();
                StringBuilder sb = new StringBuilder();
                sb.append(latitude);
                sb.append("*");
                sb.append(longitude);
                f = sb.toString();
                return f;
            }
        } catch (Exception e2) {
            f.b("openSDK_LOG.Util", "getLocation>>>", e2);
        }
        return str;
    }

    public static void b(Context context, String str) {
        String str2 = "getPackageInfo has exception: ";
        String str3 = "openSDK_LOG.Util";
        if (context != null) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                b = packageInfo.versionName;
                a = b.substring(0, b.lastIndexOf(46));
                d = b.substring(b.lastIndexOf(46) + 1, b.length());
                e = packageInfo.versionCode;
            } catch (NameNotFoundException e2) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                sb.append(e2.getMessage());
                f.e(str3, sb.toString());
            } catch (Exception e3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(e3.getMessage());
                f.e(str3, sb2.toString());
            }
        }
    }

    public static String c(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return b;
    }

    public static String d(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return a;
    }

    public static String e(Context context, String str) {
        if (context == null) {
            return "";
        }
        c = d(context, str);
        return c;
    }

    public static byte[] i(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static boolean d(Context context) {
        double d2;
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            d2 = Math.sqrt(Math.pow((double) (((float) displayMetrics.widthPixels) / displayMetrics.xdpi), 2.0d) + Math.pow((double) (((float) displayMetrics.heightPixels) / displayMetrics.ydpi), 2.0d));
        } catch (Throwable unused) {
            d2 = 0.0d;
        }
        return d2 > 6.5d;
    }

    public static boolean f(Context context, String str) {
        boolean z = !d(context) || h.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && h.a(context, Constants.PACKAGE_TIM) != null) {
            z = false;
        }
        if (z) {
            return h.c(context, str) < 0;
        }
        return z;
    }

    public static boolean g(Context context, String str) {
        boolean z = !d(context) || h.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && h.a(context, Constants.PACKAGE_TIM) != null) {
            z = false;
        }
        if (z) {
            return h.c(context, str) < 0;
        }
        return z;
    }

    public static boolean a(Context context, boolean z) {
        if (d(context) && h.a(context, Constants.PACKAGE_QQ_PAD) != null) {
            return true;
        }
        boolean z2 = false;
        String str = Constants.PACKAGE_TIM;
        String str2 = "4.1";
        if (!z) {
            if (h.c(context, str2) >= 0 || h.a(context, str) != null) {
                z2 = true;
            }
            return z2;
        }
        if (h.c(context, str2) >= 0 || h.a(context, str) != null) {
            z2 = true;
        }
        return z2;
    }

    public static boolean e(Context context) {
        return h.c(context, "5.9.5") >= 0 || h.a(context, Constants.PACKAGE_TIM) != null;
    }
}
