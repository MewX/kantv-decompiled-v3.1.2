package com.kantv.lib.gallery;

import android.app.Activity;
import android.content.Context;
import android.util.TypedValue;

public class DensityUtil {
    public static int Density38 = 55;
    public static int Density40 = 60;
    public static int Density60 = 90;
    public static int Density68 = 102;

    public static float convertDpToPixels(Context context, float f) {
        return f * (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f);
    }

    public static float convertPixelsToDp(Context context, float f) {
        return f / (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f);
    }

    public static int getScreenWidth(Activity activity) {
        return activity.getWindowManager().getDefaultDisplay().getWidth();
    }

    public static int getScreenHeight(Activity activity) {
        return activity.getWindowManager().getDefaultDisplay().getHeight();
    }

    public static int dp2px(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    public static float dp2pxFloat(Context context, float f) {
        return TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }
}
