package com.kantv.ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DrawFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;

public class WaveView extends View {
    private Path mAbovePath = new Path();
    private Paint mAboveWavePaint = new Paint(1);
    private Paint mBelowWavePaint;
    private Path mBelowWavePath = new Path();
    private DrawFilter mDrawFilter;
    private OnWaveAnimationListener mWaveAnimationListener;

    /* renamed from: φ reason: contains not printable characters */
    private float f1;

    public interface OnWaveAnimationListener {
        void OnWaveAnimation(float f);
    }

    public WaveView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAboveWavePaint.setAntiAlias(true);
        this.mAboveWavePaint.setStyle(Style.FILL);
        this.mAboveWavePaint.setColor(-1);
        this.mBelowWavePaint = new Paint(1);
        this.mBelowWavePaint.setAntiAlias(true);
        this.mBelowWavePaint.setStyle(Style.FILL);
        this.mBelowWavePaint.setColor(-1);
        this.mBelowWavePaint.setAlpha(80);
        this.mDrawFilter = new PaintFlagsDrawFilter(0, 3);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.setDrawFilter(this.mDrawFilter);
        this.mAbovePath.reset();
        this.mBelowWavePath.reset();
        this.f1 -= 0.1f;
        double width = (double) getWidth();
        Double.isNaN(width);
        double d = 6.283185307179586d / width;
        this.mAbovePath.moveTo((float) getLeft(), (float) getBottom());
        this.mBelowWavePath.moveTo((float) getLeft(), (float) getBottom());
        for (float f = 0.0f; f <= ((float) getWidth()); f += 20.0f) {
            double d2 = (double) f;
            Double.isNaN(d2);
            double d3 = d2 * d;
            double d4 = (double) this.f1;
            Double.isNaN(d4);
            float cos = (float) ((Math.cos(d4 + d3) * 8.0d) + 8.0d);
            double d5 = (double) this.f1;
            Double.isNaN(d5);
            float sin = (float) (Math.sin(d3 + d5) * 8.0d);
            this.mAbovePath.lineTo(f, cos);
            this.mBelowWavePath.lineTo(f, sin);
        }
        this.mAbovePath.lineTo((float) getRight(), (float) getBottom());
        this.mBelowWavePath.lineTo((float) getRight(), (float) getBottom());
        canvas.drawPath(this.mAbovePath, this.mAboveWavePaint);
        canvas.drawPath(this.mBelowWavePath, this.mBelowWavePaint);
        postInvalidateDelayed(20);
    }

    public void setOnWaveAnimationListener(OnWaveAnimationListener onWaveAnimationListener) {
        this.mWaveAnimationListener = onWaveAnimationListener;
    }
}
