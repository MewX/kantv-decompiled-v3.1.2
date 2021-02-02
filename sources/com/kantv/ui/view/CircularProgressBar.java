package com.kantv.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

public class CircularProgressBar extends View {
    private int mBackgroundColor = -3355444;
    private int mDuration = 100;
    private OnProgressChangeListener mOnChangeListener;
    private Paint mPaint = new Paint();
    private int mPrimaryColor = Color.parseColor("#1D94F0");
    private int mProgress = 30;
    private RectF mRectF = new RectF();
    private float mStrokeWidth = 6.0f;

    public interface OnProgressChangeListener {
        void onChange(int i, int i2, float f);
    }

    public void setOnProgressChangeListener(OnProgressChangeListener onProgressChangeListener) {
        this.mOnChangeListener = onProgressChangeListener;
    }

    public CircularProgressBar(Context context) {
        super(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setMax(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mDuration = i;
    }

    public int getMax() {
        return this.mDuration;
    }

    public void setProgress(int i) {
        int i2 = this.mDuration;
        if (i > i2) {
            i = i2;
        }
        this.mProgress = i;
        OnProgressChangeListener onProgressChangeListener = this.mOnChangeListener;
        if (onProgressChangeListener != null) {
            onProgressChangeListener.onChange(this.mDuration, i, getRateOfProgress());
        }
        invalidate();
    }

    public int getProgress() {
        return this.mProgress;
    }

    public void setBackgroundColor(int i) {
        this.mBackgroundColor = i;
    }

    public void setPrimaryColor(int i) {
        this.mPrimaryColor = i;
    }

    public void setCircleWidth(float f) {
        this.mStrokeWidth = f;
    }

    /* access modifiers changed from: protected */
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        int i = width < height ? width : height;
        float f = this.mStrokeWidth / 2.0f;
        this.mPaint.setColor(this.mBackgroundColor);
        this.mPaint.setDither(true);
        this.mPaint.setFlags(1);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
        this.mPaint.setStyle(Style.STROKE);
        canvas.drawCircle((float) width, (float) height, ((float) i) - f, this.mPaint);
        this.mPaint.setColor(this.mPrimaryColor);
        this.mRectF.top = ((float) (height - i)) + f;
        this.mRectF.bottom = ((float) (height + i)) - f;
        this.mRectF.left = ((float) (width - i)) + f;
        this.mRectF.right = ((float) (width + i)) - f;
        canvas.drawArc(this.mRectF, -90.0f, getRateOfProgress() * 360.0f, false, this.mPaint);
        canvas.save();
    }

    private float getRateOfProgress() {
        return ((float) this.mProgress) / ((float) this.mDuration);
    }
}
