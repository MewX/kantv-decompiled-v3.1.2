package com.kantv.common.utils;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.kantv.common.log.AILog;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

public class Utils {
    private static Context context = null;
    private static long currentTime = 0;
    public static String interfaceVersion = "104";

    public static boolean isNull(Object obj) {
        return obj == null;
    }

    public static void printStackTrace(String str) {
        new Exception(str).printStackTrace();
    }

    private Utils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void init(Context context2) {
        context = context2.getApplicationContext();
    }

    public static Context getContext() {
        Context context2 = context;
        if (context2 != null) {
            return context2;
        }
        throw new NullPointerException("u should init first");
    }

    @NonNull
    public static Activity getActivity(View view) {
        for (Context context2 = view.getContext(); context2 instanceof ContextWrapper; context2 = ((ContextWrapper) context2).getBaseContext()) {
            if (context2 instanceof Activity) {
                return (Activity) context2;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("View ");
        sb.append(view);
        sb.append(" is not attached to an Activity");
        throw new IllegalStateException(sb.toString());
    }

    public static String getString(@StringRes int i) {
        return context.getResources().getString(i);
    }

    public static boolean isAppDebug() {
        boolean z = false;
        if (StringUtils.isSpace(context.getPackageName())) {
            return false;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            if (!(applicationInfo == null || (applicationInfo.flags & 2) == 0)) {
                z = true;
            }
            return z;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isQQClientAvailable(Context context2) {
        List installedPackages = context2.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                String str = ((PackageInfo) installedPackages.get(i)).packageName;
                if (str.equalsIgnoreCase("com.tencent.qqlite") || str.equalsIgnoreCase("com.tencent.mobileqq")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isTodayAuClientAvailable(Context context2) {
        List installedPackages = context2.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            for (int i = 0; i < installedPackages.size(); i++) {
                String str = ((PackageInfo) installedPackages.get(i)).packageName;
                if (str.equalsIgnoreCase("au.com.nexty.today") || str.equalsIgnoreCase("au.com.nexty")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isTodayAuClientAvailableToDetail(Context context2) {
        List installedPackages = context2.getPackageManager().getInstalledPackages(0);
        if (installedPackages != null) {
            int i = 0;
            while (true) {
                if (i >= installedPackages.size()) {
                    break;
                }
                String str = ((PackageInfo) installedPackages.get(i)).packageName;
                if (!str.equalsIgnoreCase("au.com.nexty.today") && !str.equalsIgnoreCase("au.com.nexty")) {
                    i++;
                }
            }
            if (((PackageInfo) installedPackages.get(i)).versionCode > 2019071901) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNetWrok(Context context2) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context2.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static byte[] bmpToByteArray(Bitmap bitmap, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        if (z) {
            bitmap.recycle();
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return byteArray;
    }

    public static PackageInfo getPackageInfo(Context context2) {
        try {
            return context2.getPackageManager().getPackageInfo(context2.getPackageName(), 16384);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean validateApk(Context context2, String str) {
        if (context2.getPackageManager().getPackageArchiveInfo(str, 0) == null) {
            return false;
        }
        return true;
    }

    public static final String SHA1(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(CommonUtils.SHA1_INSTANCE);
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & Draft_75.END_OF_FRAME);
                if (hexString.length() < 2) {
                    stringBuffer.append(0);
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean isQuicklyScroll() {
        boolean z;
        if (System.currentTimeMillis() - currentTime <= 300) {
            z = true;
            AILog.d("*** quickly scroll!");
        } else {
            z = false;
        }
        currentTime = System.currentTimeMillis();
        return z;
    }

    public static String getAppMetaData(Context context2, String str) {
        if (context2 == null || StringUtils.isEmpty(str)) {
            return null;
        }
        try {
            PackageManager packageManager = context2.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context2.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return null;
            }
            return applicationInfo.metaData.getString(str);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isGooglePlayVersion() {
        String str = "CHANNEL";
        return !StringUtils.isEmpty(getAppMetaData(getContext(), str)) && getAppMetaData(getContext(), str).equals("google_play");
    }

    public static boolean isEmail(String str) {
        String str2 = "^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$";
        if (StringUtils.isEmpty(str2)) {
            return false;
        }
        return str.matches(str2);
    }
}
