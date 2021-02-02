package com.google.android.gms.internal.cast;

final class zzek extends zzen {
    private final /* synthetic */ zzej zzzd;

    zzek(zzej zzej) {
        this.zzzd = zzej;
    }

    public final void doFrame(long j) {
        this.zzzd.zzzb = this.zzzd.zzzb + 1;
        zzej zzej = this.zzzd;
        if (!zzej.zzb(zzej.animator) && !this.zzzd.animator.isStarted() && !this.zzzd.zzds()) {
            if (this.zzzd.zzyz != null) {
                this.zzzd.zzyz.run();
            }
            this.zzzd.animator.start();
        }
    }
}
