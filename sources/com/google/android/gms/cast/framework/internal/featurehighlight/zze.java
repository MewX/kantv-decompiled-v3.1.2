package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class zze extends AnimatorListenerAdapter {
    private final /* synthetic */ zza zzjt;

    zze(zza zza) {
        this.zzjt = zza;
    }

    public final void onAnimationEnd(Animator animator) {
        zza zza = this.zzjt;
        zza.zzjn = zza.zzau();
        this.zzjt.zzjn.start();
    }
}
