package com.avos.avoscloud;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import com.avos.avoscloud.LogUtil.avlog;

public class AVManifestUtils {
    public static boolean checkPermission(Context context, String str) {
        boolean z = context.checkCallingOrSelfPermission(str) == 0;
        if (!z) {
            StringBuilder sb = new StringBuilder();
            sb.append("permission ");
            sb.append(str);
            sb.append(" is missing!");
            printErrorLog(sb.toString());
        }
        return z;
    }

    public static boolean checkService(Context context, Class<?> cls) {
        boolean z = false;
        try {
            if (context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 0) != null) {
                z = true;
            }
            return z;
        } catch (NameNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("service ");
            sb.append(cls.getName());
            sb.append(" is missing!");
            printErrorLog(sb.toString());
            return false;
        }
    }

    public static boolean checkReceiver(Context context, Class<?> cls) {
        boolean z = false;
        try {
            if (context.getPackageManager().getReceiverInfo(new ComponentName(context, cls), 0) != null) {
                z = true;
            }
            return z;
        } catch (NameNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("receiver ");
            sb.append(cls.getName());
            sb.append(" is missing!");
            printErrorLog(sb.toString());
            return false;
        }
    }

    private static void printErrorLog(String str) {
        if (AVOSCloud.isDebugLogEnabled() && !AVUtils.isBlankString(str)) {
            avlog.e(str);
        }
    }
}
