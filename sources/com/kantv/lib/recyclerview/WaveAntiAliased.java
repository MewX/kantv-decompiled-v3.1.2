package com.kantv.lib.recyclerview;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.LinearInterpolator;

public class WaveAntiAliased extends View {
    private Bitmap bitmap;
    private int color;
    /* access modifiers changed from: private */
    public float currentPercent;
    private int mHeight;
    private Paint mPaint;
    private int mWidth;
    private Path path;
    private String text;
    private Paint textPaint;
    private int textSize;
    private PorterDuffXfermode xfermode;
    private PorterDuffXfermode xfermode_text;

    public WaveAntiAliased(Context context) {
        this(context, null);
    }

    public WaveAntiAliased(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WaveAntiAliased(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.xfermode = new PorterDuffXfermode(Mode.SRC_IN);
        this.xfermode_text = new PorterDuffXfermode(Mode.SRC_ATOP);
        this.mWidth = DimentionUtils.dip2px(getContext(), 50.0f);
        this.mHeight = DimentionUtils.dip2px(getContext(), 50.0f);
        this.text = "看";
        this.textSize = DimentionUtils.sp2px(getContext(), 25.0f);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.color = Color.rgb(41, 163, 254);
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Style.FILL);
        this.mPaint.setColor(this.color);
        this.mPaint.setDither(true);
        this.textPaint = new Paint(1);
        this.textPaint.setColor(-1);
        this.textPaint.setTypeface(Typeface.DEFAULT_BOLD);
        this.path = new Path();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        ofFloat.setDuration(1000);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                WaveAntiAliased.this.currentPercent = valueAnimator.getAnimatedFraction();
                WaveAntiAliased.this.invalidate();
            }
        });
        ofFloat.start();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        this.textPaint.setColor(this.color);
        drawCenterText(canvas, this.textPaint, this.text);
        this.textPaint.setColor(-1);
        this.path = getActionPath(this.currentPercent);
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), null, 31);
        canvas.drawPath(this.path, this.mPaint);
        this.mPaint.setXfermode(this.xfermode);
        canvas.drawBitmap(this.bitmap, 0.0f, 0.0f, this.mPaint);
        this.textPaint.setXfermode(this.xfermode_text);
        drawCenterText(canvas, this.textPaint, this.text);
        canvas.restoreToCount(saveLayer);
        this.textPaint.setXfermode(null);
        this.mPaint.setXfermode(null);
    }

    private Bitmap getCircleBitmap(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
        float f = (float) (i / 2);
        new Canvas(createBitmap).drawCircle(f, (float) (i2 / 2), f, this.mPaint);
        return createBitmap;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int mode = MeasureSpec.getMode(i);
        int size2 = MeasureSpec.getSize(i2);
        int mode2 = MeasureSpec.getMode(i2);
        if (mode == 1073741824) {
            this.mWidth = size;
        }
        if (mode2 == 1073741824) {
            this.mHeight = size2;
        }
        setMeasuredDimension(this.mWidth, this.mHeight);
        this.bitmap = getCircleBitmap(this.mWidth, this.mHeight);
        this.textSize = this.mWidth / 2;
        this.textPaint.setTextSize((float) this.textSize);
    }

    private Path getActionPath(float f) {
        Path path2 = new Path();
        int i = this.mWidth;
        int i2 = (int) (((float) (-i)) + (f * ((float) i)));
        float f2 = (float) i2;
        path2.moveTo(f2, (float) (this.mHeight / 2));
        int i3 = this.mWidth / 4;
        int i4 = (this.mHeight / 20) * 3;
        float f3 = (float) i3;
        float f4 = (float) i4;
        float f5 = (float) (i3 * 2);
        path2.rQuadTo(f3, f4, f5, 0.0f);
        float f6 = (float) (-i4);
        path2.rQuadTo(f3, f6, f5, 0.0f);
        path2.rQuadTo(f3, f4, f5, 0.0f);
        path2.rQuadTo(f3, f6, f5, 0.0f);
        path2.lineTo((float) (i2 + (this.mWidth * 2)), (float) this.mHeight);
        path2.lineTo(f2, (float) this.mHeight);
        path2.close();
        return path2;
    }

    private void drawCenterText(Canvas canvas, Paint paint, String str) {
        Rect rect = new Rect(0, 0, this.mWidth, this.mHeight);
        paint.setTextAlign(Align.CENTER);
        FontMetrics fontMetrics = paint.getFontMetrics();
        canvas.drawText(str, (float) rect.centerX(), (float) ((int) ((((float) rect.centerY()) - (fontMetrics.top / 2.0f)) - (fontMetrics.bottom / 2.0f))), paint);
    }
}
