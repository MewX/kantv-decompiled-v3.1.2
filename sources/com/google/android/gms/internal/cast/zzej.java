package com.google.android.gms.internal.cast;

import android.animation.Animator;
import androidx.annotation.Nullable;

public final class zzej extends zzei {
    protected final Animator animator;
    /* access modifiers changed from: private */
    public final Runnable zzyz;
    private final int zzza;
    /* access modifiers changed from: private */
    public int zzzb;
    private zzen zzzc = new zzek(this);

    public static void zza(Animator animator2, int i, @Nullable Runnable runnable) {
        animator2.addListener(new zzej(animator2, -1, null));
    }

    private zzej(Animator animator2, int i, @Nullable Runnable runnable) {
        this.animator = animator2;
        this.zzza = -1;
        this.zzyz = null;
    }

    public final void onAnimationEnd(Animator animator2) {
        if (!zzb(animator2)) {
            zzel.zzdt().zza(this.zzzc);
        }
    }

    /* access modifiers changed from: private */
    public final boolean zzds() {
        int i = this.zzza;
        if (i != -1 && this.zzzb >= i) {
            return true;
        }
        return false;
    }
}
