package com.google.android.gms.cast.framework.media;

import android.util.Log;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.zzdm;
import org.json.JSONObject;

final class zzaw implements zzdm {
    private final /* synthetic */ RemoteMediaClient zzpb;
    private final /* synthetic */ zzc zzpc;

    zzaw(zzc zzc, RemoteMediaClient remoteMediaClient) {
        this.zzpc = zzc;
        this.zzpb = remoteMediaClient;
    }

    public final void zzb(long j) {
        try {
            this.zzpc.setResult((MediaChannelResult) this.zzpc.createFailedResult(new Status(2103)));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaClient", "Result already set when calling onRequestReplaced", e);
        }
    }

    public final void zza(long j, int i, Object obj) {
        try {
            this.zzpc.setResult(new zzd(new Status(i), obj instanceof JSONObject ? (JSONObject) obj : null));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaClient", "Result already set when calling onRequestCompleted", e);
        }
    }
}
