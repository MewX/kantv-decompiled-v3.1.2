package com.kantv.ui.download;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.Utils;
import com.kantv.ui.utils.SDCardHelper;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class SettingsManager {
    private static final String DEFAULT_PREFERENCES_NAME = "defaultPreferences";
    public static String DIRPATH = null;
    public static final String DOWNVIDEOTIME = "dwonvideotime";
    public static final String DOWNVIDEOTIMEARRAY = "dwonvideotimearray";
    public static final String ISPHONESDCARD = "isphonesdcard";
    public static final String M3U8 = "play.m3u8";
    public static final int MYDOWNLOADACTIVITY = 1200;
    public static String PHOTODIRPATH = null;
    private static final String PREFERENCE_FIRST_RUN = "isFirstRun";
    public static final String TS = "test.ts";
    public static boolean isPhoneSdCard = true;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(SDCardHelper.getSDCardPrivateFilesDir(Utils.getContext(), Environment.DIRECTORY_MOVIES));
        sb.append(File.separator);
        sb.append("Kantv");
        DIRPATH = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SDCardHelper.getSDCardPrivateFilesDir(Utils.getContext(), Environment.DIRECTORY_MOVIES));
        sb2.append(File.separator);
        sb2.append("Kantvphoto");
        PHOTODIRPATH = sb2.toString();
    }

    private static SharedPreferences getDefaultPreferences(Context context) {
        return context.getSharedPreferences(DEFAULT_PREFERENCES_NAME, 0);
    }

    public static boolean isFirstRun(Context context) {
        SharedPreferences defaultPreferences = getDefaultPreferences(context);
        String str = PREFERENCE_FIRST_RUN;
        boolean z = defaultPreferences.getBoolean(str, true);
        if (!z) {
            defaultPreferences.edit().putBoolean(str, false).apply();
        }
        return z;
    }

    public static void changePath(boolean z, String str, Context context) {
        if (z) {
            isPhoneSdCard = true;
            StringBuilder sb = new StringBuilder();
            sb.append(SDCardHelper.getSDCardPrivateFilesDir(Utils.getContext(), Environment.DIRECTORY_MOVIES));
            sb.append("Kantv");
            DIRPATH = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDCardHelper.getSDCardPrivateFilesDir(Utils.getContext(), Environment.DIRECTORY_MOVIES));
            sb2.append("Kantvphoto");
            PHOTODIRPATH = sb2.toString();
            return;
        }
        isPhoneSdCard = false;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str);
        sb3.append(File.separator);
        String str2 = "Android/data/";
        sb3.append(str2);
        sb3.append(context.getPackageName());
        sb3.append("/files/Kantv");
        DIRPATH = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(str);
        sb4.append(File.separator);
        sb4.append(str2);
        sb4.append(context.getPackageName());
        sb4.append("/files/Kantvphoto");
        PHOTODIRPATH = sb4.toString();
    }

    public static boolean checkSDCard() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String getDirPath() {
        return checkSDCard() ? DIRPATH : "";
    }

    public static String getPhotoDirPath() {
        return checkSDCard() ? PHOTODIRPATH : "";
    }

    public static String getSd(File file) {
        try {
            if (Environment.getExternalStorageState().equals("mounted")) {
                StatFs statFs = new StatFs(file.getPath());
                long blockSize = (long) statFs.getBlockSize();
                long blockCount = (long) statFs.getBlockCount();
                long availableBlocks = (long) statFs.getAvailableBlocks();
                new DecimalFormat().setGroupingSize(3);
                String formetFileSize = formetFileSize(blockSize * blockCount);
                String formetFileSize2 = formetFileSize(blockSize * availableBlocks);
                String formetFileSize3 = formetFileSize(blockSize * (blockCount - availableBlocks));
                StringBuilder sb = new StringBuilder();
                sb.append("totalSize");
                sb.append(formetFileSize);
                sb.append("    availableSize ");
                sb.append(formetFileSize2);
                sb.append("     useSize");
                sb.append(formetFileSize3);
                AILog.d("SettingsManager", sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append("总容量");
                sb2.append(formetFileSize);
                sb2.append(", 可用空间");
                sb2.append(formetFileSize2);
                return sb2.toString();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    public static String formetFileSize(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (j < 1024) {
            StringBuilder sb = new StringBuilder();
            sb.append(decimalFormat.format((double) j));
            sb.append("B");
            return sb.toString();
        } else if (j < 1048576) {
            StringBuilder sb2 = new StringBuilder();
            double d = (double) j;
            Double.isNaN(d);
            sb2.append(decimalFormat.format(d / 1024.0d));
            sb2.append("KB");
            return sb2.toString();
        } else if (j < IjkMediaMeta.AV_CH_STEREO_RIGHT) {
            StringBuilder sb3 = new StringBuilder();
            double d2 = (double) j;
            Double.isNaN(d2);
            sb3.append(decimalFormat.format(d2 / 1048576.0d));
            sb3.append("M");
            return sb3.toString();
        } else {
            StringBuilder sb4 = new StringBuilder();
            double d3 = (double) j;
            Double.isNaN(d3);
            sb4.append(decimalFormat.format(d3 / 1.073741824E9d));
            sb4.append("G");
            return sb4.toString();
        }
    }

    public static int getVersionCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static String getStoragePath(Context context, boolean z) {
        String str = "setingsmanger";
        String str2 = "";
        if (context == null) {
            return str2;
        }
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        try {
            Class cls = Class.forName("android.os.storage.StorageVolume");
            Method method = storageManager.getClass().getMethod("getVolumeList", new Class[0]);
            Method method2 = cls.getMethod("getPath", new Class[0]);
            Method method3 = cls.getMethod("isRemovable", new Class[0]);
            Object invoke = method.invoke(storageManager, new Object[0]);
            StringBuilder sb = new StringBuilder();
            sb.append("is_removale");
            sb.append(z);
            AILog.d(str, sb.toString());
            int length = Array.getLength(invoke);
            for (int i = 0; i < length; i++) {
                Object obj = Array.get(invoke, i);
                String str3 = (String) method2.invoke(obj, new Object[0]);
                if (z == ((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("is_removale2");
                    sb2.append(str3);
                    AILog.d(str, sb2.toString());
                    return str3;
                }
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e2) {
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        }
        return str2;
    }
}
