package com.google.android.gms.internal.cast;

import android.view.ViewGroup;

final class zzp implements Runnable {
    private final /* synthetic */ zzo zzix;

    zzp(zzo zzo) {
        this.zzix = zzo;
    }

    public final void run() {
        if (this.zzix.zziw.zziv) {
            ((ViewGroup) this.zzix.zziw.zzhy.getWindow().getDecorView()).removeView(this.zzix.zziw);
            if (this.zzix.zziw.zzic != null) {
                this.zzix.zziw.zzic.onOverlayDismissed();
            }
            this.zzix.zziw.reset();
        }
    }
}
