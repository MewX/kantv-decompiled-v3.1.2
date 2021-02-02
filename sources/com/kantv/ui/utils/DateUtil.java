package com.kantv.ui.utils;

import com.kantv.common.utils.StringUtils;
import com.kantv.common.utils.Utils;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static String timeStamp2Date(String str, String str2) {
        if (str == null || str.isEmpty() || str.equals("null")) {
            return "";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("000");
        return simpleDateFormat.format(new Date(Long.valueOf(sb.toString()).longValue()));
    }

    public static boolean JudgeTime(long j) {
        return Long.valueOf((System.currentTimeMillis() / 1000) - j).longValue() > 300;
    }

    public static boolean JudgeTimeWeek(long j) {
        return Long.valueOf((System.currentTimeMillis() / 1000) - j).longValue() > 86400;
    }

    public static int isCache(String str, String str2) {
        try {
            if (NetWorkUtils.isNetWrok(Utils.getContext())) {
                if (StringUtils.isEmpty(str) || StringUtils.isEmpty(str2)) {
                    return 1;
                }
                if (JudgeTime(Long.parseLong(str2))) {
                    return 1;
                }
            } else if (StringUtils.isEmpty(str)) {
                return 2;
            }
            return 0;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 1;
        }
    }
}
