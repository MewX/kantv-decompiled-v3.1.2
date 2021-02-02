package com.google.android.gms.cast;

import android.util.Log;
import com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.zzdm;
import org.json.JSONObject;

final class zzbo implements zzdm {
    private final /* synthetic */ zzb zzge;

    zzbo(zzb zzb) {
        this.zzge = zzb;
    }

    public final void zzb(long j) {
        try {
            this.zzge.setResult((MediaChannelResult) this.zzge.createFailedResult(new Status(2103)));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestReplaced", e);
        }
    }

    public final void zza(long j, int i, Object obj) {
        try {
            this.zzge.setResult(new zzc(new Status(i), obj instanceof JSONObject ? (JSONObject) obj : null));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestCompleted", e);
        }
    }
}
