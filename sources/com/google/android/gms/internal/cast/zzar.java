package com.google.android.gms.internal.cast;

import android.graphics.Bitmap;

final class zzar implements zzy {
    private final /* synthetic */ zzaq zzqy;

    zzar(zzaq zzaq) {
        this.zzqy = zzaq;
    }

    public final void zza(Bitmap bitmap) {
        if (bitmap != null) {
            if (this.zzqy.zzqx != null) {
                this.zzqy.zzqx.setVisibility(4);
            }
            this.zzqy.zzqt.setVisibility(0);
            this.zzqy.zzqt.setImageBitmap(bitmap);
        }
    }
}
