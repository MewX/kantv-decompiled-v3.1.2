package com.kantv.flt_tencent_im.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.androidquery.callback.AjaxStatus;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.DecimalFormat;

public class NetWorkUtils {
    private static final int NETWORK_CLASS_2_G = 1;
    private static final int NETWORK_CLASS_3_G = 2;
    private static final int NETWORK_CLASS_4_G = 3;
    private static final int NETWORK_CLASS_UNAVAILABLE = -1;
    private static final int NETWORK_CLASS_UNKNOWN = 0;
    private static final int NETWORK_CLASS_WIFI = -101;
    public static final int NETWORK_TYPE_1xRTT = 7;
    public static final int NETWORK_TYPE_CDMA = 4;
    public static final int NETWORK_TYPE_EDGE = 2;
    public static final int NETWORK_TYPE_EHRPD = 14;
    public static final int NETWORK_TYPE_EVDO_0 = 5;
    public static final int NETWORK_TYPE_EVDO_A = 6;
    public static final int NETWORK_TYPE_EVDO_B = 12;
    public static final int NETWORK_TYPE_GPRS = 1;
    public static final int NETWORK_TYPE_HSDPA = 8;
    public static final int NETWORK_TYPE_HSPA = 10;
    public static final int NETWORK_TYPE_HSPAP = 15;
    public static final int NETWORK_TYPE_HSUPA = 9;
    public static final int NETWORK_TYPE_IDEN = 11;
    public static final int NETWORK_TYPE_LTE = 13;
    public static final int NETWORK_TYPE_UMTS = 3;
    private static final int NETWORK_TYPE_UNAVAILABLE = -1;
    public static final int NETWORK_TYPE_UNKNOWN = 0;
    private static final int NETWORK_TYPE_WIFI = -101;
    private static DecimalFormat df = new DecimalFormat("#.##");
    public static boolean sIMSDKConnected;

    private static int getNetworkClassByType(int i) {
        int i2 = AjaxStatus.NETWORK_ERROR;
        if (i != -101) {
            i2 = -1;
            if (i != -1) {
                switch (i) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                        return 1;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                        return 2;
                    case 13:
                        return 3;
                    default:
                        return 0;
                }
            }
        }
        return i2;
    }

    public static boolean isWifiAvailable(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || activeNetworkInfo.getType() != 1) {
            return false;
        }
        return true;
    }

    public static String getMacAddress(Context context) {
        if (context == null) {
            return "";
        }
        String str = null;
        if (isWifiAvailable(context)) {
            str = getWifiMacAddress(context);
        }
        String str2 = "-";
        String str3 = ":";
        if (str != null && str.length() > 0) {
            return str.replace(str3, str2).toLowerCase();
        }
        String macFromCallCmd = getMacFromCallCmd();
        if (macFromCallCmd != null) {
            macFromCallCmd = macFromCallCmd.replace(str3, str2).toLowerCase();
        }
        return macFromCallCmd;
    }

    private static String getWifiMacAddress(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            WifiInfo connectionInfo = wifiManager.getConnectionInfo();
            if (wifiManager.isWifiEnabled()) {
                String macAddress = connectionInfo.getMacAddress();
                if (macAddress != null) {
                    return macAddress.replace(":", "-").toLowerCase();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private static String getMacFromCallCmd() {
        String str = "HWaddr";
        String callCmd = callCmd("busybox ifconfig", str);
        if (callCmd == null || callCmd.length() <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("cmd result : ");
        sb.append(callCmd);
        Log.v("tag", sb.toString());
        if (callCmd.length() > 0 && callCmd.contains(str)) {
            String substring = callCmd.substring(callCmd.indexOf(str) + 6, callCmd.length() - 1);
            if (substring.length() > 1) {
                callCmd = substring.replaceAll(" ", "");
            }
        }
        return callCmd;
    }

    public static String callCmd(String str, String str2) {
        String readLine;
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(str).getInputStream()));
            do {
                readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return readLine;
                }
            } while (!readLine.contains(str2));
            return readLine;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean IsNetWorkEnable(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getState() == State.CONNECTED) {
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String formatSize(long j) {
        String str;
        float f = (float) j;
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "KB";
        } else {
            str = "B";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "MB";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "GB";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "TB";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(df.format((double) f));
        sb.append(str);
        return sb.toString();
    }

    public static String formatSizeBySecond(long j) {
        String str;
        float f = (float) j;
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "KB";
        } else {
            str = "B";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "MB";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "GB";
        }
        if (f > 900.0f) {
            f /= 1024.0f;
            str = "TB";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(df.format((double) f));
        sb.append(str);
        sb.append("/s");
        return sb.toString();
    }

    public static String format(long j) {
        String str;
        float f = (float) j;
        if (f > 1000.0f) {
            f /= 1024.0f;
            if (f > 1000.0f) {
                f /= 1024.0f;
                if (f > 1000.0f) {
                    f /= 1024.0f;
                    str = "GB";
                } else {
                    str = "MB";
                }
            } else {
                str = "KB";
            }
        } else {
            str = "B";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(df.format((double) f));
        sb.append("\n");
        sb.append(str);
        sb.append("/s");
        return sb.toString();
    }

    public static String getCurrentNetworkType(Context context) {
        int networkClass = getNetworkClass(context);
        String str = "未知";
        if (networkClass == -101) {
            return "Wi-Fi";
        }
        if (networkClass == -1) {
            return "无";
        }
        if (networkClass == 0) {
            return str;
        }
        if (networkClass == 1) {
            return "2G";
        }
        if (networkClass != 2) {
            return networkClass != 3 ? str : "4G";
        }
        return "3G";
    }

    private static int getNetworkClass(Context context) {
        int i = 0;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable() || !activeNetworkInfo.isConnected()) {
                i = -1;
                return getNetworkClassByType(i);
            }
            int type = activeNetworkInfo.getType();
            if (type == 1) {
                i = AjaxStatus.NETWORK_ERROR;
            } else if (type == 0) {
                i = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
            }
            return getNetworkClassByType(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getWifiRssi(Context context) {
        int i = 85;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1) {
                WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
                if (connectionInfo != null) {
                    i = connectionInfo.getRssi();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append("dBm");
        return sb.toString();
    }

    public static String getWifiSsid(Context context) {
        String str = "";
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable() || !activeNetworkInfo.isConnected() || activeNetworkInfo.getType() != 1) {
                return str;
            }
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo == null) {
                return str;
            }
            String ssid = connectionInfo.getSSID();
            if (ssid == null) {
                ssid = str;
            }
            try {
                return ssid.replaceAll("\"", str);
            } catch (Exception e) {
                Exception exc = e;
                str = ssid;
                e = exc;
                e.printStackTrace();
                return str;
            }
        } catch (Exception e2) {
            e = e2;
            e.printStackTrace();
            return str;
        }
    }

    public static boolean checkSimState(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager.getSimState() == 1 || telephonyManager.getSimState() == 0) {
            return false;
        }
        return true;
    }
}
