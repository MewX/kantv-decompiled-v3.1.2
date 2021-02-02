package com.kantv.ui.photo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class FileUtil {
    public static String getCachePath(Context context) {
        if ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) {
            return context.getExternalCacheDir().getPath();
        }
        return context.getCacheDir().getPath();
    }

    public static boolean deleteFile(File file) {
        if (!file.exists() || !file.isFile()) {
            return false;
        }
        return file.delete();
    }

    public static void recursionDeleteFile(File file) {
        if (file.isFile()) {
            file.delete();
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null || listFiles.length == 0) {
                file.delete();
            } else {
                for (File recursionDeleteFile : listFiles) {
                    recursionDeleteFile(recursionDeleteFile);
                }
                file.delete();
            }
        }
    }

    public static File getSmallBitmap(Context context, String str) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, 480, 800);
        options.inJustDecodeBounds = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(str, options);
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir());
        sb.append(File.separator);
        sb.append("video-");
        sb.append(decodeFile.hashCode());
        sb.append(".jpg");
        String sb2 = sb.toString();
        saveBitmap2File(decodeFile, sb2);
        return new File(sb2);
    }

    public static int calculateInSampleSize(Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        if (i3 <= i2 && i4 <= i) {
            return 1;
        }
        int round = Math.round((float) i3) / i2;
        int round2 = Math.round((float) i4) / i;
        return round < round2 ? round : round2;
    }

    public static boolean saveBitmap2File(Bitmap bitmap, String str) {
        FileOutputStream fileOutputStream;
        CompressFormat compressFormat = CompressFormat.JPEG;
        try {
            fileOutputStream = new FileOutputStream(str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            fileOutputStream = null;
        }
        return bitmap.compress(compressFormat, 50, fileOutputStream);
    }
}
