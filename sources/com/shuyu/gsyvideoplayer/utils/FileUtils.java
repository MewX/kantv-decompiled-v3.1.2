package com.shuyu.gsyvideoplayer.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class FileUtils {
    public static final String NAME = "GSYVideo";
    public static final String NAME_TEST = "GSYVideoTest";
    private static final String SD_PATH = Environment.getExternalStorageDirectory().getPath();

    public static String getAppPath(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(SD_PATH);
        sb.append(File.separator);
        sb.append(str);
        sb.append(File.separator);
        return sb.toString();
    }

    public static String getPath() {
        String appPath = getAppPath("GSYVideo");
        File file = new File(appPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return appPath;
    }

    public static String getTestPath() {
        String appPath = getAppPath("GSYVideoTest");
        File file = new File(appPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        return appPath;
    }

    public static void deleteFiles(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (!file2.isDirectory() && file2.exists()) {
                    try {
                        file2.delete();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public static void saveBitmap(Bitmap bitmap, File file) {
        if (bitmap != null) {
            try {
                bitmap.compress(CompressFormat.JPEG, 100, new FileOutputStream(file));
                bitmap.recycle();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
    }
}
