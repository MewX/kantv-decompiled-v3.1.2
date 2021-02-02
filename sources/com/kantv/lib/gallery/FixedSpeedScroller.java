package com.kantv.lib.gallery;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public class FixedSpeedScroller extends Scroller {
    private int mDuration;

    public FixedSpeedScroller(Context context) {
        super(context);
        this.mDuration = 1000;
    }

    public FixedSpeedScroller(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.mDuration = 1000;
    }

    public FixedSpeedScroller(Context context, Interpolator interpolator, int i) {
        this(context, interpolator);
        this.mDuration = i;
    }

    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, this.mDuration);
    }

    public void startScroll(int i, int i2, int i3, int i4) {
        super.startScroll(i, i2, i3, i4, this.mDuration);
    }
}
