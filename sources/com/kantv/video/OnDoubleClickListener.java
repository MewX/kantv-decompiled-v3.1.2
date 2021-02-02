package com.kantv.video;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class OnDoubleClickListener implements OnTouchListener {
    private final String TAG = getClass().getSimpleName();
    private int count = 0;
    private long firClick = 0;
    private final int interval = 500;
    private DoubleClickCallback mCallback;
    private long secClick = 0;

    public interface DoubleClickCallback {
        void onDoubleClick();

        void onSingleClick();
    }

    public OnDoubleClickListener(DoubleClickCallback doubleClickCallback) {
        this.mCallback = doubleClickCallback;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.count++;
            int i = this.count;
            if (1 == i) {
                this.firClick = System.currentTimeMillis();
                this.mCallback.onSingleClick();
            } else if (2 == i) {
                this.secClick = System.currentTimeMillis();
                long j = this.secClick;
                if (j - this.firClick < 500) {
                    DoubleClickCallback doubleClickCallback = this.mCallback;
                    if (doubleClickCallback != null) {
                        doubleClickCallback.onDoubleClick();
                    }
                    this.count = 0;
                    this.firClick = 0;
                } else {
                    this.firClick = j;
                    this.count = 1;
                }
                this.secClick = 0;
            }
        }
        return true;
    }
}
