package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import androidx.annotation.NonNull;

public class zzcm {
    private final String namespace;
    protected final zzdg zzvq;
    private zzdl zzvr;

    protected zzcm(String str, String str2, String str3) {
        zzcu.zzo(str);
        this.namespace = str;
        this.zzvq = new zzdg(str2);
        setSessionLabel(str3);
    }

    public void zza(long j, int i) {
    }

    public void zzdc() {
    }

    public void zzn(@NonNull String str) {
    }

    public final void setSessionLabel(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.zzvq.zzt(str);
        }
    }

    public final String getNamespace() {
        return this.namespace;
    }

    public final void zza(zzdl zzdl) {
        this.zzvr = zzdl;
        if (this.zzvr == null) {
            zzdc();
        }
    }

    /* access modifiers changed from: protected */
    public final void zza(String str, long j, String str2) throws IllegalStateException {
        Object[] objArr = {str, null};
        this.zzvr.zza(this.namespace, str, j, null);
    }

    /* access modifiers changed from: protected */
    public final long zzde() {
        return this.zzvr.zzl();
    }
}
