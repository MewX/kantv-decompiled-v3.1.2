package com.kantv.lib.viewpager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

public class SViewPager extends ViewPager {
    private boolean canScroll = false;

    public SViewPager(Context context) {
        super(context);
    }

    public SViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.canScroll) {
            try {
                return super.onInterceptTouchEvent(motionEvent);
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.canScroll) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void toggleLock() {
        this.canScroll = !this.canScroll;
    }

    public void setCanScroll(boolean z) {
        this.canScroll = z;
    }

    public boolean isCanScroll() {
        return this.canScroll;
    }
}
