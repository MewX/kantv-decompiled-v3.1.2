package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Status;

final class zzbs implements zzdm {
    private final /* synthetic */ zzbl zzui;
    private final /* synthetic */ zzbr zzuj;

    zzbs(zzbr zzbr, zzbl zzbl) {
        this.zzuj = zzbr;
        this.zzui = zzbl;
    }

    public final void zzb(long j) {
        this.zzuj.setResult(zzbr.a_(new Status(2103)));
    }

    public final void zza(long j, int i, Object obj) {
        if (obj == null) {
            try {
                zzbr zzbr = this.zzuj;
                zzbx zzbx = new zzbx(new Status(i, null, null), null, j, null);
                zzbr.setResult(zzbx);
            } catch (ClassCastException unused) {
                this.zzuj.setResult(zzbr.a_(new Status(13)));
            }
        } else {
            zzbz zzbz = (zzbz) obj;
            String str = zzbz.zzvb;
            if (i == 0 && str != null) {
                this.zzuj.zzud.zzuc = str;
            }
            zzbr zzbr2 = this.zzuj;
            zzbx zzbx2 = new zzbx(new Status(i, zzbz.zzuu, null), str, zzbz.zzvc, zzbz.zzuv);
            zzbr2.setResult(zzbx2);
        }
    }
}
