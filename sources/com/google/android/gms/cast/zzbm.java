package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;

final class zzbm extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;

    zzbm(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:10|11|12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0045, code lost:
        r3.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x004e, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0028, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x002a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r4) {
        /*
            r3 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r4 = r3.zzfd
            java.lang.Object r4 = r4.lock
            monitor-enter(r4)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r3.zzfd     // Catch:{ all -> 0x004f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x004f }
            com.google.android.gms.common.api.GoogleApiClient r1 = r3.zzfe     // Catch:{ all -> 0x004f }
            r0.zza(r1)     // Catch:{ all -> 0x004f }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r3.zzfd     // Catch:{ IllegalStateException -> 0x002a }
            com.google.android.gms.internal.cast.zzdh r1 = r1.zzex     // Catch:{ IllegalStateException -> 0x002a }
            com.google.android.gms.internal.cast.zzdm r2 = r3.zzgd     // Catch:{ IllegalStateException -> 0x002a }
            r1.zzb(r2)     // Catch:{ IllegalStateException -> 0x002a }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r3.zzfd     // Catch:{ all -> 0x004f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x004f }
            r1.zza(r0)     // Catch:{ all -> 0x004f }
            goto L_0x0043
        L_0x0028:
            r1 = move-exception
            goto L_0x0045
        L_0x002a:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0028 }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x0028 }
            com.google.android.gms.common.api.Result r1 = r3.createFailedResult(r1)     // Catch:{ all -> 0x0028 }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x0028 }
            r3.setResult(r1)     // Catch:{ all -> 0x0028 }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r3.zzfd     // Catch:{ all -> 0x004f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x004f }
            r1.zza(r0)     // Catch:{ all -> 0x004f }
        L_0x0043:
            monitor-exit(r4)     // Catch:{ all -> 0x004f }
            return
        L_0x0045:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r3.zzfd     // Catch:{ all -> 0x004f }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x004f }
            r2.zza(r0)     // Catch:{ all -> 0x004f }
            throw r1     // Catch:{ all -> 0x004f }
        L_0x004f:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x004f }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbm.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
