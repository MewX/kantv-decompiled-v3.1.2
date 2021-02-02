package com.avos.avoscloud;

import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.avos.avoscloud.LogUtil.avlog;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class AVDeviceUtils {
    public static String getIMEI() {
        try {
            return ((TelephonyManager) AVOSCloud.applicationContext.getSystemService("phone")).getDeviceId();
        } catch (Exception e) {
            if (AVOSCloud.showInternalDebugLog()) {
                StringBuilder sb = new StringBuilder();
                sb.append("failed to get imei ");
                sb.append(e);
                avlog.d(sb.toString());
            }
            return null;
        }
    }

    public static String getAndroidId() {
        return Secure.getString(AVOSCloud.applicationContext.getContentResolver(), "android_id");
    }

    public static String getMacAddress() {
        String macAddressWithWifiManager = getMacAddressWithWifiManager();
        return AVUtils.isBlankString(macAddressWithWifiManager) ? getMacAddressWithNetworkInterface() : macAddressWithWifiManager;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x002f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String getMacAddressWithWifiManager() {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r2 = 23
            if (r0 < r2) goto L_0x0008
            return r1
        L_0x0008:
            android.content.Context r0 = com.avos.avoscloud.AVOSCloud.applicationContext     // Catch:{ Exception -> 0x0028 }
            java.lang.String r2 = "wifi"
            java.lang.Object r0 = r0.getSystemService(r2)     // Catch:{ Exception -> 0x0028 }
            android.net.wifi.WifiManager r0 = (android.net.wifi.WifiManager) r0     // Catch:{ Exception -> 0x0028 }
            android.net.wifi.WifiInfo r0 = r0.getConnectionInfo()     // Catch:{ Exception -> 0x0028 }
            java.lang.String r0 = r0.getMacAddress()     // Catch:{ Exception -> 0x0028 }
            java.lang.String r2 = "02:00:00:00:00:00"
            boolean r2 = r2.equals(r0)     // Catch:{ Exception -> 0x0023 }
            if (r2 == 0) goto L_0x0044
            return r1
        L_0x0023:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
            goto L_0x0029
        L_0x0028:
            r0 = move-exception
        L_0x0029:
            boolean r2 = com.avos.avoscloud.AVOSCloud.showInternalDebugLog()
            if (r2 == 0) goto L_0x0043
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "failed to get wifi mac address"
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            com.avos.avoscloud.LogUtil.avlog.d(r0)
        L_0x0043:
            r0 = r1
        L_0x0044:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.AVDeviceUtils.getMacAddressWithWifiManager():java.lang.String");
    }

    private static String getMacAddressWithNetworkInterface() {
        try {
            ArrayList list = Collections.list(NetworkInterface.getNetworkInterfaces());
            String hardwareAddress = getHardwareAddress(list, "wlan0");
            return AVUtils.isBlankString(hardwareAddress) ? getHardwareAddress(list, "eth1") : hardwareAddress;
        } catch (SocketException unused) {
            return null;
        }
    }

    private static String getHardwareAddress(List<NetworkInterface> list, String str) {
        if (list != null) {
            try {
                for (NetworkInterface networkInterface : list) {
                    String name = networkInterface.getName();
                    if (!AVUtils.isBlankString(name) && name.equalsIgnoreCase(str)) {
                        byte[] hardwareAddress = networkInterface.getHardwareAddress();
                        if (hardwareAddress != null) {
                            StringBuilder sb = new StringBuilder();
                            for (byte valueOf : hardwareAddress) {
                                sb.append(String.format("%02X:", new Object[]{Byte.valueOf(valueOf)}));
                            }
                            if (sb.length() > 0) {
                                sb.deleteCharAt(sb.length() - 1);
                            }
                            return sb.toString();
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }
}
