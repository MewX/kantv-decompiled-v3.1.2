package com.tencent.connect.share;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.avos.avoscloud.AVException;
import com.tencent.open.a.f;
import com.tencent.open.utils.c;
import com.tencent.open.utils.k;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class a {
    public static final void a(Context context, final String str, final c cVar) {
        f.b("openSDK_LOG.AsynScaleCompressImage", "scaleCompressImage");
        if (TextUtils.isEmpty(str)) {
            cVar.a(1, (String) null);
        } else if (!k.b()) {
            cVar.a(2, (String) null);
        } else {
            final AnonymousClass1 r0 = new Handler(context.getMainLooper()) {
                public void handleMessage(Message message) {
                    int i = message.what;
                    if (i == 101) {
                        cVar.a(0, (String) message.obj);
                    } else if (i != 102) {
                        super.handleMessage(message);
                    } else {
                        cVar.a(message.arg1, (String) null);
                    }
                }
            };
            new Thread(new Runnable() {
                public void run() {
                    String str;
                    Bitmap a2 = a.a(str, (int) AVException.EXCEEDED_QUOTA);
                    if (a2 != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(Environment.getExternalStorageDirectory());
                        sb.append("/tmp/");
                        String sb2 = sb.toString();
                        String f = k.f(str);
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("share2qq_temp");
                        sb3.append(f);
                        sb3.append(".jpg");
                        String sb4 = sb3.toString();
                        String str2 = "openSDK_LOG.AsynScaleCompressImage";
                        if (!a.b(str, (int) AVException.EXCEEDED_QUOTA, (int) AVException.EXCEEDED_QUOTA)) {
                            f.b(str2, "not out of bound,not compress!");
                            str = str;
                        } else {
                            f.b(str2, "out of bound,compress!");
                            str = a.a(a2, sb2, sb4);
                        }
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("-->destFilePath: ");
                        sb5.append(str);
                        f.b(str2, sb5.toString());
                        if (str != null) {
                            Message obtainMessage = r0.obtainMessage(101);
                            obtainMessage.obj = str;
                            r0.sendMessage(obtainMessage);
                            return;
                        }
                    }
                    Message obtainMessage2 = r0.obtainMessage(102);
                    obtainMessage2.arg1 = 3;
                    r0.sendMessage(obtainMessage2);
                }
            }).start();
        }
    }

    public static final void a(Context context, final ArrayList<String> arrayList, final c cVar) {
        f.b("openSDK_LOG.AsynScaleCompressImage", "batchScaleCompressImage");
        if (arrayList == null) {
            cVar.a(1, (String) null);
            return;
        }
        final AnonymousClass3 r0 = new Handler(context.getMainLooper()) {
            public void handleMessage(Message message) {
                if (message.what != 101) {
                    super.handleMessage(message);
                    return;
                }
                cVar.a(0, message.getData().getStringArrayList("images"));
            }
        };
        new Thread(new Runnable() {
            public void run() {
                for (int i = 0; i < arrayList.size(); i++) {
                    String str = (String) arrayList.get(i);
                    if (!k.g(str) && k.h(str)) {
                        Bitmap a2 = a.a(str, 10000);
                        if (a2 != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(Environment.getExternalStorageDirectory());
                            sb.append("/tmp/");
                            String sb2 = sb.toString();
                            String f = k.f(str);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("share2qzone_temp");
                            sb3.append(f);
                            sb3.append(".jpg");
                            String sb4 = sb3.toString();
                            String str2 = "openSDK_LOG.AsynScaleCompressImage";
                            if (!a.b(str, 640, 10000)) {
                                f.b(str2, "not out of bound,not compress!");
                            } else {
                                f.b(str2, "out of bound, compress!");
                                str = a.a(a2, sb2, sb4);
                            }
                            if (str != null) {
                                arrayList.set(i, str);
                            }
                        }
                    }
                }
                Message obtainMessage = r0.obtainMessage(101);
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("images", arrayList);
                obtainMessage.setData(bundle);
                r0.sendMessage(obtainMessage);
            }
        }).start();
    }

    private static Bitmap a(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            width = height;
        }
        float f = ((float) i) / ((float) width);
        matrix.postScale(f, f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    protected static final String a(Bitmap bitmap, String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        stringBuffer.append(str2);
        String stringBuffer2 = stringBuffer.toString();
        File file2 = new File(stringBuffer2);
        if (file2.exists()) {
            file2.delete();
        }
        if (bitmap != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                bitmap.compress(CompressFormat.JPEG, 80, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                bitmap.recycle();
                return stringBuffer2;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    /* access modifiers changed from: private */
    public static final boolean b(String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
            return false;
        }
        int i5 = i3 > i4 ? i3 : i4;
        if (i3 >= i4) {
            i3 = i4;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("longSide=");
        sb.append(i5);
        sb.append("shortSide=");
        sb.append(i3);
        f.b("openSDK_LOG.AsynScaleCompressImage", sb.toString());
        options.inPreferredConfig = Config.RGB_565;
        if (i5 > i2 || i3 > i) {
            return true;
        }
        return false;
    }

    public static final Bitmap a(String str, int i) {
        Bitmap bitmap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
            return null;
        }
        if (i2 <= i3) {
            i2 = i3;
        }
        options.inPreferredConfig = Config.RGB_565;
        if (i2 > i) {
            options.inSampleSize = a(options, -1, i * i);
        }
        options.inJustDecodeBounds = false;
        try {
            bitmap = BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            bitmap = null;
        }
        if (bitmap == null) {
            return null;
        }
        int i4 = options.outWidth;
        int i5 = options.outHeight;
        if (i4 > i5) {
            i5 = i4;
        }
        if (i5 > i) {
            bitmap = a(bitmap, i);
        }
        return bitmap;
    }

    public static final int a(Options options, int i, int i2) {
        int b = b(options, i, i2);
        if (b > 8) {
            return ((b + 7) / 8) * 8;
        }
        int i3 = 1;
        while (i3 < b) {
            i3 <<= 1;
        }
        return i3;
    }

    private static int b(Options options, int i, int i2) {
        int i3;
        int i4;
        double d = (double) options.outWidth;
        double d2 = (double) options.outHeight;
        if (i2 == -1) {
            i3 = 1;
        } else {
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d * d2;
            double d4 = (double) i2;
            Double.isNaN(d4);
            i3 = (int) Math.ceil(Math.sqrt(d3 / d4));
        }
        if (i == -1) {
            i4 = 128;
        } else {
            double d5 = (double) i;
            Double.isNaN(d);
            Double.isNaN(d5);
            double floor = Math.floor(d / d5);
            Double.isNaN(d2);
            Double.isNaN(d5);
            i4 = (int) Math.min(floor, Math.floor(d2 / d5));
        }
        if (i4 < i3) {
            return i3;
        }
        if (i2 == -1 && i == -1) {
            return 1;
        }
        return i == -1 ? i3 : i4;
    }
}
