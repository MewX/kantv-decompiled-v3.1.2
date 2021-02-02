package com.tencent.a.a.a.a;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import com.tencent.wxop.stat.common.f;
import org.json.JSONObject;

public final class h {
    static String a(Context context) {
        String str = "MID";
        try {
            if (a(context, "android.permission.READ_PHONE_STATE")) {
                String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
                if (deviceId != null) {
                    return deviceId;
                }
            } else {
                Log.i(str, "Could not get permission of android.permission.READ_PHONE_STATE");
            }
        } catch (Throwable th) {
            Log.w(str, th);
        }
        return "";
    }

    private static void a(String str, Throwable th) {
        Log.e("MID", str, th);
    }

    static void a(JSONObject jSONObject, String str, String str2) {
        if (b(str2)) {
            jSONObject.put(str, str2);
        }
    }

    static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            a("checkPermission error", th);
            return false;
        }
    }

    static String b(Context context) {
        String str;
        String str2 = "MID";
        String str3 = "";
        if (a(context, "android.permission.ACCESS_WIFI_STATE")) {
            try {
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                return wifiManager == null ? str3 : wifiManager.getConnectionInfo().getMacAddress();
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("get wifi address error");
                sb.append(e);
                str = sb.toString();
            }
        } else {
            str = "Could not get permission of android.permission.ACCESS_WIFI_STATE";
            Log.i(str2, str);
            return str3;
        }
    }

    static boolean b(String str) {
        return (str == null || str.trim().length() == 0) ? false : true;
    }

    public static boolean c(String str) {
        return str != null && str.trim().length() >= 40;
    }

    static String f(String str) {
        String str2 = "UTF-8";
        String str3 = "";
        if (str == null) {
            return null;
        }
        if (VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(f.b(Base64.decode(str.getBytes(str2), 0)), str2).trim().replace("\t", str3).replace("\n", str3).replace("\r", str3);
        } catch (Throwable th) {
            a("decode error", th);
            return str;
        }
    }

    static String g(String str) {
        String str2 = "UTF-8";
        String str3 = "";
        if (str == null) {
            return null;
        }
        if (VERSION.SDK_INT < 8) {
            return str;
        }
        try {
            return new String(Base64.encode(f.a(str.getBytes(str2)), 0), str2).trim().replace("\t", str3).replace("\n", str3).replace("\r", str3);
        } catch (Throwable th) {
            a("decode error", th);
            return str;
        }
    }
}
