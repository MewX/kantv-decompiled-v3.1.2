package com.kantv.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.RelativeLayout;
import com.kantv.ui.utils.ScreenUtils;

public class CustomRelativeLayout extends RelativeLayout {
    private int mScreenHeight;

    public CustomRelativeLayout(Context context) {
        super(context);
    }

    public CustomRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScreenHeight = ScreenUtils.getScreenHeight(context);
    }

    public CustomRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(this.mScreenHeight, 1073741824));
    }
}
