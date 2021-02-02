package com.tencent.open.b;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import com.tencent.open.a.f;
import io.reactivex.annotations.SchedulerSupport;

/* compiled from: ProGuard */
public class a {
    protected static final Uri a = Uri.parse("content://telephony/carriers/preferapn");

    public static String a(Context context) {
        int d = d(context);
        if (d == 2) {
            return "wifi";
        }
        if (d == 1) {
            return "cmwap";
        }
        if (d == 4) {
            return "cmnet";
        }
        if (d == 16) {
            return "uniwap";
        }
        if (d == 8) {
            return "uninet";
        }
        if (d == 64) {
            return "wap";
        }
        if (d == 32) {
            return "net";
        }
        if (d == 512) {
            return "ctwap";
        }
        if (d == 256) {
            return "ctnet";
        }
        if (d == 2048) {
            return "3gnet";
        }
        if (d == 1024) {
            return "3gwap";
        }
        String b = b(context);
        return (b == null || b.length() == 0) ? SchedulerSupport.NONE : b;
    }

    public static String b(Context context) {
        String str = "getApn has exception: ";
        String str2 = "openSDK_LOG.APNUtil";
        try {
            Cursor query = context.getContentResolver().query(a, null, null, null, null);
            if (query == null) {
                return null;
            }
            query.moveToFirst();
            if (query.isAfterLast()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            String string = query.getString(query.getColumnIndex("apn"));
            if (query != null) {
                query.close();
            }
            return string;
        } catch (SecurityException e) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(e.getMessage());
            f.e(str2, sb.toString());
            return "";
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            sb2.append(e2.getMessage());
            f.e(str2, sb2.toString());
            return "";
        }
    }

    public static String c(Context context) {
        try {
            Cursor query = context.getContentResolver().query(a, null, null, null, null);
            if (query == null) {
                return null;
            }
            query.moveToFirst();
            if (query.isAfterLast()) {
                if (query != null) {
                    query.close();
                }
                return null;
            }
            String string = query.getString(query.getColumnIndex("proxy"));
            if (query != null) {
                query.close();
            }
            return string;
        } catch (SecurityException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("getApnProxy has exception: ");
            sb.append(e.getMessage());
            f.e("openSDK_LOG.APNUtil", sb.toString());
            return "";
        }
    }

    public static int d(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return 128;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return 128;
            }
            if (activeNetworkInfo.getTypeName().toUpperCase().equals("WIFI")) {
                return 2;
            }
            String lowerCase = activeNetworkInfo.getExtraInfo().toLowerCase();
            if (lowerCase.startsWith("cmwap")) {
                return 1;
            }
            if (!lowerCase.startsWith("cmnet")) {
                if (!lowerCase.startsWith("epc.tmobile.com")) {
                    if (lowerCase.startsWith("uniwap")) {
                        return 16;
                    }
                    if (lowerCase.startsWith("uninet")) {
                        return 8;
                    }
                    if (lowerCase.startsWith("wap")) {
                        return 64;
                    }
                    if (lowerCase.startsWith("net")) {
                        return 32;
                    }
                    if (lowerCase.startsWith("ctwap")) {
                        return 512;
                    }
                    if (lowerCase.startsWith("ctnet")) {
                        return 256;
                    }
                    if (lowerCase.startsWith("3gwap")) {
                        return 1024;
                    }
                    if (lowerCase.startsWith("3gnet")) {
                        return 2048;
                    }
                    if (lowerCase.startsWith("#777")) {
                        String c = c(context);
                        if (c == null || c.length() <= 0) {
                            return 256;
                        }
                        return 512;
                    }
                    return 128;
                }
            }
            return 4;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("getMProxyType has exception: ");
            sb.append(e.getMessage());
            f.e("openSDK_LOG.APNUtil", sb.toString());
        }
    }

    public static String e(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        String str = "MOBILE";
        if (connectivityManager == null) {
            return str;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.getTypeName() : str;
    }
}
