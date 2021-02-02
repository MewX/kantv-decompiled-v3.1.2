package com.google.android.gms.internal.cast;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.collection.SimpleArrayMap;

public class zzei extends AnimatorListenerAdapter {
    private SimpleArrayMap<Animator, Boolean> zzyy = new SimpleArrayMap<>();

    public void onAnimationStart(Animator animator) {
        this.zzyy.put(animator, Boolean.valueOf(false));
    }

    public void onAnimationCancel(Animator animator) {
        this.zzyy.put(animator, Boolean.valueOf(true));
    }

    /* access modifiers changed from: protected */
    public final boolean zzb(Animator animator) {
        return this.zzyy.containsKey(animator) && ((Boolean) this.zzyy.get(animator)).booleanValue();
    }
}
