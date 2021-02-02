package moe.codeest.enviews;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.shuyu.gsyvideoplayer.R;

public class ENDownloadView extends View {
    private static final int DEFAULT_BG_LINE_COLOR = -12959931;
    private static final int DEFAULT_BG_LINE_WIDTH = 9;
    private static final int DEFAULT_DOWNLOAD_TIME = 2000;
    private static final DownloadUnit DEFAULT_DOWNLOAD_UNIT = DownloadUnit.B;
    private static final int DEFAULT_LINE_COLOR = -1;
    private static final int DEFAULT_LINE_WIDTH = 9;
    private static final int DEFAULT_RIPPLE_SPEED = 2;
    private static final int DEFAULT_STATE = 0;
    private static final int DEFAULT_TEXT_COLOR = -1;
    private static final int DEFAULT_TEXT_SIZE = 14;
    public static final int STATE_DOWNLOADING = 1;
    public static final int STATE_END = 2;
    public static final int STATE_PRE = 0;
    public static final int STATE_RESET = 3;
    private float mBaseLength;
    private float mBaseRippleLength;
    private Paint mBgPaint;
    private float mCenterX;
    private float mCenterY;
    private float mCircleRadius;
    private RectF mClipRectF;
    private float mCurrentRippleX;
    /* access modifiers changed from: private */
    public double mCurrentSize;
    /* access modifiers changed from: private */
    public int mCurrentState;
    private int mDownloadTime;
    /* access modifiers changed from: private */
    public float mFraction;
    private float mHeight;
    private Paint mPaint;
    private Path mPath;
    private RectF mRectF;
    private Paint mTextPaint;
    private int mTextSize;
    /* access modifiers changed from: private */
    public double mTotalSize;
    /* access modifiers changed from: private */
    public DownloadUnit mUnit;
    ValueAnimator mValueAnimator;
    private float mWidth;
    /* access modifiers changed from: private */
    public OnDownloadStateListener onDownloadStateListener;

    /* renamed from: moe.codeest.enviews.ENDownloadView$7 reason: invalid class name */
    static /* synthetic */ class AnonymousClass7 {
        static final /* synthetic */ int[] $SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit = new int[DownloadUnit.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                moe.codeest.enviews.ENDownloadView$DownloadUnit[] r0 = moe.codeest.enviews.ENDownloadView.DownloadUnit.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                $SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit = r0
                int[] r0 = $SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit     // Catch:{ NoSuchFieldError -> 0x0014 }
                moe.codeest.enviews.ENDownloadView$DownloadUnit r1 = moe.codeest.enviews.ENDownloadView.DownloadUnit.GB     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = $SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit     // Catch:{ NoSuchFieldError -> 0x001f }
                moe.codeest.enviews.ENDownloadView$DownloadUnit r1 = moe.codeest.enviews.ENDownloadView.DownloadUnit.MB     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = $SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit     // Catch:{ NoSuchFieldError -> 0x002a }
                moe.codeest.enviews.ENDownloadView$DownloadUnit r1 = moe.codeest.enviews.ENDownloadView.DownloadUnit.KB     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = $SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit     // Catch:{ NoSuchFieldError -> 0x0035 }
                moe.codeest.enviews.ENDownloadView$DownloadUnit r1 = moe.codeest.enviews.ENDownloadView.DownloadUnit.B     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: moe.codeest.enviews.ENDownloadView.AnonymousClass7.<clinit>():void");
        }
    }

    public enum DownloadUnit {
        GB,
        MB,
        KB,
        B,
        NONE
    }

    interface OnDownloadStateListener {
        void onDownloadFinish();

        void onResetFinish();
    }

    public ENDownloadView(Context context) {
        super(context);
    }

    public ENDownloadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.download);
        int color = obtainStyledAttributes.getColor(R.styleable.download_download_line_color, -1);
        int color2 = obtainStyledAttributes.getColor(R.styleable.download_download_bg_line_color, DEFAULT_BG_LINE_COLOR);
        int color3 = obtainStyledAttributes.getColor(R.styleable.download_download_text_color, -1);
        int integer = obtainStyledAttributes.getInteger(R.styleable.download_download_line_width, 9);
        int integer2 = obtainStyledAttributes.getInteger(R.styleable.download_download_bg_line_width, 9);
        int integer3 = obtainStyledAttributes.getInteger(R.styleable.download_download_text_size, 14);
        obtainStyledAttributes.recycle();
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setStrokeCap(Cap.ROUND);
        this.mPaint.setStrokeWidth((float) integer);
        this.mPaint.setColor(color);
        this.mBgPaint = new Paint(1);
        this.mBgPaint.setStyle(Style.STROKE);
        this.mBgPaint.setStrokeCap(Cap.ROUND);
        this.mBgPaint.setStrokeWidth((float) integer2);
        this.mBgPaint.setColor(color2);
        this.mTextPaint = new Paint(1);
        this.mTextPaint.setColor(color3);
        this.mTextPaint.setTextSize((float) integer3);
        this.mTextPaint.setTextAlign(Align.CENTER);
        this.mPath = new Path();
        this.mTextSize = integer3;
        this.mCurrentState = 0;
        this.mUnit = DEFAULT_DOWNLOAD_UNIT;
        this.mDownloadTime = 2000;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mWidth = (float) i;
        this.mHeight = (float) i2;
        float f = this.mWidth;
        this.mCenterX = f / 2.0f;
        this.mCenterY = this.mHeight / 2.0f;
        this.mCircleRadius = (f * 5.0f) / 12.0f;
        float f2 = this.mCircleRadius;
        this.mBaseLength = f2 / 3.0f;
        this.mBaseRippleLength = (this.mBaseLength * 4.4f) / 12.0f;
        float f3 = this.mCenterX;
        this.mCurrentRippleX = f3 - (this.mBaseRippleLength * 10.0f);
        float f4 = f3 - f2;
        float f5 = this.mCenterY;
        this.mRectF = new RectF(f4, f5 - f2, f3 + f2, f5 + f2);
        float f6 = this.mCenterX;
        float f7 = this.mBaseRippleLength;
        this.mClipRectF = new RectF(f6 - (f7 * 6.0f), 0.0f, f6 + (f7 * 6.0f), this.mHeight);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        int i = this.mCurrentState;
        if (i != 0) {
            if (i == 1) {
                float f = this.mFraction;
                if (((double) f) <= 0.2d) {
                    this.mTextPaint.setTextSize((((float) this.mTextSize) / 0.2f) * f);
                }
                canvas2.drawCircle(this.mCenterX, this.mCenterY, this.mCircleRadius, this.mBgPaint);
                canvas.drawArc(this.mRectF, -90.0f, this.mFraction * 359.99f, false, this.mPaint);
                this.mPath.reset();
                this.mCurrentRippleX += 2.0f;
                float f2 = this.mCurrentRippleX;
                float f3 = this.mCenterX;
                float f4 = this.mBaseRippleLength;
                if (f2 > f3 - (6.0f * f4)) {
                    this.mCurrentRippleX = f3 - (f4 * 10.0f);
                }
                this.mPath.moveTo(this.mCurrentRippleX, this.mCenterY);
                for (int i2 = 0; i2 < 4; i2++) {
                    Path path = this.mPath;
                    float f5 = this.mBaseRippleLength;
                    path.rQuadTo(f5, (-(1.0f - this.mFraction)) * f5, f5 * 2.0f, 0.0f);
                    Path path2 = this.mPath;
                    float f6 = this.mBaseRippleLength;
                    path2.rQuadTo(f6, (1.0f - this.mFraction) * f6, f6 * 2.0f, 0.0f);
                }
                canvas.save();
                canvas2.clipRect(this.mClipRectF);
                canvas2.drawPath(this.mPath, this.mPaint);
                canvas.restore();
                if (this.mUnit != DownloadUnit.NONE) {
                    int i3 = (this.mCurrentSize > 0.0d ? 1 : (this.mCurrentSize == 0.0d ? 0 : -1));
                }
            } else if (i == 2) {
                canvas2.drawCircle(this.mCenterX, this.mCenterY, this.mCircleRadius, this.mPaint);
                float f7 = this.mFraction;
                if (((double) f7) <= 0.5d) {
                    Paint paint = this.mTextPaint;
                    int i4 = this.mTextSize;
                    paint.setTextSize(((float) i4) - ((((float) i4) / 0.2f) * f7));
                } else {
                    this.mTextPaint.setTextSize(0.0f);
                }
                if (this.mUnit != DownloadUnit.NONE && this.mCurrentSize > 0.0d) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(String.format("%.2f", new Object[]{Double.valueOf(this.mCurrentSize)}));
                    sb.append(getUnitStr(this.mUnit));
                    canvas2.drawText(sb.toString(), this.mCenterX, this.mCenterY + (this.mBaseLength * 1.4f), this.mTextPaint);
                }
                float f8 = this.mCenterX;
                float f9 = this.mBaseLength;
                float f10 = f8 - (f9 * 2.2f);
                float f11 = 1.2f * f9;
                float f12 = this.mFraction;
                float f13 = f10 + (f11 * f12);
                float f14 = this.mCenterY;
                canvas.drawLine(f13, f14, f8 - (f9 * 0.5f), f14 + (f9 * 0.5f * f12 * 1.3f), this.mPaint);
                float f15 = this.mCenterX;
                float f16 = this.mBaseLength;
                float f17 = f15 - (f16 * 0.5f);
                float f18 = this.mCenterY;
                float f19 = 0.5f * f16;
                float f20 = this.mFraction;
                canvas.drawLine(f17, f18 + (f19 * f20 * 1.3f), (f15 + (2.2f * f16)) - (f16 * f20), f18 - ((f16 * f20) * 1.3f), this.mPaint);
            } else if (i == 3) {
                canvas2.drawCircle(this.mCenterX, this.mCenterY, this.mCircleRadius, this.mBgPaint);
                float f21 = this.mCenterX;
                float f22 = this.mBaseLength;
                float f23 = f21 - f22;
                float f24 = this.mCenterY;
                float f25 = f21 - (f22 * 0.5f);
                float f26 = f22 * 0.5f;
                float f27 = this.mFraction;
                canvas.drawLine(f23, f24, (f26 * f27) + f25, (f22 * 0.65f) + f24 + (f22 * 0.35f * f27), this.mPaint);
                float f28 = this.mCenterX;
                float f29 = this.mBaseLength;
                float f30 = f28 - (f29 * 0.5f);
                float f31 = f29 * 0.5f;
                float f32 = this.mFraction;
                float f33 = f30 + (f31 * f32);
                float f34 = this.mCenterY;
                canvas.drawLine(f33, (f29 * 0.65f) + f34 + (f29 * 0.35f * f32), (f28 + (1.2f * f29)) - ((0.2f * f29) * f32), (f34 - (f29 * 1.3f)) + (f29 * 1.3f * f32), this.mPaint);
                float f35 = this.mCenterX;
                float f36 = this.mBaseLength;
                float f37 = f35 - (f36 * 0.5f);
                float f38 = f36 * 0.5f;
                float f39 = this.mFraction;
                float f40 = f37 + (f38 * f39);
                float f41 = this.mCenterY;
                canvas.drawLine(f40, (f36 * 0.65f) + f41 + (0.35f * f36 * f39), (0.5f * f36 * f39) + (f35 - (f36 * 0.5f)), (f41 + (0.65f * f36)) - ((f36 * 2.25f) * f39), this.mPaint);
            }
        } else {
            float f42 = this.mFraction;
            if (((double) f42) <= 0.4d) {
                canvas2.drawCircle(this.mCenterX, this.mCenterY, this.mCircleRadius, this.mBgPaint);
                float f43 = this.mCenterX;
                float f44 = this.mBaseLength;
                float f45 = f43 - f44;
                float f46 = this.mCenterY;
                canvas.drawLine(f45, f46, f43, f46 + f44, this.mPaint);
                float f47 = this.mCenterX;
                float f48 = this.mCenterY;
                float f49 = this.mBaseLength;
                canvas.drawLine(f47, f48 + f49, f47 + f49, f48, this.mPaint);
                float f50 = this.mCenterX;
                float f51 = this.mCenterY;
                float f52 = this.mBaseLength;
                float f53 = f51 + f52;
                float f54 = (f52 * 1.3f) / 0.4f;
                float f55 = this.mFraction;
                canvas.drawLine(f50, f53 - (f54 * f55), f50, (f51 - (1.6f * f52)) + (((f52 * 1.3f) / 0.4f) * f55), this.mPaint);
            } else if (((double) f42) <= 0.6d) {
                canvas2.drawCircle(this.mCenterX, this.mCenterY, this.mCircleRadius, this.mBgPaint);
                canvas2.drawCircle(this.mCenterX, this.mCenterY - (this.mBaseLength * 0.3f), 2.0f, this.mPaint);
                float f56 = this.mCenterX;
                float f57 = this.mBaseLength;
                float f58 = f56 - f57;
                float f59 = (f57 * 1.2f) / 0.2f;
                float f60 = this.mFraction;
                float f61 = f58 - (f59 * (f60 - 0.4f));
                float f62 = this.mCenterY;
                canvas.drawLine(f61, f62, f56, (f62 + f57) - ((f57 / 0.2f) * (f60 - 0.4f)), this.mPaint);
                float f63 = this.mCenterX;
                float f64 = this.mCenterY;
                float f65 = this.mBaseLength;
                float f66 = f64 + f65;
                float f67 = f65 / 0.2f;
                float f68 = this.mFraction;
                canvas.drawLine(f63, f66 - (f67 * (f68 - 0.4f)), f63 + f65 + (((f65 * 1.2f) / 0.2f) * (f68 - 0.4f)), f64, this.mPaint);
            } else if (f42 <= 1.0f) {
                canvas2.drawCircle(this.mCenterX, this.mCenterY, this.mCircleRadius, this.mBgPaint);
                float f69 = this.mCenterX;
                float f70 = this.mCenterY;
                float f71 = this.mBaseLength;
                canvas2.drawCircle(f69, (f70 - (f71 * 0.3f)) - (((this.mCircleRadius - (f71 * 0.3f)) / 0.4f) * (this.mFraction - 0.6f)), 2.0f, this.mPaint);
                float f72 = this.mCenterX;
                float f73 = this.mBaseLength;
                float f74 = f72 - (f73 * 2.2f);
                float f75 = this.mCenterY;
                canvas.drawLine(f74, f75, f72 + (f73 * 2.2f), f75, this.mPaint);
            } else {
                canvas2.drawCircle(this.mCenterX, this.mCenterY, this.mCircleRadius, this.mBgPaint);
                canvas2.drawCircle(this.mCenterX, (this.mCenterY - this.mCircleRadius) - ((this.mBaseLength * 3.0f) * (this.mFraction - 1.0f)), 3.0f, this.mPaint);
                float f76 = this.mCenterX;
                float f77 = this.mBaseLength;
                float f78 = f76 - (f77 * 2.2f);
                float f79 = this.mCenterY;
                canvas.drawLine(f78, f79, f76 + (f77 * 2.2f), f79, this.mPaint);
            }
        }
    }

    public void release() {
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.mValueAnimator.removeAllUpdateListeners();
            if (this.mValueAnimator.isRunning()) {
                this.mValueAnimator.cancel();
            }
            this.mValueAnimator = null;
        }
    }

    public void start() {
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.mValueAnimator.removeAllUpdateListeners();
            if (this.mValueAnimator.isRunning()) {
                this.mValueAnimator.cancel();
            }
            this.mValueAnimator = null;
        }
        this.mCurrentState = 1;
        this.mValueAnimator = ValueAnimator.ofFloat(new float[]{1.0f, 100.0f});
        this.mValueAnimator.setDuration(1500);
        this.mValueAnimator.setInterpolator(new OvershootInterpolator());
        this.mValueAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ENDownloadView.this.mFraction = valueAnimator.getAnimatedFraction();
                ENDownloadView.this.invalidate();
            }
        });
        this.mValueAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ENDownloadView.this.mCurrentState = 1;
                ENDownloadView.this.downloadAnim();
            }
        });
        this.mValueAnimator.start();
    }

    /* access modifiers changed from: private */
    public void downloadAnim() {
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.mValueAnimator.removeAllUpdateListeners();
            if (this.mValueAnimator.isRunning()) {
                this.mValueAnimator.cancel();
            }
            this.mValueAnimator = null;
        }
        if (this.mCurrentState == 1) {
            this.mValueAnimator = ValueAnimator.ofFloat(new float[]{1.0f, 100.0f});
            this.mValueAnimator.setDuration((long) this.mDownloadTime);
            this.mValueAnimator.setInterpolator(new LinearInterpolator());
            this.mValueAnimator.addUpdateListener(new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ENDownloadView.this.mFraction = valueAnimator.getAnimatedFraction();
                    if (ENDownloadView.this.mUnit != DownloadUnit.NONE && ENDownloadView.this.mTotalSize > 0.0d) {
                        ENDownloadView eNDownloadView = ENDownloadView.this;
                        double access$000 = (double) eNDownloadView.mFraction;
                        double access$400 = ENDownloadView.this.mTotalSize;
                        Double.isNaN(access$000);
                        eNDownloadView.mCurrentSize = access$000 * access$400;
                    }
                    ENDownloadView.this.invalidate();
                }
            });
            this.mValueAnimator.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    ENDownloadView.this.mCurrentState = 1;
                    ENDownloadView.this.downloadAnim();
                }
            });
            this.mValueAnimator.start();
        }
    }

    private void endAnim() {
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.mValueAnimator.removeAllUpdateListeners();
            if (this.mValueAnimator.isRunning()) {
                this.mValueAnimator.cancel();
            }
            this.mValueAnimator = null;
        }
        this.mValueAnimator = ValueAnimator.ofFloat(new float[]{1.0f, 100.0f});
        this.mValueAnimator.setDuration(700);
        this.mValueAnimator.setInterpolator(new OvershootInterpolator());
        this.mValueAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ENDownloadView.this.mFraction = valueAnimator.getAnimatedFraction();
                ENDownloadView.this.invalidate();
            }
        });
        this.mValueAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationEnd(Animator animator) {
                ENDownloadView.this.mFraction = 0.0f;
                ENDownloadView.this.mCurrentState = 3;
                if (ENDownloadView.this.onDownloadStateListener != null) {
                    ENDownloadView.this.onDownloadStateListener.onDownloadFinish();
                }
            }
        });
        this.mValueAnimator.start();
    }

    public void reset() {
        this.mFraction = 0.0f;
        this.mCurrentState = 0;
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.mValueAnimator.removeAllUpdateListeners();
            if (this.mValueAnimator.isRunning()) {
                this.mValueAnimator.cancel();
            }
            this.mValueAnimator = null;
        }
    }

    private String getUnitStr(DownloadUnit downloadUnit) {
        int i = AnonymousClass7.$SwitchMap$moe$codeest$enviews$ENDownloadView$DownloadUnit[downloadUnit.ordinal()];
        if (i == 1) {
            return " gb";
        }
        if (i == 2) {
            return " mb";
        }
        if (i == 3) {
            return " kb";
        }
        String str = " b";
        if (i != 4) {
        }
        return str;
    }

    public void setDownloadConfig(int i, double d, DownloadUnit downloadUnit) {
        this.mDownloadTime = i;
        this.mTotalSize = d;
        this.mUnit = downloadUnit;
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public void setOnDownloadStateListener(OnDownloadStateListener onDownloadStateListener2) {
        this.onDownloadStateListener = onDownloadStateListener2;
    }
}
