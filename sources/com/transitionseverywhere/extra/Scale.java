package com.transitionseverywhere.extra;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import com.transitionseverywhere.R;
import com.transitionseverywhere.utils.TransitionUtils;

public class Scale extends Visibility {
    static final String PROPNAME_SCALE_X = "scale:scaleX";
    static final String PROPNAME_SCALE_Y = "scale:scaleY";
    private float mDisappearedScale = 0.0f;

    public Scale() {
    }

    public Scale(float f) {
        setDisappearedScale(f);
    }

    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        transitionValues.values.put(PROPNAME_SCALE_X, Float.valueOf(transitionValues.view.getScaleX()));
        transitionValues.values.put(PROPNAME_SCALE_Y, Float.valueOf(transitionValues.view.getScaleY()));
    }

    @NonNull
    public Scale setDisappearedScale(float f) {
        if (f >= 0.0f) {
            this.mDisappearedScale = f;
            return this;
        }
        throw new IllegalArgumentException("disappearedScale cannot be negative!");
    }

    public Scale(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Scale);
        setDisappearedScale(obtainStyledAttributes.getFloat(R.styleable.Scale_disappearedScale, this.mDisappearedScale));
        obtainStyledAttributes.recycle();
    }

    @Nullable
    private Animator createAnimation(@NonNull final View view, float f, float f2, @Nullable TransitionValues transitionValues) {
        final float scaleX = view.getScaleX();
        final float scaleY = view.getScaleY();
        float f3 = scaleX * f;
        float f4 = scaleX * f2;
        float f5 = f * scaleY;
        float f6 = f2 * scaleY;
        if (transitionValues != null) {
            Float f7 = (Float) transitionValues.values.get(PROPNAME_SCALE_X);
            Float f8 = (Float) transitionValues.values.get(PROPNAME_SCALE_Y);
            if (!(f7 == null || f7.floatValue() == scaleX)) {
                f3 = f7.floatValue();
            }
            if (!(f8 == null || f8.floatValue() == scaleY)) {
                f5 = f8.floatValue();
            }
        }
        view.setScaleX(f3);
        view.setScaleY(f5);
        Animator mergeAnimators = TransitionUtils.mergeAnimators(ObjectAnimator.ofFloat(view, View.SCALE_X, new float[]{f3, f4}), ObjectAnimator.ofFloat(view, View.SCALE_Y, new float[]{f5, f6}));
        addListener(new TransitionListenerAdapter() {
            public void onTransitionEnd(@NonNull Transition transition) {
                view.setScaleX(scaleX);
                view.setScaleY(scaleY);
                transition.removeListener(this);
            }
        });
        return mergeAnimators;
    }

    @Nullable
    public Animator onAppear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return createAnimation(view, this.mDisappearedScale, 1.0f, transitionValues);
    }

    public Animator onDisappear(@NonNull ViewGroup viewGroup, @NonNull View view, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return createAnimation(view, 1.0f, this.mDisappearedScale, transitionValues);
    }
}
