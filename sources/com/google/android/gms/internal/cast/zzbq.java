package com.google.android.gms.internal.cast;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

final class zzbq implements ResultCallback<Status> {
    private final /* synthetic */ zzbl zzud;
    private final /* synthetic */ long zzuh;

    zzbq(zzbl zzbl, long j) {
        this.zzud = zzbl;
        this.zzuh = j;
    }

    public final /* synthetic */ void onResult(Result result) {
        Status status = (Status) result;
        if (!status.isSuccess()) {
            this.zzud.zza(this.zzuh, status.getStatusCode());
        }
    }
}
