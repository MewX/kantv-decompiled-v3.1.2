package com.kantv.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import com.kantv.lib.indicator.DisplayUtil;

public class CustomLinearLayout extends LinearLayout {
    private int mScreenHeight;

    public CustomLinearLayout(Context context) {
        super(context);
    }

    public CustomLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScreenHeight = DisplayUtil.dipToPix(getContext(), 73);
    }

    public CustomLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(this.mScreenHeight, 1073741824));
    }
}
