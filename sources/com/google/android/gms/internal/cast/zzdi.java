package com.google.android.gms.internal.cast;

final class zzdi implements zzdm {
    private final /* synthetic */ zzdm zzyg;
    private final /* synthetic */ zzdh zzyh;

    zzdi(zzdh zzdh, zzdm zzdm) {
        this.zzyh = zzdh;
        this.zzyg = zzdm;
    }

    public final void zza(long j, int i, Object obj) {
        this.zzyh.zzxm = null;
        zzdm zzdm = this.zzyg;
        if (zzdm != null) {
            zzdm.zza(j, i, obj);
        }
    }

    public final void zzb(long j) {
        zzdm zzdm = this.zzyg;
        if (zzdm != null) {
            zzdm.zzb(j);
        }
    }
}
