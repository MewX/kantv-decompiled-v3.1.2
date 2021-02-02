package com.google.android.gms.internal.cast;

final class zzep implements Runnable {
    private final /* synthetic */ zzen zzzh;

    zzep(zzen zzen) {
        this.zzzh = zzen;
    }

    public final void run() {
        this.zzzh.doFrame(System.nanoTime());
    }
}
