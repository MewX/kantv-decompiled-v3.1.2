package com.shuyu.gsyvideoplayer.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout.LayoutParams;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;

public class SmallVideoTouch implements OnTouchListener {
    private int _xDelta;
    private int _yDelta;
    private int mDownX;
    private int mDownY;
    private GSYBaseVideoPlayer mGsyBaseVideoPlayer;
    private int mMarginLeft;
    private int mMarginTop;

    public SmallVideoTouch(GSYBaseVideoPlayer gSYBaseVideoPlayer, int i, int i2) {
        this.mMarginLeft = i;
        this.mMarginTop = i2;
        this.mGsyBaseVideoPlayer = gSYBaseVideoPlayer;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mDownX = rawX;
            this.mDownY = rawY;
            LayoutParams layoutParams = (LayoutParams) this.mGsyBaseVideoPlayer.getLayoutParams();
            this._xDelta = rawX - layoutParams.leftMargin;
            this._yDelta = rawY - layoutParams.topMargin;
        } else if (action == 1) {
            return Math.abs(this.mDownY - rawY) >= 5 || Math.abs(this.mDownX - rawX) >= 5;
        } else {
            if (action == 2) {
                LayoutParams layoutParams2 = (LayoutParams) this.mGsyBaseVideoPlayer.getLayoutParams();
                layoutParams2.leftMargin = rawX - this._xDelta;
                layoutParams2.topMargin = rawY - this._yDelta;
                int i = layoutParams2.leftMargin;
                int i2 = this.mMarginLeft;
                if (i >= i2) {
                    layoutParams2.leftMargin = i2;
                }
                int i3 = layoutParams2.topMargin;
                int i4 = this.mMarginTop;
                if (i3 >= i4) {
                    layoutParams2.topMargin = i4;
                }
                if (layoutParams2.leftMargin <= 0) {
                    layoutParams2.leftMargin = 0;
                }
                if (layoutParams2.topMargin <= 0) {
                    layoutParams2.topMargin = 0;
                }
                this.mGsyBaseVideoPlayer.setLayoutParams(layoutParams2);
            }
        }
        return false;
    }
}
