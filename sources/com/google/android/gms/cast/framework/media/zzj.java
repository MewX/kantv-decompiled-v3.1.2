package com.google.android.gms.cast.framework.media;

import android.graphics.Bitmap;
import com.google.android.gms.internal.cast.zzy;

final class zzj implements zzy {
    private final /* synthetic */ MediaNotificationService zzls;
    private final /* synthetic */ zzb zzlt;

    zzj(MediaNotificationService mediaNotificationService, zzb zzb) {
        this.zzls = mediaNotificationService;
        this.zzlt = zzb;
    }

    public final void zza(Bitmap bitmap) {
        zzb zzb = this.zzlt;
        zzb.zzma = bitmap;
        this.zzls.zzlp = zzb;
        this.zzls.zzaz();
    }
}
