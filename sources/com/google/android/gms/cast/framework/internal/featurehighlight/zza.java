package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.internal.cast.zzej;
import com.google.android.gms.internal.cast.zzes;
import com.google.android.gms.internal.cast.zzev;

public final class zza extends ViewGroup {
    private View targetView;
    private final int[] zzjg = new int[2];
    private final Rect zzjh = new Rect();
    private final Rect zzji = new Rect();
    /* access modifiers changed from: private */
    public final OuterHighlightDrawable zzjj;
    private final InnerZoneDrawable zzjk;
    private zzi zzjl;
    @Nullable
    private View zzjm;
    /* access modifiers changed from: private */
    @Nullable
    public Animator zzjn;
    private final zzj zzjo;
    private final GestureDetectorCompat zzjp;
    @Nullable
    private GestureDetectorCompat zzjq;
    /* access modifiers changed from: private */
    public zzh zzjr;
    private boolean zzjs;

    public zza(Context context) {
        super(context);
        setId(R.id.cast_featurehighlight_view);
        setWillNotDraw(false);
        this.zzjk = new InnerZoneDrawable(context);
        this.zzjk.setCallback(this);
        this.zzjj = new OuterHighlightDrawable(context);
        this.zzjj.setCallback(this);
        this.zzjo = new zzj(this);
        this.zzjp = new GestureDetectorCompat(context, new zzb(this));
        this.zzjp.setIsLongpressEnabled(false);
        setVisibility(8);
    }

    public final void zza(zzi zzi) {
        this.zzjl = (zzi) zzev.checkNotNull(zzi);
        addView(zzi.asView(), 0);
    }

    public final void zza(View view, @Nullable View view2, boolean z, zzh zzh) {
        this.targetView = (View) zzev.checkNotNull(view);
        this.zzjm = null;
        this.zzjr = (zzh) zzev.checkNotNull(zzh);
        this.zzjq = new GestureDetectorCompat(getContext(), new zzc(this, view, true, zzh));
        this.zzjq.setIsLongpressEnabled(false);
        setVisibility(4);
    }

    /* access modifiers changed from: protected */
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(resolveSize(MeasureSpec.getSize(i), i), resolveSize(MeasureSpec.getSize(i2), i2));
    }

    /* access modifiers changed from: protected */
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View view = this.targetView;
        if (view != null) {
            if (view.getParent() != null) {
                int[] iArr = this.zzjg;
                View view2 = this.targetView;
                getLocationInWindow(iArr);
                int i5 = iArr[0];
                int i6 = iArr[1];
                view2.getLocationInWindow(iArr);
                iArr[0] = iArr[0] - i5;
                iArr[1] = iArr[1] - i6;
            }
            Rect rect = this.zzjh;
            int[] iArr2 = this.zzjg;
            rect.set(iArr2[0], iArr2[1], iArr2[0] + this.targetView.getWidth(), this.zzjg[1] + this.targetView.getHeight());
            this.zzji.set(i, i2, i3, i4);
            this.zzjj.setBounds(this.zzji);
            this.zzjk.setBounds(this.zzji);
            this.zzjo.zza(this.zzjh, this.zzji);
            return;
        }
        throw new IllegalStateException("Target view must be set before layout");
    }

    /* access modifiers changed from: protected */
    public final void onDraw(Canvas canvas) {
        canvas.save();
        this.zzjj.draw(canvas);
        this.zzjk.draw(canvas);
        View view = this.targetView;
        if (view != null) {
            if (view.getParent() != null) {
                Bitmap createBitmap = Bitmap.createBitmap(this.targetView.getWidth(), this.targetView.getHeight(), Config.ARGB_8888);
                this.targetView.draw(new Canvas(createBitmap));
                int color = this.zzjj.getColor();
                int red = Color.red(color);
                int green = Color.green(color);
                int blue = Color.blue(color);
                for (int i = 0; i < createBitmap.getHeight(); i++) {
                    for (int i2 = 0; i2 < createBitmap.getWidth(); i2++) {
                        int pixel = createBitmap.getPixel(i2, i);
                        if (Color.alpha(pixel) != 0) {
                            createBitmap.setPixel(i2, i, Color.argb(Color.alpha(pixel), red, green, blue));
                        }
                    }
                }
                canvas.drawBitmap(createBitmap, (float) this.zzjh.left, (float) this.zzjh.top, null);
            }
            canvas.restore();
            return;
        }
        throw new IllegalStateException("Neither target view nor drawable was set");
    }

    public final LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public final LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-2, -2);
    }

    /* access modifiers changed from: protected */
    public final LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new MarginLayoutParams(layoutParams);
    }

    /* access modifiers changed from: protected */
    public final boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams;
    }

    /* access modifiers changed from: protected */
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.zzjj || drawable == this.zzjk || drawable == null;
    }

    public final void zza(@Nullable Runnable runnable) {
        addOnLayoutChangeListener(new zzd(this, null));
    }

    public final void zzaq() {
        if (this.targetView != null) {
            setVisibility(0);
            String str = "alpha";
            ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzjl.asView(), str, new float[]{0.0f, 1.0f}).setDuration(350);
            duration.setInterpolator(zzes.zzdw());
            Animator zzc = this.zzjj.zzc(this.zzjh.exactCenterX() - this.zzjj.getCenterX(), this.zzjh.exactCenterY() - this.zzjj.getCenterY());
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.zzjk, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("scale", new float[]{0.0f, 1.0f}), PropertyValuesHolder.ofInt(str, new int[]{0, 255})});
            ofPropertyValuesHolder.setInterpolator(zzes.zzdw());
            Animator duration2 = ofPropertyValuesHolder.setDuration(350);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(new Animator[]{duration, zzc, duration2});
            animatorSet.addListener(new zze(this));
            zza((Animator) animatorSet);
            return;
        }
        throw new IllegalStateException("Target view must be set before animation");
    }

    public final void zzb(@Nullable Runnable runnable) {
        String str = "alpha";
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzjl.asView(), str, new float[]{0.0f}).setDuration(200);
        duration.setInterpolator(zzes.zzdx());
        float exactCenterX = this.zzjh.exactCenterX() - this.zzjj.getCenterX();
        float exactCenterY = this.zzjh.exactCenterY() - this.zzjj.getCenterY();
        OuterHighlightDrawable outerHighlightDrawable = this.zzjj;
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scale", new float[]{0.0f});
        PropertyValuesHolder ofInt = PropertyValuesHolder.ofInt(str, new int[]{0});
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(outerHighlightDrawable, new PropertyValuesHolder[]{ofFloat, PropertyValuesHolder.ofFloat("translationX", new float[]{0.0f, exactCenterX}), PropertyValuesHolder.ofFloat("translationY", new float[]{0.0f, exactCenterY}), ofInt});
        ofPropertyValuesHolder.setInterpolator(zzes.zzdx());
        Animator duration2 = ofPropertyValuesHolder.setDuration(200);
        Animator zzav = this.zzjk.zzav();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{duration, duration2, zzav});
        animatorSet.addListener(new zzg(this, runnable));
        zza((Animator) animatorSet);
    }

    public final void zzc(@Nullable Runnable runnable) {
        String str = "alpha";
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.zzjl.asView(), str, new float[]{0.0f}).setDuration(200);
        duration.setInterpolator(zzes.zzdx());
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.zzjj, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("scale", new float[]{1.125f}), PropertyValuesHolder.ofInt(str, new int[]{0})});
        ofPropertyValuesHolder.setInterpolator(zzes.zzdx());
        Animator duration2 = ofPropertyValuesHolder.setDuration(200);
        Animator zzav = this.zzjk.zzav();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{duration, duration2, zzav});
        animatorSet.addListener(new zzf(this, runnable));
        zza((Animator) animatorSet);
    }

    public final void zzg(@ColorInt int i) {
        this.zzjj.setColor(i);
    }

    /* access modifiers changed from: 0000 */
    public final View zzar() {
        return this.zzjl.asView();
    }

    /* access modifiers changed from: 0000 */
    public final OuterHighlightDrawable zzas() {
        return this.zzjj;
    }

    /* access modifiers changed from: 0000 */
    public final InnerZoneDrawable zzat() {
        return this.zzjk;
    }

    private final void zza(Animator animator) {
        Animator animator2 = this.zzjn;
        if (animator2 != null) {
            animator2.cancel();
        }
        this.zzjn = animator;
        this.zzjn.start();
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.zzjs = this.zzjh.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (this.zzjs) {
            GestureDetectorCompat gestureDetectorCompat = this.zzjq;
            if (gestureDetectorCompat != null) {
                gestureDetectorCompat.onTouchEvent(motionEvent);
                if (actionMasked == 1) {
                    motionEvent = MotionEvent.obtain(motionEvent);
                    motionEvent.setAction(3);
                }
            }
            if (this.targetView.getParent() != null) {
                this.targetView.onTouchEvent(motionEvent);
            }
        } else {
            this.zzjp.onTouchEvent(motionEvent);
        }
        return true;
    }

    /* access modifiers changed from: private */
    public final boolean zza(float f, float f2) {
        return this.zzji.contains(Math.round(f), Math.round(f2));
    }

    /* access modifiers changed from: private */
    public final Animator zzau() {
        InnerZoneDrawable innerZoneDrawable = this.zzjk;
        AnimatorSet animatorSet = new AnimatorSet();
        String str = "scale";
        ObjectAnimator duration = ObjectAnimator.ofFloat(innerZoneDrawable, str, new float[]{1.0f, 1.1f}).setDuration(500);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(innerZoneDrawable, str, new float[]{1.1f, 1.0f}).setDuration(500);
        ObjectAnimator duration3 = ObjectAnimator.ofPropertyValuesHolder(innerZoneDrawable, new PropertyValuesHolder[]{PropertyValuesHolder.ofFloat("pulseScale", new float[]{1.1f, 2.0f}), PropertyValuesHolder.ofFloat("pulseAlpha", new float[]{1.0f, 0.0f})}).setDuration(500);
        animatorSet.play(duration);
        animatorSet.play(duration2).with(duration3).after(duration);
        animatorSet.setInterpolator(zzes.zzdy());
        animatorSet.setStartDelay(500);
        zzej.zza(animatorSet, -1, null);
        return animatorSet;
    }
}
