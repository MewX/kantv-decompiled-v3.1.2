package com.google.android.exoplayer2.ui.spherical;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.PorterDuff.Mode;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import androidx.annotation.AnyThread;
import androidx.annotation.UiThread;
import com.google.android.exoplayer2.util.Assertions;

public final class GlViewGroup extends FrameLayout {
    private final CanvasRenderer canvasRenderer = new CanvasRenderer();

    public GlViewGroup(Context context, int i) {
        super(context);
        LayoutInflater.from(context).inflate(i, this);
        measure(-2, -2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        Assertions.checkState(measuredWidth > 0 && measuredHeight > 0);
        this.canvasRenderer.setSize(measuredWidth, measuredHeight);
        setLayoutParams(new LayoutParams(measuredWidth, measuredHeight));
    }

    @UiThread
    public boolean isVisible() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i).getVisibility() == 0) {
                return true;
            }
        }
        return false;
    }

    public void dispatchDraw(Canvas canvas) {
        Canvas lockCanvas = this.canvasRenderer.lockCanvas();
        if (lockCanvas == null) {
            postInvalidate();
            return;
        }
        lockCanvas.drawColor(0, Mode.CLEAR);
        super.dispatchDraw(lockCanvas);
        this.canvasRenderer.unlockCanvasAndPost(lockCanvas);
    }

    @UiThread
    public boolean simulateClick(int i, float f, float f2) {
        if (!isVisible()) {
            return false;
        }
        PointF translateClick = this.canvasRenderer.translateClick(f, f2);
        if (translateClick == null) {
            return false;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, i, translateClick.x, translateClick.y, 1));
        return true;
    }

    @AnyThread
    public CanvasRenderer getRenderer() {
        return this.canvasRenderer;
    }
}