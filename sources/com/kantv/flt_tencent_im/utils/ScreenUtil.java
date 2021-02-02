package com.kantv.flt_tencent_im.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.kantv.flt_tencent_im.TUIKit;

public class ScreenUtil {
    private static int SOFT_INPUT_HEIGHT = 0;
    private static final String TAG = "ScreenUtil";
    private static int navigationBarHeight;

    public static boolean checkNavigationBarShow(@NonNull Context context, @NonNull Window window) {
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        View decorView = window.getDecorView();
        if (2 == context.getResources().getConfiguration().orientation) {
            if (point.x != decorView.findViewById(16908290).getWidth()) {
                return true;
            }
        } else {
            Rect rect = new Rect();
            decorView.getWindowVisibleDisplayFrame(rect);
            if (rect.bottom != point.y) {
                return true;
            }
        }
        return false;
    }

    public static int getNavigationBarHeight() {
        int i = navigationBarHeight;
        if (i != 0) {
            return i;
        }
        Resources resources = TUIKit.getAppContext().getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
        navigationBarHeight = dimensionPixelSize;
        return dimensionPixelSize;
    }

    public static int[] getScreenSize() {
        DisplayMetrics displayMetrics = TUIKit.getAppContext().getResources().getDisplayMetrics();
        return new int[]{displayMetrics.widthPixels, displayMetrics.heightPixels};
    }

    public static int getStatusBarHeight() {
        int identifier = TUIKit.getAppContext().getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return TUIKit.getAppContext().getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static int getScreenHeight(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int getScreenWidth(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int getPxByDp(float f) {
        return (int) ((f * TUIKit.getAppContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getDpi(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        char c = 0;
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", new Class[]{DisplayMetrics.class}).invoke(defaultDisplay, new Object[]{displayMetrics});
            return displayMetrics.heightPixels;
        } catch (Exception e) {
            e.printStackTrace();
            return c;
        }
    }

    public static int getBottomStatusHeight(Context context) {
        int i = SOFT_INPUT_HEIGHT;
        if (i > 0) {
            return i;
        }
        SOFT_INPUT_HEIGHT = getDpi(context) - getScreenHeight(context);
        return SOFT_INPUT_HEIGHT;
    }

    public static int[] scaledSize(int i, int i2, int i3, int i4) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("scaledSize  containerWidth: ");
        sb.append(i);
        sb.append(" containerHeight: ");
        sb.append(i2);
        sb.append(" realWidth: ");
        sb.append(i3);
        sb.append(" realHeight: ");
        sb.append(i4);
        TUIKitLog.i(str, sb.toString());
        float f = (float) i;
        float f2 = (float) i2;
        float f3 = ((float) i3) / ((float) i4);
        if (f3 < f / f2) {
            i = (int) (f2 * f3);
        } else {
            i2 = (int) (f / f3);
        }
        return new int[]{i, i2};
    }
}
