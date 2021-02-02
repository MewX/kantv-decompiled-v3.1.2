package com.transitionseverywhere.extra;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.PointF;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.transitionseverywhere.utils.TransitionUtils;
import java.util.Map;

@TargetApi(14)
public class Translation extends Transition {
    @Nullable
    private static final Property<View, PointF> TRANSLATION_PROPERTY;
    private static final String TRANSLATION_X = "Translation:translationX";
    private static final String TRANSLATION_Y = "Translation:translationY";

    static {
        if (VERSION.SDK_INT >= 21) {
            TRANSLATION_PROPERTY = new Property<View, PointF>(PointF.class, "translation") {
                public void set(@NonNull View view, @NonNull PointF pointF) {
                    view.setTranslationX(pointF.x);
                    view.setTranslationY(pointF.y);
                }

                public PointF get(@NonNull View view) {
                    return new PointF(view.getTranslationX(), view.getTranslationY());
                }
            };
        } else {
            TRANSLATION_PROPERTY = null;
        }
    }

    public Translation() {
    }

    public Translation(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void captureValues(@NonNull TransitionValues transitionValues) {
        transitionValues.values.put(TRANSLATION_X, Float.valueOf(transitionValues.view.getTranslationX()));
        transitionValues.values.put(TRANSLATION_Y, Float.valueOf(transitionValues.view.getTranslationY()));
    }

    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        Animator animator;
        Animator animator2 = null;
        if (!(transitionValues == null || transitionValues2 == null)) {
            Map<String, Object> map = transitionValues.values;
            String str = TRANSLATION_X;
            float floatValue = ((Float) map.get(str)).floatValue();
            Map<String, Object> map2 = transitionValues.values;
            String str2 = TRANSLATION_Y;
            float floatValue2 = ((Float) map2.get(str2)).floatValue();
            float floatValue3 = ((Float) transitionValues2.values.get(str)).floatValue();
            float floatValue4 = ((Float) transitionValues2.values.get(str2)).floatValue();
            transitionValues2.view.setTranslationX(floatValue);
            transitionValues2.view.setTranslationY(floatValue2);
            if (VERSION.SDK_INT < 21 || TRANSLATION_PROPERTY == null) {
                if (floatValue == floatValue3) {
                    animator = null;
                } else {
                    animator = ObjectAnimator.ofFloat(transitionValues2.view, View.TRANSLATION_X, new float[]{floatValue, floatValue3});
                }
                if (floatValue2 != floatValue4) {
                    animator2 = ObjectAnimator.ofFloat(transitionValues2.view, View.TRANSLATION_Y, new float[]{floatValue2, floatValue4});
                }
                animator2 = TransitionUtils.mergeAnimators(animator, animator2);
            } else {
                return ObjectAnimator.ofObject(transitionValues2.view, TRANSLATION_PROPERTY, null, getPathMotion().getPath(floatValue, floatValue2, floatValue3, floatValue4));
            }
        }
        return animator2;
    }
}
