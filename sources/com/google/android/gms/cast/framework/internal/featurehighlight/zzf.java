package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class zzf extends AnimatorListenerAdapter {
    private final /* synthetic */ zza zzjt;
    private final /* synthetic */ Runnable zzjy;

    zzf(zza zza, Runnable runnable) {
        this.zzjt = zza;
        this.zzjy = runnable;
    }

    public final void onAnimationEnd(Animator animator) {
        this.zzjt.setVisibility(8);
        this.zzjt.zzjn = null;
        Runnable runnable = this.zzjy;
        if (runnable != null) {
            runnable.run();
        }
    }
}
