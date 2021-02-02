package com.google.android.gms.cast.framework.media;

import java.util.TimerTask;

final class zzay extends TimerTask {
    private final /* synthetic */ RemoteMediaClient zzpb;
    private final /* synthetic */ zze zzph;

    zzay(zze zze, RemoteMediaClient remoteMediaClient) {
        this.zzph = zze;
        this.zzpb = remoteMediaClient;
    }

    public final void run() {
        RemoteMediaClient.this.zza(this.zzph.zzpd);
        RemoteMediaClient.this.handler.postDelayed(this, this.zzph.zzpe);
    }
}
