package tv.cjump.jni;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.util.Log;
import androidx.core.internal.view.SupportMenu;
import java.lang.reflect.Field;

public class NativeBitmapFactory {
    static Field nativeIntField = null;
    static boolean nativeLibLoaded = false;
    static boolean notLoadAgain = false;

    private static native Bitmap createBitmap(int i, int i2, int i3, boolean z);

    private static native Bitmap createBitmap19(int i, int i2, int i3, boolean z);

    private static native boolean init();

    private static native boolean release();

    public static boolean isInNativeAlloc() {
        return VERSION.SDK_INT < 11 || (nativeLibLoaded && nativeIntField != null);
    }

    public static void loadLibs() {
        if (!notLoadAgain) {
            if (!DeviceUtils.isRealARMArch() && !DeviceUtils.isRealX86Arch()) {
                notLoadAgain = true;
                nativeLibLoaded = false;
            } else if (!nativeLibLoaded) {
                try {
                    if (VERSION.SDK_INT < 11 || VERSION.SDK_INT >= 23) {
                        notLoadAgain = true;
                        nativeLibLoaded = false;
                    } else {
                        System.loadLibrary("ndkbitmap");
                        nativeLibLoaded = true;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    notLoadAgain = true;
                    nativeLibLoaded = false;
                } catch (Error e2) {
                    e2.printStackTrace();
                    notLoadAgain = true;
                    nativeLibLoaded = false;
                }
                if (nativeLibLoaded) {
                    if (!init()) {
                        release();
                        notLoadAgain = true;
                        nativeLibLoaded = false;
                    } else {
                        initField();
                        if (!testLib()) {
                            release();
                            notLoadAgain = true;
                            nativeLibLoaded = false;
                        }
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("loaded");
                sb.append(nativeLibLoaded);
                Log.e("NativeBitmapFactory", sb.toString());
            }
        }
    }

    public static synchronized void releaseLibs() {
        synchronized (NativeBitmapFactory.class) {
            boolean z = nativeLibLoaded;
            nativeIntField = null;
            nativeLibLoaded = false;
            if (z) {
                release();
            }
        }
    }

    static void initField() {
        try {
            nativeIntField = Config.class.getDeclaredField("nativeInt");
            nativeIntField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            nativeIntField = null;
            e.printStackTrace();
        }
    }

    @SuppressLint({"NewApi"})
    private static boolean testLib() {
        if (nativeIntField == null) {
            return false;
        }
        Bitmap bitmap = null;
        try {
            Bitmap createNativeBitmap = createNativeBitmap(2, 2, Config.ARGB_8888, true);
            boolean z = createNativeBitmap != null && createNativeBitmap.getWidth() == 2 && createNativeBitmap.getHeight() == 2;
            if (z) {
                if (VERSION.SDK_INT >= 17 && !createNativeBitmap.isPremultiplied()) {
                    createNativeBitmap.setPremultiplied(true);
                }
                Canvas canvas = new Canvas(createNativeBitmap);
                Paint paint = new Paint();
                paint.setColor(SupportMenu.CATEGORY_MASK);
                paint.setTextSize(20.0f);
                canvas.drawRect(0.0f, 0.0f, (float) createNativeBitmap.getWidth(), (float) createNativeBitmap.getHeight(), paint);
                canvas.drawText("TestLib", 0.0f, 0.0f, paint);
                if (VERSION.SDK_INT >= 17) {
                    z = createNativeBitmap.isPremultiplied();
                }
            }
            if (createNativeBitmap != null) {
                createNativeBitmap.recycle();
            }
            return z;
        } catch (Exception e) {
            String str = "NativeBitmapFactory";
            StringBuilder sb = new StringBuilder();
            sb.append("exception:");
            sb.append(e.toString());
            Log.e(str, sb.toString());
            if (bitmap != null) {
                bitmap.recycle();
            }
            return false;
        } catch (Error unused) {
            if (bitmap != null) {
                bitmap.recycle();
            }
            return false;
        } catch (Throwable th) {
            if (bitmap != null) {
                bitmap.recycle();
            }
            throw th;
        }
    }

    public static int getNativeConfig(Config config) {
        try {
            if (nativeIntField == null) {
                return 0;
            }
            return nativeIntField.getInt(config);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            return 0;
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static Bitmap createBitmap(int i, int i2, Config config) {
        return createBitmap(i, i2, config, config.equals(Config.ARGB_4444) || config.equals(Config.ARGB_8888));
    }

    public static void recycle(Bitmap bitmap) {
        bitmap.recycle();
    }

    public static synchronized Bitmap createBitmap(int i, int i2, Config config, boolean z) {
        synchronized (NativeBitmapFactory.class) {
            if (nativeLibLoaded) {
                if (nativeIntField != null) {
                    Bitmap createNativeBitmap = createNativeBitmap(i, i2, config, z);
                    return createNativeBitmap;
                }
            }
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, config);
            return createBitmap;
        }
    }

    private static Bitmap createNativeBitmap(int i, int i2, Config config, boolean z) {
        int nativeConfig = getNativeConfig(config);
        if (VERSION.SDK_INT == 19) {
            return createBitmap19(i, i2, nativeConfig, z);
        }
        return createBitmap(i, i2, nativeConfig, z);
    }
}
