package com.google.android.gms.internal.cast;

final class zzcq implements Runnable {
    private final /* synthetic */ zzcn zzwr;
    private final /* synthetic */ int zzws;

    zzcq(zzcp zzcp, zzcn zzcn, int i) {
        this.zzwr = zzcn;
        this.zzws = i;
    }

    public final void run() {
        this.zzwr.zzaj.onApplicationDisconnected(this.zzws);
    }
}
