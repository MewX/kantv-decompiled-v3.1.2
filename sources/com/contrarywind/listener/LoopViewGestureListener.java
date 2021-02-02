package com.contrarywind.listener;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import com.contrarywind.view.WheelView;

public final class LoopViewGestureListener extends SimpleOnGestureListener {
    private final WheelView wheelView;

    public LoopViewGestureListener(WheelView wheelView2) {
        this.wheelView = wheelView2;
    }

    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.wheelView.scrollBy(f2);
        return true;
    }
}
