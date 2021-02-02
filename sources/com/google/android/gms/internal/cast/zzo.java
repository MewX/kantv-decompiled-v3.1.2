package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.IntroductoryOverlay.zza;
import com.google.android.gms.cast.framework.internal.featurehighlight.zzh;

final class zzo implements zzh {
    final /* synthetic */ zzn zziw;

    zzo(zzn zzn) {
        this.zziw = zzn;
    }

    public final void zzao() {
        if (this.zziw.zziv) {
            zza.zzd(this.zziw.zzhy);
            this.zziw.zziu.zzc((Runnable) new zzp(this));
        }
    }

    public final void dismiss() {
        if (this.zziw.zziv) {
            zza.zzd(this.zziw.zzhy);
            this.zziw.zziu.zzb((Runnable) new zzq(this));
        }
    }
}
