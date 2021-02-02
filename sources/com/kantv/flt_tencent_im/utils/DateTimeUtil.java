package com.kantv.flt_tencent_im.utils;

import java.util.Calendar;
import java.util.Date;

public class DateTimeUtil {
    private static final long day = 86400000;
    private static final long hour = 3600000;
    private static final long minute = 60000;
    private static final long month = 2678400000L;
    private static final long year = 32140800000L;

    public static String getTimeFormatText(Date date) {
        String str;
        String str2;
        if (date == null) {
            return null;
        }
        Calendar instance = Calendar.getInstance();
        int i = instance.get(6);
        int i2 = instance.get(1);
        instance.setTime(date);
        int i3 = instance.get(1);
        int i4 = instance.get(6);
        int i5 = instance.get(12);
        StringBuilder sb = new StringBuilder();
        sb.append(instance.get(11));
        sb.append(":");
        String sb2 = sb.toString();
        if (i5 < 10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append("0");
            sb3.append(i5);
            str = sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb2);
            sb4.append(i5);
            str = sb4.toString();
        }
        instance.get(7);
        if (i == i4) {
            return str;
        }
        int i6 = i - i4;
        if (i6 == 1 && i2 == i3) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append("昨天 ");
            sb5.append(str);
            str2 = sb5.toString();
        } else {
            String str3 = " ";
            String str4 = "月";
            if (i6 <= 1 || i2 != i3) {
                StringBuilder sb6 = new StringBuilder();
                sb6.append(i3);
                sb6.append("年");
                sb6.append(Integer.valueOf(instance.get(2) + 1));
                sb6.append(str4);
                sb6.append(instance.get(5));
                sb6.append("日");
                sb6.append(str);
                sb6.append(str3);
                str2 = sb6.toString();
            } else {
                StringBuilder sb7 = new StringBuilder();
                sb7.append(Integer.valueOf(instance.get(2) + 1));
                sb7.append(str4);
                sb7.append(instance.get(5));
                sb7.append("日 ");
                sb7.append(str);
                sb7.append(str3);
                str2 = sb7.toString();
            }
        }
        return str2;
    }

    public static String formatSeconds(long j) {
        long j2 = j;
        StringBuilder sb = new StringBuilder();
        sb.append(j2);
        String str = "秒";
        sb.append(str);
        String sb2 = sb.toString();
        if (j2 <= 60) {
            return sb2;
        }
        long j3 = j2 % 60;
        long j4 = j2 / 60;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(j4);
        String str2 = "分";
        sb3.append(str2);
        sb3.append(j3);
        sb3.append(str);
        String sb4 = sb3.toString();
        if (j4 <= 60) {
            return sb4;
        }
        long j5 = j4 % 60;
        long j6 = j4 / 60;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(j6);
        String str3 = "小时";
        sb5.append(str3);
        sb5.append(j5);
        sb5.append(str2);
        sb5.append(j3);
        sb5.append(str);
        String sb6 = sb5.toString();
        long j7 = j6 % 24;
        String str4 = "天";
        if (j7 == 0) {
            long j8 = j6 / 24;
            StringBuilder sb7 = new StringBuilder();
            sb7.append(j8);
            sb7.append(str4);
            return sb7.toString();
        } else if (j6 <= 24) {
            return sb6;
        } else {
            long j9 = j6 / 24;
            StringBuilder sb8 = new StringBuilder();
            sb8.append(j9);
            sb8.append(str4);
            sb8.append(j7);
            sb8.append(str3);
            sb8.append(j5);
            sb8.append(str2);
            sb8.append(j3);
            sb8.append(str);
            return sb8.toString();
        }
    }
}
