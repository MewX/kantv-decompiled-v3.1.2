package com.kantv.ui.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class SDCardHelper {
    public static boolean isSDCardMounted() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static String getSDCardBaseDir() {
        if (isSDCardMounted()) {
            return Environment.getExternalStorageDirectory().getAbsolutePath();
        }
        return null;
    }

    public String formetFileSize(long j) {
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

    public static boolean saveFileToSDCardPublicDir(byte[] bArr, String str, String str2) {
        BufferedOutputStream bufferedOutputStream;
        if (isSDCardMounted()) {
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(Environment.getExternalStoragePublicDirectory(str), str2)));
            } catch (Exception e) {
                e = e;
                try {
                    e.printStackTrace();
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            }
            try {
                bufferedOutputStream.write(bArr);
                bufferedOutputStream.flush();
                try {
                    bufferedOutputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return true;
            } catch (Exception e5) {
                e = e5;
                bufferedOutputStream2 = bufferedOutputStream;
                e.printStackTrace();
                bufferedOutputStream2.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                bufferedOutputStream2.close();
                throw th;
            }
        }
        return false;
    }

    public static boolean saveFileToSDCardCustomDir(byte[] bArr, String str, String str2) {
        BufferedOutputStream bufferedOutputStream;
        if (isSDCardMounted()) {
            StringBuilder sb = new StringBuilder();
            sb.append(getSDCardBaseDir());
            sb.append(File.separator);
            sb.append(str);
            File file = new File(sb.toString());
            if (!file.exists()) {
                file.mkdirs();
            }
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(file, str2)));
            } catch (Exception e) {
                e = e;
                try {
                    e.printStackTrace();
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            }
            try {
                bufferedOutputStream.write(bArr);
                bufferedOutputStream.flush();
                try {
                    bufferedOutputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return true;
            } catch (Exception e5) {
                e = e5;
                bufferedOutputStream2 = bufferedOutputStream;
                e.printStackTrace();
                bufferedOutputStream2.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                bufferedOutputStream2.close();
                throw th;
            }
        }
        return false;
    }

    public static boolean saveFileToSDCardPrivateFilesDir(byte[] bArr, String str, String str2, Context context) {
        BufferedOutputStream bufferedOutputStream;
        if (isSDCardMounted()) {
            File externalFilesDir = context.getExternalFilesDir(str);
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(externalFilesDir, str2)));
            } catch (Exception e) {
                e = e;
                try {
                    e.printStackTrace();
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            }
            try {
                bufferedOutputStream.write(bArr);
                bufferedOutputStream.flush();
                try {
                    bufferedOutputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return true;
            } catch (Exception e5) {
                e = e5;
                bufferedOutputStream2 = bufferedOutputStream;
                e.printStackTrace();
                bufferedOutputStream2.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                bufferedOutputStream2.close();
                throw th;
            }
        }
        return false;
    }

    public static boolean saveFileToSDCardPrivateCacheDir(byte[] bArr, String str, Context context) {
        BufferedOutputStream bufferedOutputStream;
        if (isSDCardMounted()) {
            BufferedOutputStream bufferedOutputStream2 = null;
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(new File(context.getExternalCacheDir(), str)));
            } catch (Exception e) {
                e = e;
                try {
                    e.printStackTrace();
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    try {
                        bufferedOutputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            }
            try {
                bufferedOutputStream.write(bArr);
                bufferedOutputStream.flush();
                try {
                    bufferedOutputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                return true;
            } catch (Exception e5) {
                e = e5;
                bufferedOutputStream2 = bufferedOutputStream;
                e.printStackTrace();
                bufferedOutputStream2.close();
                return false;
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                bufferedOutputStream2.close();
                throw th;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x004e A[SYNTHETIC, Splitter:B:27:0x004e] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x005a A[SYNTHETIC, Splitter:B:34:0x005a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean saveBitmapToSDCardPrivateCacheDir(android.graphics.Bitmap r4, java.lang.String r5, android.content.Context r6) {
        /*
            boolean r0 = isSDCardMounted()
            if (r0 == 0) goto L_0x0063
            r0 = 0
            java.io.File r6 = r6.getExternalCacheDir()
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch:{ Exception -> 0x0048 }
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0048 }
            java.io.File r3 = new java.io.File     // Catch:{ Exception -> 0x0048 }
            r3.<init>(r6, r5)     // Catch:{ Exception -> 0x0048 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0048 }
            r1.<init>(r2)     // Catch:{ Exception -> 0x0048 }
            r6 = 100
            if (r5 == 0) goto L_0x0034
            java.lang.String r0 = ".png"
            boolean r0 = r5.contains(r0)     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            if (r0 != 0) goto L_0x002e
            java.lang.String r0 = ".PNG"
            boolean r5 = r5.contains(r0)     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            if (r5 == 0) goto L_0x0034
        L_0x002e:
            android.graphics.Bitmap$CompressFormat r5 = android.graphics.Bitmap.CompressFormat.PNG     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            r4.compress(r5, r6, r1)     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            goto L_0x0039
        L_0x0034:
            android.graphics.Bitmap$CompressFormat r5 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            r4.compress(r5, r6, r1)     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
        L_0x0039:
            r1.flush()     // Catch:{ Exception -> 0x0042, all -> 0x0040 }
            r1.close()     // Catch:{ IOException -> 0x0052 }
            goto L_0x0056
        L_0x0040:
            r4 = move-exception
            goto L_0x0058
        L_0x0042:
            r4 = move-exception
            r0 = r1
            goto L_0x0049
        L_0x0045:
            r4 = move-exception
            r1 = r0
            goto L_0x0058
        L_0x0048:
            r4 = move-exception
        L_0x0049:
            r4.printStackTrace()     // Catch:{ all -> 0x0045 }
            if (r0 == 0) goto L_0x0056
            r0.close()     // Catch:{ IOException -> 0x0052 }
            goto L_0x0056
        L_0x0052:
            r4 = move-exception
            r4.printStackTrace()
        L_0x0056:
            r4 = 1
            return r4
        L_0x0058:
            if (r1 == 0) goto L_0x0062
            r1.close()     // Catch:{ IOException -> 0x005e }
            goto L_0x0062
        L_0x005e:
            r5 = move-exception
            r5.printStackTrace()
        L_0x0062:
            throw r4
        L_0x0063:
            r4 = 0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.ui.utils.SDCardHelper.saveBitmapToSDCardPrivateCacheDir(android.graphics.Bitmap, java.lang.String, android.content.Context):boolean");
    }

    public static byte[] loadFileFromSDCard(String str) {
        BufferedInputStream bufferedInputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(new FileInputStream(new File(str)));
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                    byteArrayOutputStream.flush();
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    bufferedInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return byteArray;
            } catch (Exception e2) {
                e = e2;
                try {
                    e.printStackTrace();
                    try {
                        byteArrayOutputStream.close();
                        bufferedInputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream2 = bufferedInputStream;
                    try {
                        byteArrayOutputStream.close();
                        bufferedInputStream2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    throw th;
                }
            }
        } catch (Exception e5) {
            e = e5;
            bufferedInputStream = null;
            e.printStackTrace();
            byteArrayOutputStream.close();
            bufferedInputStream.close();
            return null;
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream.close();
            bufferedInputStream2.close();
            throw th;
        }
    }

    public Bitmap loadBitmapFromSDCard(String str) {
        byte[] loadFileFromSDCard = loadFileFromSDCard(str);
        if (loadFileFromSDCard != null) {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(loadFileFromSDCard, 0, loadFileFromSDCard.length);
            if (decodeByteArray != null) {
                return decodeByteArray;
            }
        }
        return null;
    }

    public static String getSDCardPublicDir(String str) {
        return Environment.getExternalStoragePublicDirectory(str).toString();
    }

    public static String getSDCardPrivateCacheDir(Context context) {
        return context.getExternalCacheDir().getAbsolutePath();
    }

    public static String getSDCardPrivateFilesDir(Context context, String str) {
        return context.getExternalFilesDir(str) != null ? context.getExternalFilesDir(str).getAbsolutePath() : "";
    }

    public static boolean isFileExist(String str) {
        return new File(str).isFile();
    }

    public static boolean removeFileFromSDCard(String str) {
        File file = new File(str);
        if (file.exists()) {
            try {
                file.delete();
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }
}
