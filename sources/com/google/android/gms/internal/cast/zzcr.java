package com.google.android.gms.internal.cast;

final class zzcr implements Runnable {
    private final /* synthetic */ zzcn zzwr;
    private final /* synthetic */ zzcv zzwt;

    zzcr(zzcp zzcp, zzcn zzcn, zzcv zzcv) {
        this.zzwr = zzcn;
        this.zzwt = zzcv;
    }

    public final void run() {
        this.zzwr.zza(this.zzwt);
    }
}
