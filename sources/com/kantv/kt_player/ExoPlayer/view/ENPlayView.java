package com.kantv.kt_player.ExoPlayer.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnticipateInterpolator;
import com.kantv.kt_player.R;

public class ENPlayView extends View {
    public static int DEFAULT_BG_LINE_COLOR = -328966;
    public static int DEFAULT_BG_LINE_WIDTH = 4;
    public static int DEFAULT_DURATION = 1200;
    public static int DEFAULT_LINE_COLOR = -1;
    public static int DEFAULT_LINE_WIDTH = 4;
    public static int STATE_PAUSE = 1;
    public static int STATE_PLAY;
    private Paint mBgPaint;
    private RectF mBgRectF;
    private int mCenterX;
    private int mCenterY;
    private int mCircleRadius;
    private int mCurrentState = STATE_PAUSE;
    private Path mDstPath;
    private int mDuration;
    /* access modifiers changed from: private */
    public float mFraction = 1.0f;
    private int mHeight;
    private Paint mPaint;
    private Path mPath;
    private float mPathLength;
    private PathMeasure mPathMeasure;
    private RectF mRectF;
    private int mWidth;

    public ENPlayView(Context context) {
        super(context);
    }

    public ENPlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.play);
        int color = obtainStyledAttributes.getColor(R.styleable.play_play_line_color, DEFAULT_LINE_COLOR);
        int color2 = obtainStyledAttributes.getColor(R.styleable.play_play_bg_line_color, DEFAULT_BG_LINE_COLOR);
        int integer = obtainStyledAttributes.getInteger(R.styleable.play_play_line_width, dp2px(DEFAULT_LINE_WIDTH));
        int integer2 = obtainStyledAttributes.getInteger(R.styleable.play_play_bg_line_width, dp2px(DEFAULT_BG_LINE_WIDTH));
        obtainStyledAttributes.recycle();
        setLayerType(1, null);
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeCap(Cap.ROUND);
        this.mPaint.setColor(color);
        this.mPaint.setStrokeWidth((float) integer);
        this.mPaint.setPathEffect(new CornerPathEffect(1.0f));
        this.mBgPaint = new Paint(1);
        this.mBgPaint.setStyle(Style.STROKE);
        this.mBgPaint.setStrokeCap(Cap.ROUND);
        this.mBgPaint.setColor(color2);
        this.mBgPaint.setStrokeWidth((float) integer2);
        this.mPath = new Path();
        this.mDstPath = new Path();
        this.mPathMeasure = new PathMeasure();
        this.mDuration = DEFAULT_DURATION;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mWidth = (i * 9) / 10;
        this.mHeight = (i2 * 9) / 10;
        this.mCircleRadius = this.mWidth / dp2px(4);
        this.mCenterX = i / 2;
        this.mCenterY = i2 / 2;
        int i5 = this.mCenterX;
        int i6 = this.mCircleRadius;
        float f = (float) (i5 - i6);
        int i7 = this.mCenterY;
        this.mRectF = new RectF(f, ((float) i7) + (((float) i6) * 0.6f), (float) (i5 + i6), ((float) i7) + (((float) i6) * 2.6f));
        int i8 = this.mCenterX;
        int i9 = this.mWidth;
        float f2 = (float) (i8 - (i9 / 2));
        int i10 = this.mCenterY;
        int i11 = this.mHeight;
        this.mBgRectF = new RectF(f2, (float) (i10 - (i11 / 2)), (float) (i8 + (i9 / 2)), (float) (i10 + (i11 / 2)));
        Path path = this.mPath;
        int i12 = this.mCenterX;
        int i13 = this.mCircleRadius;
        path.moveTo((float) (i12 - i13), ((float) this.mCenterY) + (((float) i13) * 1.8f));
        Path path2 = this.mPath;
        int i14 = this.mCenterX;
        int i15 = this.mCircleRadius;
        path2.lineTo((float) (i14 - i15), ((float) this.mCenterY) - (((float) i15) * 1.8f));
        this.mPath.lineTo((float) (this.mCenterX + this.mCircleRadius), (float) this.mCenterY);
        this.mPath.close();
        this.mPathMeasure.setPath(this.mPath, false);
        this.mPathLength = this.mPathMeasure.getLength();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        canvas2.drawCircle((float) this.mCenterX, (float) this.mCenterY, (float) (this.mWidth / 2), this.mBgPaint);
        float f = this.mFraction;
        if (f < 0.0f) {
            int i = this.mCenterX;
            int i2 = this.mCircleRadius;
            float f2 = (float) (i + i2);
            int i3 = this.mCenterY;
            canvas.drawLine(f2, (((float) i3) - (((float) i2) * 1.6f)) + (((float) (i2 * 10)) * f), (float) (i + i2), ((float) i3) + (((float) i2) * 1.6f) + (((float) (i2 * 10)) * f), this.mPaint);
            int i4 = this.mCenterX;
            int i5 = this.mCircleRadius;
            float f3 = (float) (i4 - i5);
            int i6 = this.mCenterY;
            Canvas canvas3 = canvas;
            canvas3.drawLine(f3, ((float) i6) - (((float) i5) * 1.6f), (float) (i4 - i5), ((float) i6) + (((float) i5) * 1.6f), this.mPaint);
            canvas3.drawArc(this.mBgRectF, -105.0f, 360.0f, false, this.mPaint);
        } else if (((double) f) <= 0.3d) {
            int i7 = this.mCenterX;
            int i8 = this.mCircleRadius;
            float f4 = (float) (i7 + i8);
            int i9 = this.mCenterY;
            canvas.drawLine(f4, (((float) i9) - (((float) i8) * 1.6f)) + (((((float) i8) * 3.2f) / 0.3f) * f), (float) (i7 + i8), ((float) i9) + (((float) i8) * 1.6f), this.mPaint);
            int i10 = this.mCenterX;
            int i11 = this.mCircleRadius;
            float f5 = (float) (i10 - i11);
            int i12 = this.mCenterY;
            canvas.drawLine(f5, ((float) i12) - (((float) i11) * 1.6f), (float) (i10 - i11), ((float) i12) + (((float) i11) * 1.6f), this.mPaint);
            float f6 = this.mFraction;
            if (f6 != 0.0f) {
                canvas.drawArc(this.mRectF, 0.0f, f6 * 600.0f, false, this.mPaint);
            }
            RectF rectF = this.mBgRectF;
            float f7 = this.mFraction;
            canvas.drawArc(rectF, (f7 * 360.0f) - 0.04248047f, (1.0f - f7) * 360.0f, false, this.mPaint);
        } else if (((double) f) <= 0.6d) {
            canvas.drawArc(this.mRectF, (f - 0.3f) * 600.0f, 180.0f - ((f - 0.3f) * 600.0f), false, this.mPaint);
            this.mDstPath.reset();
            PathMeasure pathMeasure = this.mPathMeasure;
            float f8 = this.mPathLength;
            pathMeasure.getSegment(0.02f * f8, (0.38f * f8) + (((f8 * 0.42f) / 0.3f) * (this.mFraction - 0.3f)), this.mDstPath, true);
            canvas2.drawPath(this.mDstPath, this.mPaint);
            RectF rectF2 = this.mBgRectF;
            float f9 = this.mFraction;
            canvas.drawArc(rectF2, (f9 * 360.0f) - 0.04248047f, (1.0f - f9) * 360.0f, false, this.mPaint);
        } else if (((double) f) <= 0.8d) {
            this.mDstPath.reset();
            PathMeasure pathMeasure2 = this.mPathMeasure;
            float f10 = this.mPathLength;
            float f11 = 0.02f * f10;
            float f12 = (f10 * 0.2f) / 0.2f;
            float f13 = this.mFraction;
            pathMeasure2.getSegment(f11 + (f12 * (f13 - 0.6f)), (0.8f * f10) + (((f10 * 0.2f) / 0.2f) * (f13 - 0.6f)), this.mDstPath, true);
            canvas2.drawPath(this.mDstPath, this.mPaint);
            RectF rectF3 = this.mBgRectF;
            float f14 = this.mFraction;
            canvas.drawArc(rectF3, (f14 * 360.0f) - 0.04248047f, (1.0f - f14) * 360.0f, false, this.mPaint);
        } else {
            this.mDstPath.reset();
            this.mPathMeasure.getSegment(((float) (this.mCircleRadius * 10)) * (this.mFraction - 1.0f), this.mPathLength, this.mDstPath, true);
            canvas2.drawPath(this.mDstPath, this.mPaint);
        }
    }

    public void play() {
        int i = this.mCurrentState;
        int i2 = STATE_PLAY;
        if (i != i2) {
            this.mCurrentState = i2;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 100.0f});
            ofFloat.setDuration((long) this.mDuration);
            ofFloat.setInterpolator(new AnticipateInterpolator());
            ofFloat.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ENPlayView.this.mFraction = 1.0f - valueAnimator.getAnimatedFraction();
                    ENPlayView.this.invalidate();
                }
            });
            if (!ofFloat.isRunning()) {
                ofFloat.start();
            }
        }
    }

    public void pause() {
        int i = this.mCurrentState;
        int i2 = STATE_PAUSE;
        if (i != i2) {
            this.mCurrentState = i2;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 100.0f});
            ofFloat.setDuration((long) this.mDuration);
            ofFloat.setInterpolator(new AnticipateInterpolator());
            ofFloat.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ENPlayView.this.mFraction = valueAnimator.getAnimatedFraction();
                    ENPlayView.this.invalidate();
                }
            });
            if (!ofFloat.isRunning()) {
                ofFloat.start();
            }
        }
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    private int dp2px(int i) {
        return (int) TypedValue.applyDimension(1, (float) i, getContext().getResources().getDisplayMetrics());
    }
}
