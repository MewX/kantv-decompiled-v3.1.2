package com.google.android.gms.cast.framework.media;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

final class zzau implements ResultCallback<Status> {
    private final long zzgb;
    private final /* synthetic */ zza zzoz;

    zzau(zza zza, long j) {
        this.zzoz = zza;
        this.zzgb = j;
    }

    public final /* synthetic */ void onResult(@NonNull Result result) {
        Status status = (Status) result;
        if (!status.isSuccess()) {
            RemoteMediaClient.this.zzex.zza(this.zzgb, status.getStatusCode());
        }
    }
}
