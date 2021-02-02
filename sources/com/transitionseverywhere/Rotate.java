package com.transitionseverywhere;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.Map;

public class Rotate extends Transition {
    private static final String PROPNAME_ROTATION = "android:rotate:rotation";

    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_ROTATION, Float.valueOf(transitionValues.view.getRotation()));
    }

    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        transitionValues.values.put(PROPNAME_ROTATION, Float.valueOf(transitionValues.view.getRotation()));
    }

    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null) {
            return null;
        }
        View view = transitionValues2.view;
        Map<String, Object> map = transitionValues.values;
        String str = PROPNAME_ROTATION;
        float floatValue = ((Float) map.get(str)).floatValue();
        float floatValue2 = ((Float) transitionValues2.values.get(str)).floatValue();
        if (floatValue == floatValue2) {
            return null;
        }
        view.setRotation(floatValue);
        return ObjectAnimator.ofFloat(view, View.ROTATION, new float[]{floatValue, floatValue2});
    }
}
