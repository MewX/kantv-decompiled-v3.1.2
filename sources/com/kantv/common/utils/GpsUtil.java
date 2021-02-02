package com.kantv.common.utils;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

public class GpsUtil {
    public static final int REQUEST_CODE_LOCATION = 163;

    public static final boolean isOpen() {
        if (VERSION.SDK_INT < 23) {
            return true;
        }
        if (ContextCompat.checkSelfPermission(Utils.getContext(), "android.permission.ACCESS_COARSE_LOCATION") == 0 && ContextCompat.checkSelfPermission(Utils.getContext(), "android.permission.ACCESS_FINE_LOCATION") == 0) {
            return true;
        }
        return false;
    }

    public static void requestGps(Activity activity) {
        ActivityCompat.requestPermissions(activity, new String[]{"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"}, 163);
    }

    public static final void openGPS(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.widget.SettingsAppWidgetProvider");
        intent.addCategory("android.intent.category.ALTERNATIVE");
        intent.setData(Uri.parse("custom:3"));
        try {
            PendingIntent.getBroadcast(context, 0, intent, 0).send();
        } catch (CanceledException e) {
            e.printStackTrace();
        }
    }
}
