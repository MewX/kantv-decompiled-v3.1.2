package com.google.android.gms.internal.cast;

final class zzcs implements Runnable {
    private final /* synthetic */ zzcn zzwr;
    private final /* synthetic */ zzcd zzwu;

    zzcs(zzcp zzcp, zzcn zzcn, zzcd zzcd) {
        this.zzwr = zzcn;
        this.zzwu = zzcd;
    }

    public final void run() {
        this.zzwr.zza(this.zzwu);
    }
}
