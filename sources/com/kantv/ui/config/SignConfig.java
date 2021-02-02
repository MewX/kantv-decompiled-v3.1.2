package com.kantv.ui.config;

import com.kantv.common.utils.Utils;
import java.util.UUID;

public class SignConfig {
    public static String appid = "kantvea2663ea5d5evje09j";
    public static String noncestr = UUID.randomUUID().toString();
    public static String sbID = DeviceUtil.getDeviceId(Utils.getContext());
    public static String sign = Utils.SHA1(string2);
    public static String string1;
    public static String string2;
    public static String timestamp;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(System.currentTimeMillis());
        sb.append("");
        timestamp = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("noncestr=");
        sb2.append(noncestr);
        sb2.append("&sbID=");
        sb2.append(sbID);
        sb2.append("&timestamp=");
        sb2.append(timestamp);
        string1 = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(string1);
        sb3.append("&appid=");
        sb3.append(appid);
        string2 = sb3.toString();
    }
}
