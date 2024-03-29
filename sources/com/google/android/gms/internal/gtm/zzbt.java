package com.google.android.gms.internal.gtm;

import android.os.Looper;

final class zzbt implements Runnable {
    private final /* synthetic */ zzbs zzyu;

    zzbt(zzbs zzbs) {
        this.zzyu = zzbs;
    }

    public final void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.zzyu.zzwc.zzcq().zza((Runnable) this);
            return;
        }
        boolean zzez = this.zzyu.zzez();
        this.zzyu.zzyt = 0;
        if (zzez) {
            this.zzyu.run();
        }
    }
}
