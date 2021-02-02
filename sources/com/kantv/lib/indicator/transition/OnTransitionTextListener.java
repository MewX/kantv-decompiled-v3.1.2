package com.kantv.lib.indicator.transition;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.kantv.lib.indicator.Indicator.OnTransitionListener;
import com.kantv.lib.utils.ColorGradient;

public class OnTransitionTextListener implements OnTransitionListener {
    private float dFontFize = -1.0f;
    private ColorGradient gradient;
    private boolean isPxSize = false;
    private float selectSize = -1.0f;
    private float unSelectSize = -1.0f;

    public OnTransitionTextListener() {
    }

    public OnTransitionTextListener(float f, float f2, int i, int i2) {
        setColor(i, i2);
        setSize(f, f2);
    }

    public final OnTransitionTextListener setSize(float f, float f2) {
        this.isPxSize = false;
        this.selectSize = f;
        this.unSelectSize = f2;
        this.dFontFize = f - f2;
        return this;
    }

    public final OnTransitionTextListener setValueFromRes(Context context, int i, int i2, int i3, int i4) {
        setColorId(context, i, i2);
        setSizeId(context, i3, i4);
        return this;
    }

    public final OnTransitionTextListener setColorId(Context context, int i, int i2) {
        Resources resources = context.getResources();
        setColor(resources.getColor(i), resources.getColor(i2));
        return this;
    }

    public final OnTransitionTextListener setSizeId(Context context, int i, int i2) {
        Resources resources = context.getResources();
        setSize((float) resources.getDimensionPixelSize(i), (float) resources.getDimensionPixelSize(i2));
        this.isPxSize = true;
        return this;
    }

    public final OnTransitionTextListener setColor(int i, int i2) {
        this.gradient = new ColorGradient(i2, i, 100);
        return this;
    }

    public TextView getTextView(View view, int i) {
        return (TextView) view;
    }

    public void onTransition(View view, int i, float f) {
        TextView textView = getTextView(view, i);
        ColorGradient colorGradient = this.gradient;
        if (colorGradient != null) {
            textView.setTextColor(colorGradient.getColor((int) (100.0f * f)));
        }
        float f2 = this.unSelectSize;
        if (f2 > 0.0f && this.selectSize > 0.0f) {
            if (this.isPxSize) {
                textView.setTextSize(0, f2 + (this.dFontFize * f));
            } else {
                textView.setTextSize(f2 + (this.dFontFize * f));
            }
        }
    }
}
