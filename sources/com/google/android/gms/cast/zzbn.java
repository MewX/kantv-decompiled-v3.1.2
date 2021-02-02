package com.google.android.gms.cast;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

final class zzbn implements ResultCallback<Status> {
    private final long zzgb;
    private final /* synthetic */ zza zzgc;

    zzbn(zza zza, long j) {
        this.zzgc = zza;
        this.zzgb = j;
    }

    public final /* synthetic */ void onResult(@NonNull Result result) {
        Status status = (Status) result;
        if (!status.isSuccess()) {
            RemoteMediaPlayer.this.zzex.zza(this.zzgb, status.getStatusCode());
        }
    }
}
