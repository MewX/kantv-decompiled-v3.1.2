package com.idlefish.flutterboost;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Color;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.alibaba.fastjson.JSON;
import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class Utils {
    public static void assertCallOnMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            Debuger.exception("must call method on main thread");
        }
    }

    public static void saveBitmap(Bitmap bitmap, File file, String str) {
        try {
            File file2 = new File(file, str);
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    throw new Exception("mkdir except");
                } else if (!file2.createNewFile()) {
                    throw new Exception("createNewFile except");
                }
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            bitmap.compress(CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            StringBuilder sb = new StringBuilder();
            sb.append("saved bitmap:");
            sb.append(file2.getAbsolutePath());
            Debuger.exception(sb.toString());
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public static boolean checkImageValid(Bitmap bitmap) {
        if (bitmap == null) {
            return false;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[(width * height)];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int[] iArr2 = new int[18];
        for (int i = 0; i < 5; i++) {
            int i2 = 4 - (i % 2);
            int i3 = 0;
            while (i3 < i2) {
                int i4 = i + 1;
                i3++;
                iArr2[(i * 3) + i3 + (i4 / 2)] = iArr[(i4 * (height / 6) * width) + ((width / (i2 + 1)) * i3)];
            }
        }
        float[][] fArr = (float[][]) Array.newInstance(float.class, new int[]{iArr2.length, 3});
        for (int i5 = 0; i5 < iArr2.length; i5++) {
            int i6 = iArr2[i5];
            Color.RGBToHSV((16711680 & i6) >> 16, (65280 & i6) >> 8, i6 & 255, fArr[i5]);
        }
        int i7 = 0;
        int i8 = 0;
        while (i7 < iArr2.length) {
            int i9 = i7 + 1;
            int i10 = i8;
            for (int i11 = i9; i11 < iArr2.length; i11++) {
                if (Math.sqrt(Math.pow((double) (fArr[i7][0] - fArr[i11][0]), 2.0d) + Math.pow((double) (fArr[i7][1] - fArr[i11][1]), 2.0d) + Math.pow((double) (fArr[i7][2] - fArr[i11][2]), 2.0d)) >= 1.0d) {
                    i10++;
                }
            }
            i7 = i9;
            i8 = i10;
        }
        if (i8 <= 10) {
            return false;
        }
        return true;
    }

    public static int getMetricsWidth(Context context) {
        if (VERSION.SDK_INT >= 17) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                if (displayMetrics.widthPixels > 0 && displayMetrics.heightPixels > 0) {
                    return displayMetrics.widthPixels;
                }
            }
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static int getMetricsHeight(Context context) {
        if (VERSION.SDK_INT >= 17) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                if (displayMetrics.widthPixels > 0 && displayMetrics.heightPixels > 0) {
                    return displayMetrics.heightPixels;
                }
            }
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int getStatusBarHeight(Context context) {
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static void setStatusBarLightMode(Activity activity, boolean z) {
        String str = "ImmerseTheme";
        try {
            String str2 = Build.MANUFACTURER;
            if (str2 == null) {
                str2 = "unknow";
            }
            String lowerCase = str2.toLowerCase();
            StringBuilder sb = new StringBuilder();
            sb.append("current MANUFACTURER=");
            sb.append(lowerCase);
            Log.e(str, sb.toString());
            if (!lowerCase.contains("xiaomi")) {
                if (!lowerCase.contains("redmi")) {
                    if (lowerCase.contains("meizu")) {
                        StatusbarColorUtils.setStatusBarDarkIcon(activity, true);
                        return;
                    } else if (VERSION.SDK_INT >= 23) {
                        Log.e(str, "setStatusBarLightMode");
                        if (z) {
                            activity.getWindow().getDecorView().setSystemUiVisibility(9216);
                            return;
                        } else {
                            activity.getWindow().getDecorView().setSystemUiVisibility(1024);
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
            setMIUISetStatusBarLightMode(activity, z);
        } catch (Throwable th) {
            Debuger.exception(th);
        }
    }

    private static void setMIUISetStatusBarLightMode(Activity activity, boolean z) {
        try {
            String str = "ImmerseTheme";
            if (isCurrentMIUIVersionBiggerAndEqual("V9")) {
                if (VERSION.SDK_INT >= 23) {
                    Log.e(str, "setMIUISetStatusBarLightMode MIUI > 9");
                    if (z) {
                        activity.getWindow().getDecorView().setSystemUiVisibility(9216);
                        return;
                    } else {
                        activity.getWindow().getDecorView().setSystemUiVisibility(1024);
                        return;
                    }
                }
            }
            if (activity.getWindow() != null) {
                Log.e(str, "setMIUISetStatusBarLightMode MIUI < 9");
                Window window = activity.getWindow();
                Class cls = window.getClass();
                Class cls2 = Class.forName("android.view.MiuiWindowManager$LayoutParams");
                int i = cls2.getField("EXTRA_FLAG_STATUS_BAR_DARK_MODE").getInt(cls2);
                Method method = cls.getMethod("setExtraFlags", new Class[]{Integer.TYPE, Integer.TYPE});
                if (z) {
                    method.invoke(window, new Object[]{Integer.valueOf(i), Integer.valueOf(i)});
                    return;
                }
                method.invoke(window, new Object[]{Integer.valueOf(0), Integer.valueOf(i)});
            }
        } catch (Exception e) {
            Debuger.exception((Throwable) e);
        }
    }

    public static boolean isCurrentMIUIVersionBiggerAndEqual(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean z = true;
        int parseInt = Integer.parseInt(str.substring(1));
        String mIUISystemVersion = getMIUISystemVersion();
        int parseInt2 = (TextUtils.isEmpty(mIUISystemVersion) || mIUISystemVersion.length() <= 1) ? 0 : Integer.parseInt(mIUISystemVersion.substring(1));
        if (parseInt2 == 0 || parseInt == 0 || parseInt2 < parseInt) {
            z = false;
        }
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x002f A[SYNTHETIC, Splitter:B:14:0x002f] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0036 A[SYNTHETIC, Splitter:B:21:0x0036] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getMIUISystemVersion() {
        /*
            r0 = 0
            java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch:{ IOException -> 0x0033, all -> 0x002c }
            java.lang.String r2 = "getprop ro.miui.ui.version.name"
            java.lang.Process r1 = r1.exec(r2)     // Catch:{ IOException -> 0x0033, all -> 0x002c }
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0033, all -> 0x002c }
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x0033, all -> 0x002c }
            java.io.InputStream r1 = r1.getInputStream()     // Catch:{ IOException -> 0x0033, all -> 0x002c }
            r3.<init>(r1)     // Catch:{ IOException -> 0x0033, all -> 0x002c }
            r1 = 1024(0x400, float:1.435E-42)
            r2.<init>(r3, r1)     // Catch:{ IOException -> 0x0033, all -> 0x002c }
            java.lang.String r1 = r2.readLine()     // Catch:{ IOException -> 0x002a, all -> 0x0026 }
            r2.close()     // Catch:{ IOException -> 0x002a, all -> 0x0026 }
            r2.close()     // Catch:{ IOException -> 0x0025 }
        L_0x0025:
            return r1
        L_0x0026:
            r0 = move-exception
            r1 = r0
            r0 = r2
            goto L_0x002d
        L_0x002a:
            goto L_0x0034
        L_0x002c:
            r1 = move-exception
        L_0x002d:
            if (r0 == 0) goto L_0x0032
            r0.close()     // Catch:{ IOException -> 0x0032 }
        L_0x0032:
            throw r1
        L_0x0033:
            r2 = r0
        L_0x0034:
            if (r2 == 0) goto L_0x0039
            r2.close()     // Catch:{ IOException -> 0x0039 }
        L_0x0039:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.idlefish.flutterboost.Utils.getMIUISystemVersion():java.lang.String");
    }

    public static void fixInputMethodManagerLeak(Context context) {
        if (context != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
            if (inputMethodManager != null) {
                String[] strArr = {"mLastSrvView", "mServedView", "mNextServedView"};
                for (String declaredField : strArr) {
                    try {
                        Field declaredField2 = inputMethodManager.getClass().getDeclaredField(declaredField);
                        if (!declaredField2.isAccessible()) {
                            declaredField2.setAccessible(true);
                        }
                        Object obj = declaredField2.get(inputMethodManager);
                        if (obj != null && (obj instanceof View)) {
                            if (((View) obj).getContext() != context) {
                                break;
                            }
                            declaredField2.set(inputMethodManager, null);
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    public static String assembleUrl(String str, Map<String, Object> map) {
        StringBuilder sb = new StringBuilder(str);
        if (map != null && !map.isEmpty()) {
            String str2 = "?";
            if (!sb.toString().contains(str2)) {
                sb.append(str2);
            }
            for (Entry entry : map.entrySet()) {
                if (entry.getValue() instanceof Map) {
                    for (Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                        String str3 = (String) entry2.getKey();
                        String str4 = null;
                        if ((entry2.getValue() instanceof Map) || (entry2.getValue() instanceof List)) {
                            try {
                                str4 = URLEncoder.encode(JSON.toJSONString(entry2.getValue()), "UTF-8");
                            } catch (UnsupportedEncodingException e) {
                                e.printStackTrace();
                            }
                        } else if (entry2.getValue() != null) {
                            str4 = URLEncoder.encode(String.valueOf(entry2.getValue()));
                        }
                        if (str4 != null) {
                            String str5 = "=";
                            if (sb.toString().endsWith(str2)) {
                                sb.append(str3);
                                sb.append(str5);
                                sb.append(str4);
                            } else {
                                sb.append("&");
                                sb.append(str3);
                                sb.append(str5);
                                sb.append(str4);
                            }
                        }
                    }
                }
            }
        }
        return sb.toString();
    }
}
