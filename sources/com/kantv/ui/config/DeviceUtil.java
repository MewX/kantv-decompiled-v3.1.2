package com.kantv.ui.config;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import com.kantv.common.utils.StringUtils;
import com.kantv.ui.utils.PreferenceUtil;
import java.util.UUID;

public class DeviceUtil {
    public static String getDeviceId(Context context) {
        String str = "wifi";
        String str2 = "id";
        StringBuilder sb = new StringBuilder();
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String deviceId = telephonyManager.getDeviceId();
            if (!StringUtils.isEmpty(deviceId)) {
                sb.append("imei");
                sb.append(deviceId);
                return sb.toString();
            }
            String simSerialNumber = telephonyManager.getSimSerialNumber();
            if (!StringUtils.isEmpty(simSerialNumber)) {
                sb.append("sn");
                sb.append(simSerialNumber);
                return sb.toString();
            }
            String macAddress = ((WifiManager) context.getSystemService(str)).getConnectionInfo().getMacAddress();
            if (!StringUtils.isEmpty(macAddress)) {
                sb.append(str);
                sb.append(macAddress);
                return sb.toString();
            }
            String uuid = getUUID(context);
            if (!StringUtils.isEmpty(uuid)) {
                sb.append(str2);
                sb.append(uuid);
                return sb.toString();
            }
            return sb.toString();
        } catch (Exception unused) {
            sb.append(str2);
            sb.append(getUUID(context));
        }
    }

    public static String getUUID(Context context) {
        String str = "UUID";
        String str2 = (String) PreferenceUtil.get(context, str, "");
        if (!StringUtils.isEmpty(str2)) {
            return str2;
        }
        String uuid = UUID.randomUUID().toString();
        PreferenceUtil.put(context, str, uuid);
        return uuid;
    }
}
