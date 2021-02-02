package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class zzg extends AnimatorListenerAdapter {
    private final /* synthetic */ zza zzjt;
    private final /* synthetic */ Runnable zzjz;

    zzg(zza zza, Runnable runnable) {
        this.zzjt = zza;
        this.zzjz = runnable;
    }

    public final void onAnimationEnd(Animator animator) {
        this.zzjt.setVisibility(8);
        this.zzjt.zzjn = null;
        Runnable runnable = this.zzjz;
        if (runnable != null) {
            runnable.run();
        }
    }
}
