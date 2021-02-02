package com.kantv.flt_tencent_im.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.text.TextUtils;
import com.tencent.openqq.protocol.imsdk.im_common;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class ImageUtil {

    public static class CopyImageInfo {
        int height;
        String path;
        int width;

        public String getPath() {
            return this.path;
        }

        public void setPath(String str) {
            this.path = str;
        }

        public int getWidth() {
            return this.width;
        }

        public void setWidth(int i) {
            this.width = i;
        }

        public int getHeight() {
            return this.height;
        }

        public void setHeight(int i) {
            this.height = i;
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:15|14|17|18|(0)|24) */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0032, code lost:
        r4 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x004b, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x004c, code lost:
        r0.printStackTrace();
        r3.deleteOnExit();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0034 */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0039 A[SYNTHETIC, Splitter:B:20:0x0039] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0047 A[SYNTHETIC, Splitter:B:26:0x0047] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.io.File storeBitmap(java.io.File r3, android.graphics.Bitmap r4) {
        /*
            boolean r0 = r3.exists()
            if (r0 == 0) goto L_0x000c
            boolean r0 = r3.isDirectory()
            if (r0 == 0) goto L_0x0013
        L_0x000c:
            java.io.File r0 = r3.getParentFile()
            r0.mkdirs()
        L_0x0013:
            r0 = 0
            r3.deleteOnExit()     // Catch:{ IOException -> 0x0034 }
            r3.createNewFile()     // Catch:{ IOException -> 0x0034 }
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0034 }
            r1.<init>(r3)     // Catch:{ IOException -> 0x0034 }
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch:{ IOException -> 0x0030, all -> 0x002d }
            r2 = 100
            r4.compress(r0, r2, r1)     // Catch:{ IOException -> 0x0030, all -> 0x002d }
            r1.flush()     // Catch:{ IOException -> 0x0030, all -> 0x002d }
            r1.close()     // Catch:{ IOException -> 0x003d }
            goto L_0x0044
        L_0x002d:
            r4 = move-exception
            r0 = r1
            goto L_0x0045
        L_0x0030:
            r0 = r1
            goto L_0x0034
        L_0x0032:
            r4 = move-exception
            goto L_0x0045
        L_0x0034:
            r3.deleteOnExit()     // Catch:{ all -> 0x0032 }
            if (r0 == 0) goto L_0x0044
            r0.close()     // Catch:{ IOException -> 0x003d }
            goto L_0x0044
        L_0x003d:
            r4 = move-exception
            r4.printStackTrace()
            r3.deleteOnExit()
        L_0x0044:
            return r3
        L_0x0045:
            if (r0 == 0) goto L_0x0052
            r0.close()     // Catch:{ IOException -> 0x004b }
            goto L_0x0052
        L_0x004b:
            r0 = move-exception
            r0.printStackTrace()
            r3.deleteOnExit()
        L_0x0052:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.ImageUtil.storeBitmap(java.io.File, android.graphics.Bitmap):java.io.File");
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0056 A[Catch:{ Exception -> 0x0080 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.graphics.Bitmap getBitmapFormPath(android.net.Uri r9) {
        /*
            r0 = 0
            android.content.Context r1 = com.kantv.flt_tencent_im.TUIKit.getAppContext()     // Catch:{ Exception -> 0x0080 }
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch:{ Exception -> 0x0080 }
            java.io.InputStream r1 = r1.openInputStream(r9)     // Catch:{ Exception -> 0x0080 }
            android.graphics.BitmapFactory$Options r2 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0080 }
            r2.<init>()     // Catch:{ Exception -> 0x0080 }
            r3 = 1
            r2.inJustDecodeBounds = r3     // Catch:{ Exception -> 0x0080 }
            r2.inDither = r3     // Catch:{ Exception -> 0x0080 }
            android.graphics.Bitmap$Config r4 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ Exception -> 0x0080 }
            r2.inPreferredConfig = r4     // Catch:{ Exception -> 0x0080 }
            android.graphics.BitmapFactory.decodeStream(r1, r0, r2)     // Catch:{ Exception -> 0x0080 }
            r1.close()     // Catch:{ Exception -> 0x0080 }
            int r1 = r2.outWidth     // Catch:{ Exception -> 0x0080 }
            int r2 = r2.outHeight     // Catch:{ Exception -> 0x0080 }
            r4 = -1
            if (r1 == r4) goto L_0x007f
            if (r2 != r4) goto L_0x002b
            goto L_0x007f
        L_0x002b:
            int r4 = getBitmapDegree(r9)     // Catch:{ Exception -> 0x0080 }
            r5 = 90
            r6 = 1139802112(0x43f00000, float:480.0)
            r7 = 1145569280(0x44480000, float:800.0)
            if (r4 == r5) goto L_0x003b
            r5 = 270(0x10e, float:3.78E-43)
            if (r4 != r5) goto L_0x003f
        L_0x003b:
            r6 = 1145569280(0x44480000, float:800.0)
            r7 = 1139802112(0x43f00000, float:480.0)
        L_0x003f:
            if (r1 <= r2) goto L_0x0049
            float r5 = (float) r1     // Catch:{ Exception -> 0x0080 }
            int r8 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r8 <= 0) goto L_0x0049
            float r5 = r5 / r6
            int r1 = (int) r5     // Catch:{ Exception -> 0x0080 }
            goto L_0x0054
        L_0x0049:
            if (r1 >= r2) goto L_0x0053
            float r1 = (float) r2     // Catch:{ Exception -> 0x0080 }
            int r2 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            if (r2 <= 0) goto L_0x0053
            float r1 = r1 / r7
            int r1 = (int) r1     // Catch:{ Exception -> 0x0080 }
            goto L_0x0054
        L_0x0053:
            r1 = 1
        L_0x0054:
            if (r1 > 0) goto L_0x0057
            r1 = 1
        L_0x0057:
            android.graphics.BitmapFactory$Options r2 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0080 }
            r2.<init>()     // Catch:{ Exception -> 0x0080 }
            r2.inSampleSize = r1     // Catch:{ Exception -> 0x0080 }
            r2.inDither = r3     // Catch:{ Exception -> 0x0080 }
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ Exception -> 0x0080 }
            r2.inPreferredConfig = r1     // Catch:{ Exception -> 0x0080 }
            android.content.Context r1 = com.kantv.flt_tencent_im.TUIKit.getAppContext()     // Catch:{ Exception -> 0x0080 }
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch:{ Exception -> 0x0080 }
            java.io.InputStream r9 = r1.openInputStream(r9)     // Catch:{ Exception -> 0x0080 }
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r9, r0, r2)     // Catch:{ Exception -> 0x0080 }
            r9.close()     // Catch:{ Exception -> 0x0080 }
            compressImage(r0)     // Catch:{ Exception -> 0x0080 }
            android.graphics.Bitmap r9 = rotateBitmapByDegree(r0, r4)     // Catch:{ Exception -> 0x0080 }
            goto L_0x0085
        L_0x007f:
            return r0
        L_0x0080:
            r9 = move-exception
            r9.printStackTrace()
            r9 = r0
        L_0x0085:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.ImageUtil.getBitmapFormPath(android.net.Uri):android.graphics.Bitmap");
    }

    public static Bitmap getBitmapFormPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return getBitmapFormPath(Uri.fromFile(new File(str)));
    }

    public static Bitmap compressImage(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(CompressFormat.JPEG, 100, byteArrayOutputStream);
        int i = 100;
        while (byteArrayOutputStream.toByteArray().length / 1024 > 100) {
            byteArrayOutputStream.reset();
            bitmap.compress(CompressFormat.JPEG, i, byteArrayOutputStream);
            i -= 10;
        }
        return BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), null, null);
    }

    public static int getBitmapDegree(Uri uri) {
        try {
            int attributeInt = new ExifInterface(FileUtil.getPathFromUri(uri)).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            return im_common.WPA_QZONE;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static int getBitmapDegree(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            return im_common.WPA_QZONE;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static Bitmap rotateBitmapByDegree(Bitmap bitmap, int i) {
        Bitmap bitmap2;
        Matrix matrix = new Matrix();
        matrix.postRotate((float) i);
        try {
            bitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (OutOfMemoryError unused) {
            bitmap2 = null;
        }
        if (bitmap2 == null) {
            bitmap2 = bitmap;
        }
        if (bitmap != bitmap2) {
            bitmap.recycle();
        }
        return bitmap2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0045 A[Catch:{ Exception -> 0x0068 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int[] getImageSize(java.lang.String r10) {
        /*
            r0 = 2
            int[] r0 = new int[r0]
            android.graphics.BitmapFactory$Options r1 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0068 }
            r1.<init>()     // Catch:{ Exception -> 0x0068 }
            r2 = 1
            r1.inJustDecodeBounds = r2     // Catch:{ Exception -> 0x0068 }
            android.graphics.BitmapFactory.decodeFile(r10, r1)     // Catch:{ Exception -> 0x0068 }
            int r3 = r1.outWidth     // Catch:{ Exception -> 0x0068 }
            int r1 = r1.outHeight     // Catch:{ Exception -> 0x0068 }
            int r4 = getBitmapDegree(r10)     // Catch:{ Exception -> 0x0068 }
            r5 = 0
            if (r4 != 0) goto L_0x001e
            r0[r5] = r3     // Catch:{ Exception -> 0x0068 }
            r0[r2] = r1     // Catch:{ Exception -> 0x0068 }
            goto L_0x006c
        L_0x001e:
            r6 = 90
            r7 = 1139802112(0x43f00000, float:480.0)
            r8 = 1145569280(0x44480000, float:800.0)
            if (r4 == r6) goto L_0x002a
            r6 = 270(0x10e, float:3.78E-43)
            if (r4 != r6) goto L_0x002e
        L_0x002a:
            r7 = 1145569280(0x44480000, float:800.0)
            r8 = 1139802112(0x43f00000, float:480.0)
        L_0x002e:
            if (r3 <= r1) goto L_0x0038
            float r6 = (float) r3     // Catch:{ Exception -> 0x0068 }
            int r9 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r9 <= 0) goto L_0x0038
            float r6 = r6 / r7
            int r1 = (int) r6     // Catch:{ Exception -> 0x0068 }
            goto L_0x0043
        L_0x0038:
            if (r3 >= r1) goto L_0x0042
            float r1 = (float) r1     // Catch:{ Exception -> 0x0068 }
            int r3 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r3 <= 0) goto L_0x0042
            float r1 = r1 / r8
            int r1 = (int) r1     // Catch:{ Exception -> 0x0068 }
            goto L_0x0043
        L_0x0042:
            r1 = 1
        L_0x0043:
            if (r1 > 0) goto L_0x0046
            r1 = 1
        L_0x0046:
            android.graphics.BitmapFactory$Options r3 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0068 }
            r3.<init>()     // Catch:{ Exception -> 0x0068 }
            r3.inSampleSize = r1     // Catch:{ Exception -> 0x0068 }
            r3.inDither = r2     // Catch:{ Exception -> 0x0068 }
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ Exception -> 0x0068 }
            r3.inPreferredConfig = r1     // Catch:{ Exception -> 0x0068 }
            android.graphics.Bitmap r10 = android.graphics.BitmapFactory.decodeFile(r10, r3)     // Catch:{ Exception -> 0x0068 }
            android.graphics.Bitmap r10 = rotateBitmapByDegree(r10, r4)     // Catch:{ Exception -> 0x0068 }
            int r1 = r10.getWidth()     // Catch:{ Exception -> 0x0068 }
            r0[r5] = r1     // Catch:{ Exception -> 0x0068 }
            int r10 = r10.getHeight()     // Catch:{ Exception -> 0x0068 }
            r0[r2] = r10     // Catch:{ Exception -> 0x0068 }
            goto L_0x006c
        L_0x0068:
            r10 = move-exception
            r10.printStackTrace()
        L_0x006c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.ImageUtil.getImageSize(java.lang.String):int[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0052 A[Catch:{ Exception -> 0x0081 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int[] getImageSize(android.net.Uri r11) {
        /*
            r0 = 2
            int[] r0 = new int[r0]
            android.content.Context r1 = com.kantv.flt_tencent_im.TUIKit.getAppContext()     // Catch:{ Exception -> 0x0081 }
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch:{ Exception -> 0x0081 }
            java.io.InputStream r1 = r1.openInputStream(r11)     // Catch:{ Exception -> 0x0081 }
            android.graphics.BitmapFactory$Options r2 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0081 }
            r2.<init>()     // Catch:{ Exception -> 0x0081 }
            r3 = 1
            r2.inJustDecodeBounds = r3     // Catch:{ Exception -> 0x0081 }
            r4 = 0
            android.graphics.BitmapFactory.decodeStream(r1, r4, r2)     // Catch:{ Exception -> 0x0081 }
            int r1 = r2.outWidth     // Catch:{ Exception -> 0x0081 }
            int r2 = r2.outHeight     // Catch:{ Exception -> 0x0081 }
            int r5 = getBitmapDegree(r11)     // Catch:{ Exception -> 0x0081 }
            r6 = 0
            if (r5 != 0) goto L_0x002b
            r0[r6] = r1     // Catch:{ Exception -> 0x0081 }
            r0[r3] = r2     // Catch:{ Exception -> 0x0081 }
            goto L_0x0085
        L_0x002b:
            r7 = 90
            r8 = 1139802112(0x43f00000, float:480.0)
            r9 = 1145569280(0x44480000, float:800.0)
            if (r5 == r7) goto L_0x0037
            r7 = 270(0x10e, float:3.78E-43)
            if (r5 != r7) goto L_0x003b
        L_0x0037:
            r8 = 1145569280(0x44480000, float:800.0)
            r9 = 1139802112(0x43f00000, float:480.0)
        L_0x003b:
            if (r1 <= r2) goto L_0x0045
            float r7 = (float) r1     // Catch:{ Exception -> 0x0081 }
            int r10 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r10 <= 0) goto L_0x0045
            float r7 = r7 / r8
            int r1 = (int) r7     // Catch:{ Exception -> 0x0081 }
            goto L_0x0050
        L_0x0045:
            if (r1 >= r2) goto L_0x004f
            float r1 = (float) r2     // Catch:{ Exception -> 0x0081 }
            int r2 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r2 <= 0) goto L_0x004f
            float r1 = r1 / r9
            int r1 = (int) r1     // Catch:{ Exception -> 0x0081 }
            goto L_0x0050
        L_0x004f:
            r1 = 1
        L_0x0050:
            if (r1 > 0) goto L_0x0053
            r1 = 1
        L_0x0053:
            android.graphics.BitmapFactory$Options r2 = new android.graphics.BitmapFactory$Options     // Catch:{ Exception -> 0x0081 }
            r2.<init>()     // Catch:{ Exception -> 0x0081 }
            r2.inSampleSize = r1     // Catch:{ Exception -> 0x0081 }
            r2.inDither = r3     // Catch:{ Exception -> 0x0081 }
            android.graphics.Bitmap$Config r1 = android.graphics.Bitmap.Config.ARGB_8888     // Catch:{ Exception -> 0x0081 }
            r2.inPreferredConfig = r1     // Catch:{ Exception -> 0x0081 }
            android.content.Context r1 = com.kantv.flt_tencent_im.TUIKit.getAppContext()     // Catch:{ Exception -> 0x0081 }
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch:{ Exception -> 0x0081 }
            java.io.InputStream r11 = r1.openInputStream(r11)     // Catch:{ Exception -> 0x0081 }
            android.graphics.Bitmap r11 = android.graphics.BitmapFactory.decodeStream(r11, r4, r2)     // Catch:{ Exception -> 0x0081 }
            android.graphics.Bitmap r11 = rotateBitmapByDegree(r11, r5)     // Catch:{ Exception -> 0x0081 }
            int r1 = r11.getWidth()     // Catch:{ Exception -> 0x0081 }
            r0[r6] = r1     // Catch:{ Exception -> 0x0081 }
            int r11 = r11.getHeight()     // Catch:{ Exception -> 0x0081 }
            r0[r3] = r11     // Catch:{ Exception -> 0x0081 }
            goto L_0x0085
        L_0x0081:
            r11 = move-exception
            r11.printStackTrace()
        L_0x0085:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kantv.flt_tencent_im.utils.ImageUtil.getImageSize(android.net.Uri):int[]");
    }

    public static CopyImageInfo copyImage(String str, String str2) {
        String str3 = ".";
        CopyImageInfo copyImageInfo = new CopyImageInfo();
        if (str == null) {
            return null;
        }
        try {
            int lastIndexOf = str.lastIndexOf(str3);
            String str4 = "";
            if (lastIndexOf >= 0) {
                str4 = str.substring(lastIndexOf + 1);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(File.separator);
            sb.append(System.currentTimeMillis());
            sb.append(str3);
            sb.append(str4);
            String sb2 = sb.toString();
            FileInputStream fileInputStream = new FileInputStream(new File(str));
            int bitmapDegree = getBitmapDegree(str);
            File file = new File(sb2);
            Options options = new Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(fileInputStream, null, options);
            copyImageInfo.setWidth(options.outWidth);
            copyImageInfo.setHeight(options.outHeight);
            if (bitmapDegree == 0) {
                FileInputStream fileInputStream2 = new FileInputStream(new File(str));
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                byte[] bArr = new byte[10240];
                while (true) {
                    int read = fileInputStream2.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileInputStream2.close();
                fileOutputStream.close();
            } else {
                int i = 800;
                int i2 = 400;
                if (bitmapDegree != 90) {
                    if (bitmapDegree != 270) {
                        i = 400;
                        i2 = 800;
                    }
                }
                int i3 = (copyImageInfo.width <= copyImageInfo.height || copyImageInfo.width <= i) ? (copyImageInfo.width >= copyImageInfo.height || copyImageInfo.height <= i2) ? 1 : copyImageInfo.height / i2 : copyImageInfo.width / i;
                if (i3 <= 0) {
                    i3 = 1;
                }
                Options options2 = new Options();
                options2.inSampleSize = i3;
                options2.inDither = true;
                options2.inPreferredConfig = Config.ARGB_8888;
                Bitmap rotateBitmapByDegree = rotateBitmapByDegree(BitmapFactory.decodeStream(new FileInputStream(new File(str)), null, options2), bitmapDegree);
                copyImageInfo.setWidth(rotateBitmapByDegree.getWidth());
                copyImageInfo.setHeight(rotateBitmapByDegree.getHeight());
                storeBitmap(file, rotateBitmapByDegree);
            }
            copyImageInfo.setPath(sb2);
            return copyImageInfo;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static Bitmap toRoundBitmap(Bitmap bitmap) {
        float f;
        float f2;
        float f3;
        float f4;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            f4 = (float) (width / 2);
            f3 = (float) width;
            f = f3;
            f2 = 0.0f;
        } else {
            f2 = (float) ((width - height) / 2);
            f = (float) height;
            f3 = ((float) width) - f2;
            width = height;
            f4 = (float) (height / 2);
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, width, Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect((int) f2, (int) 0.0f, (int) f3, (int) f);
        Rect rect2 = new Rect((int) 0.0f, (int) 0.0f, (int) f, (int) f);
        new RectF(rect2);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawCircle(f4, f4, f4, paint);
        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return createBitmap;
    }
}
