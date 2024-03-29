package com.kantv.common.utils;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import androidx.core.app.NotificationManagerCompat;
import java.lang.reflect.InvocationTargetException;

public class NotificationsUtils {
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";

    public static boolean isNotificationEnabled(Context context) {
        if (VERSION.SDK_INT >= 24) {
            return NotificationManagerCompat.from(context).areNotificationsEnabled();
        }
        boolean z = true;
        if (VERSION.SDK_INT < 19) {
            return true;
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class cls = Class.forName(AppOpsManager.class.getName());
            if (((Integer) cls.getMethod(CHECK_OP_NO_THROW, new Class[]{Integer.TYPE, Integer.TYPE, String.class}).invoke(appOpsManager, new Object[]{Integer.valueOf(((Integer) cls.getDeclaredField(OP_POST_NOTIFICATION).get(Integer.class)).intValue()), Integer.valueOf(i), packageName})).intValue() != 0) {
                z = false;
            }
            return z;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            return false;
        }
    }
}
