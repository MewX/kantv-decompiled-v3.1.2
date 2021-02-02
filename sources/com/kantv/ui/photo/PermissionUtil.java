package com.kantv.ui.photo;

import android.app.Activity;
import android.os.Build.VERSION;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

public class PermissionUtil {
    private static final SimpleArrayMap<String, Integer> MIN_SDK_PERMISSIONS = new SimpleArrayMap<>(8);
    public static final int REQUEST_CONTACTS = 3;
    public static final int REQUEST_LOCATION = 4;
    public static final int REQUEST_READ_EXTERNAL_STORAGE = 1;
    public static final int REQUEST_RECORD_AUDIO = 2;
    public static final int REQUEST_SHOWCAMERA = 0;

    static {
        MIN_SDK_PERMISSIONS.put("com.android.voicemail.permission.ADD_VOICEMAIL", Integer.valueOf(14));
        MIN_SDK_PERMISSIONS.put("android.permission.BODY_SENSORS", Integer.valueOf(20));
        SimpleArrayMap<String, Integer> simpleArrayMap = MIN_SDK_PERMISSIONS;
        Integer valueOf = Integer.valueOf(16);
        simpleArrayMap.put("android.permission.READ_CALL_LOG", valueOf);
        SimpleArrayMap<String, Integer> simpleArrayMap2 = MIN_SDK_PERMISSIONS;
        Integer valueOf2 = Integer.valueOf(23);
        simpleArrayMap2.put("android.permission.READ_EXTERNAL_STORAGE", valueOf2);
        MIN_SDK_PERMISSIONS.put("android.permission.USE_SIP", Integer.valueOf(9));
        MIN_SDK_PERMISSIONS.put("android.permission.WRITE_CALL_LOG", valueOf);
        MIN_SDK_PERMISSIONS.put("android.permission.SYSTEM_ALERT_WINDOW", valueOf2);
        MIN_SDK_PERMISSIONS.put("android.permission.WRITE_SETTINGS", valueOf2);
    }

    private static boolean permissionExists(String str) {
        Integer num = (Integer) MIN_SDK_PERMISSIONS.get(str);
        return num == null || VERSION.SDK_INT >= num.intValue();
    }

    public static boolean hasCameraPermission(Activity activity) {
        String str = "android.permission.CAMERA";
        if (!permissionExists(str)) {
            Log.e("permission", "your system does not suppportandroid.permission.CAMERA permission");
            return false;
        } else if (ContextCompat.checkSelfPermission(activity, str) == 0) {
            return true;
        } else {
            ActivityCompat.requestPermissions(activity, new String[]{str}, 0);
            return false;
        }
    }

    public static boolean hasReadExternalStoragePermission(Activity activity) {
        String str = "android.permission.READ_EXTERNAL_STORAGE";
        int checkSelfPermission = ContextCompat.checkSelfPermission(activity, str);
        if (!permissionExists(str)) {
            Log.e("permission", "your system does not suppport android.permission.READ_EXTERNAL_STORAGE permission");
            return false;
        } else if (checkSelfPermission == 0) {
            return true;
        } else {
            ActivityCompat.requestPermissions(activity, new String[]{str}, 1);
            return false;
        }
    }

    public static boolean hasRecordAudioPermission(Activity activity) {
        String str = "android.permission.RECORD_AUDIO";
        int checkSelfPermission = ContextCompat.checkSelfPermission(activity, str);
        if (!permissionExists(str)) {
            Log.e("permission", "your system does not suppportandroid.permission.RECORD_AUDIO permission");
            return false;
        } else if (checkSelfPermission == 0) {
            return true;
        } else {
            ActivityCompat.requestPermissions(activity, new String[]{str}, 2);
            return false;
        }
    }

    public static boolean hasContactsPermission(Activity activity) {
        String str = "android.permission.WRITE_CONTACTS";
        int checkSelfPermission = ContextCompat.checkSelfPermission(activity, str);
        String str2 = "android.permission.READ_CONTACTS";
        if (ContextCompat.checkSelfPermission(activity, str2) == 0 && checkSelfPermission == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(activity, new String[]{str, str2}, 3);
        return false;
    }

    public static boolean hasLocationPermission(Activity activity) {
        String str = "android.permission.ACCESS_FINE_LOCATION";
        int checkSelfPermission = ContextCompat.checkSelfPermission(activity, str);
        String str2 = "android.permission.ACCESS_COARSE_LOCATION";
        int checkSelfPermission2 = ContextCompat.checkSelfPermission(activity, str2);
        if (checkSelfPermission == 0 && checkSelfPermission2 == 0) {
            return true;
        }
        ActivityCompat.requestPermissions(activity, new String[]{str, str2}, 4);
        return false;
    }

    public static boolean checkPermission(Activity activity, String[] strArr, int i) {
        boolean z = true;
        if (VERSION.SDK_INT >= 23) {
            boolean z2 = true;
            for (String checkSelfPermission : strArr) {
                if (ActivityCompat.checkSelfPermission(activity, checkSelfPermission) != 0) {
                    z2 = false;
                }
            }
            z = z2;
        }
        if (!z) {
            ActivityCompat.requestPermissions(activity, strArr, i);
        }
        return z;
    }
}
