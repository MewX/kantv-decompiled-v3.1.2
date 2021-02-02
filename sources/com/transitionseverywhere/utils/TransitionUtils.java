package com.transitionseverywhere.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.annotation.TargetApi;
import androidx.annotation.Nullable;

@TargetApi(14)
public class TransitionUtils {
    @Nullable
    public static Animator mergeAnimators(@Nullable Animator animator, @Nullable Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{animator, animator2});
        return animatorSet;
    }
}
