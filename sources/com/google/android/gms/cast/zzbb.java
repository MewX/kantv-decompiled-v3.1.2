package com.google.android.gms.cast;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cast.MediaLoadOptions.Builder;
import com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzbb extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ long zzfj;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ boolean zzfr;
    private final /* synthetic */ long[] zzfs;
    private final /* synthetic */ MediaInfo zzft;

    zzbb(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, boolean z, long j, long[] jArr, JSONObject jSONObject, MediaInfo mediaInfo) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        this.zzfr = z;
        this.zzfj = j;
        this.zzfs = jArr;
        this.zzfk = jSONObject;
        this.zzft = mediaInfo;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    public final void zza(zzcn zzcn) {
        synchronized (this.zzfd.lock) {
            this.zzfd.zzey.zza(this.zzfe);
            try {
                this.zzfd.zzex.zza(this.zzgd, this.zzft, new Builder().setAutoplay(this.zzfr).setPlayPosition(this.zzfj).setActiveTrackIds(this.zzfs).setCustomData(this.zzfk).build());
                this.zzfd.zzey.zza(null);
            } catch (IllegalStateException e) {
                try {
                    Log.e("RemoteMediaPlayer", "load - channel error", e);
                    setResult((MediaChannelResult) createFailedResult(new Status(2100)));
                } finally {
                    this.zzfd.zzey.zza(null);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
