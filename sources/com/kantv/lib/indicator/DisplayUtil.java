package com.kantv.lib.indicator;

import android.content.Context;
import android.util.TypedValue;

public class DisplayUtil {
    public static int dipToPix(Context context, int i) {
        return (int) TypedValue.applyDimension(1, (float) i, context.getResources().getDisplayMetrics());
    }

    public static int spToPix(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
