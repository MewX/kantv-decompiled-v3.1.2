package com.tencent.imsdk.utils;

import com.tencent.imsdk.log.QLog;

public class QualityReportHelper {
    private static final String TAG;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("imsdk.");
        sb.append(QualityReportHelper.class.getSimpleName());
        TAG = sb.toString();
    }

    public static void report(int i, int i2, String str) {
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("event report, eventId: ");
        sb.append(i);
        sb.append("|code: ");
        sb.append(i2);
        sb.append("|descr: ");
        sb.append(str);
        QLog.d(str2, sb.toString());
    }
}
