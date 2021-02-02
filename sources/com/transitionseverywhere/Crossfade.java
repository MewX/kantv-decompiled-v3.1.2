package com.transitionseverywhere;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.RectEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build.VERSION;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.Map;

@TargetApi(18)
public class Crossfade extends Transition {
    public static final int FADE_BEHAVIOR_CROSSFADE = 0;
    public static final int FADE_BEHAVIOR_OUT_IN = 2;
    public static final int FADE_BEHAVIOR_REVEAL = 1;
    private static final String LOG_TAG = "Crossfade";
    private static final String PROPNAME_BITMAP = "android:crossfade:bitmap";
    private static final String PROPNAME_BOUNDS = "android:crossfade:bounds";
    private static final String PROPNAME_DRAWABLE = "android:crossfade:drawable";
    public static final int RESIZE_BEHAVIOR_NONE = 0;
    public static final int RESIZE_BEHAVIOR_SCALE = 1;
    private static RectEvaluator sRectEvaluator;
    /* access modifiers changed from: private */
    public int mFadeBehavior = 1;
    private int mResizeBehavior = 1;

    @NonNull
    public Crossfade setFadeBehavior(int i) {
        if (i >= 0 && i <= 2) {
            this.mFadeBehavior = i;
        }
        return this;
    }

    public int getFadeBehavior() {
        return this.mFadeBehavior;
    }

    @NonNull
    public Crossfade setResizeBehavior(int i) {
        if (i >= 0 && i <= 1) {
            this.mResizeBehavior = i;
        }
        return this;
    }

    public int getResizeBehavior() {
        return this.mResizeBehavior;
    }

    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator;
        TransitionValues transitionValues3 = transitionValues;
        TransitionValues transitionValues4 = transitionValues2;
        ObjectAnimator objectAnimator2 = null;
        if (!(transitionValues3 == null || transitionValues4 == null || VERSION.SDK_INT < 18)) {
            if (sRectEvaluator == null) {
                sRectEvaluator = new RectEvaluator();
            }
            boolean z = this.mFadeBehavior != 1;
            final View view = transitionValues4.view;
            Map<String, Object> map = transitionValues3.values;
            Map<String, Object> map2 = transitionValues4.values;
            String str = PROPNAME_BOUNDS;
            Rect rect = (Rect) map.get(str);
            Rect rect2 = (Rect) map2.get(str);
            if (!(rect == null || rect2 == null)) {
                String str2 = PROPNAME_BITMAP;
                Bitmap bitmap = (Bitmap) map.get(str2);
                Bitmap bitmap2 = (Bitmap) map2.get(str2);
                String str3 = PROPNAME_DRAWABLE;
                final BitmapDrawable bitmapDrawable = (BitmapDrawable) map.get(str3);
                BitmapDrawable bitmapDrawable2 = (BitmapDrawable) map2.get(str3);
                if (!(bitmapDrawable == null || bitmapDrawable2 == null || bitmap.sameAs(bitmap2))) {
                    ViewOverlay overlay = z ? ((ViewGroup) view.getParent()).getOverlay() : view.getOverlay();
                    if (this.mFadeBehavior == 1) {
                        overlay.add(bitmapDrawable2);
                    }
                    overlay.add(bitmapDrawable);
                    String str4 = "alpha";
                    if (this.mFadeBehavior == 2) {
                        objectAnimator = ObjectAnimator.ofInt(bitmapDrawable, str4, new int[]{255, 0, 0});
                    } else {
                        objectAnimator = ObjectAnimator.ofInt(bitmapDrawable, str4, new int[]{0});
                    }
                    ObjectAnimator objectAnimator3 = objectAnimator;
                    objectAnimator3.addUpdateListener(new AnimatorUpdateListener() {
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            view.invalidate(bitmapDrawable.getBounds());
                        }
                    });
                    int i = this.mFadeBehavior;
                    if (i == 2) {
                        objectAnimator2 = ObjectAnimator.ofFloat(view, View.ALPHA, new float[]{0.0f, 0.0f, 1.0f});
                    } else if (i == 0) {
                        objectAnimator2 = ObjectAnimator.ofFloat(view, View.ALPHA, new float[]{0.0f, 1.0f});
                    }
                    ObjectAnimator objectAnimator4 = objectAnimator2;
                    final boolean z2 = z;
                    final View view2 = view;
                    final BitmapDrawable bitmapDrawable3 = bitmapDrawable;
                    AnonymousClass2 r11 = r0;
                    final BitmapDrawable bitmapDrawable4 = bitmapDrawable2;
                    AnonymousClass2 r0 = new AnimatorListenerAdapter() {
                        public void onAnimationEnd(Animator animator) {
                            ViewOverlay overlay = z2 ? ((ViewGroup) view2.getParent()).getOverlay() : view2.getOverlay();
                            overlay.remove(bitmapDrawable3);
                            if (Crossfade.this.mFadeBehavior == 1) {
                                overlay.remove(bitmapDrawable4);
                            }
                        }
                    };
                    objectAnimator3.addListener(r11);
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(new Animator[]{objectAnimator3});
                    if (objectAnimator4 != null) {
                        animatorSet.playTogether(new Animator[]{objectAnimator4});
                    }
                    if (this.mResizeBehavior == 1 && !rect.equals(rect2)) {
                        String str5 = "bounds";
                        animatorSet.playTogether(new Animator[]{ObjectAnimator.ofObject(bitmapDrawable, str5, sRectEvaluator, new Object[]{rect, rect2})});
                        if (this.mResizeBehavior == 1) {
                            animatorSet.playTogether(new Animator[]{ObjectAnimator.ofObject(bitmapDrawable2, str5, sRectEvaluator, new Object[]{rect, rect2})});
                        }
                    }
                    return animatorSet;
                }
            }
        }
        return null;
    }

    private void captureValues(@NonNull TransitionValues transitionValues) {
        if (VERSION.SDK_INT >= 18) {
            View view = transitionValues.view;
            if (view.getWidth() > 0 && view.getHeight() > 0) {
                Rect rect = new Rect(0, 0, view.getWidth(), view.getHeight());
                if (this.mFadeBehavior != 1) {
                    rect.offset(view.getLeft(), view.getTop());
                }
                transitionValues.values.put(PROPNAME_BOUNDS, rect);
                Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Config.ARGB_8888);
                if (view instanceof TextureView) {
                    createBitmap = ((TextureView) view).getBitmap();
                } else {
                    view.draw(new Canvas(createBitmap));
                }
                transitionValues.values.put(PROPNAME_BITMAP, createBitmap);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(view.getResources(), createBitmap);
                bitmapDrawable.setBounds(rect);
                transitionValues.values.put(PROPNAME_DRAWABLE, bitmapDrawable);
            }
        }
    }

    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }
}
