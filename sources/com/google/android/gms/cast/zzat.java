package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzat extends zzb {
    private final /* synthetic */ int val$repeatMode;
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ MediaQueueItem[] zzfh;
    private final /* synthetic */ int zzfi;
    private final /* synthetic */ long zzfj;
    private final /* synthetic */ JSONObject zzfk;

    zzat(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        this.zzfh = mediaQueueItemArr;
        this.zzfi = i;
        this.val$repeatMode = i2;
        this.zzfj = j;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:10|11|12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x004f, code lost:
        r10.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0058, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0032, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0034 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r11) {
        /*
            r10 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r11 = r10.zzfd
            java.lang.Object r11 = r11.lock
            monitor-enter(r11)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r10.zzfd     // Catch:{ all -> 0x0059 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x0059 }
            com.google.android.gms.common.api.GoogleApiClient r1 = r10.zzfe     // Catch:{ all -> 0x0059 }
            r0.zza(r1)     // Catch:{ all -> 0x0059 }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r10.zzfd     // Catch:{ IllegalStateException -> 0x0034 }
            com.google.android.gms.internal.cast.zzdh r2 = r1.zzex     // Catch:{ IllegalStateException -> 0x0034 }
            com.google.android.gms.internal.cast.zzdm r3 = r10.zzgd     // Catch:{ IllegalStateException -> 0x0034 }
            com.google.android.gms.cast.MediaQueueItem[] r4 = r10.zzfh     // Catch:{ IllegalStateException -> 0x0034 }
            int r5 = r10.zzfi     // Catch:{ IllegalStateException -> 0x0034 }
            int r6 = r10.val$repeatMode     // Catch:{ IllegalStateException -> 0x0034 }
            long r7 = r10.zzfj     // Catch:{ IllegalStateException -> 0x0034 }
            org.json.JSONObject r9 = r10.zzfk     // Catch:{ IllegalStateException -> 0x0034 }
            r2.zza(r3, r4, r5, r6, r7, r9)     // Catch:{ IllegalStateException -> 0x0034 }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r10.zzfd     // Catch:{ all -> 0x0059 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0059 }
            r1.zza(r0)     // Catch:{ all -> 0x0059 }
            goto L_0x004d
        L_0x0032:
            r1 = move-exception
            goto L_0x004f
        L_0x0034:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0032 }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x0032 }
            com.google.android.gms.common.api.Result r1 = r10.createFailedResult(r1)     // Catch:{ all -> 0x0032 }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x0032 }
            r10.setResult(r1)     // Catch:{ all -> 0x0032 }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r10.zzfd     // Catch:{ all -> 0x0059 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0059 }
            r1.zza(r0)     // Catch:{ all -> 0x0059 }
        L_0x004d:
            monitor-exit(r11)     // Catch:{ all -> 0x0059 }
            return
        L_0x004f:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r10.zzfd     // Catch:{ all -> 0x0059 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x0059 }
            r2.zza(r0)     // Catch:{ all -> 0x0059 }
            throw r1     // Catch:{ all -> 0x0059 }
        L_0x0059:
            r0 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x0059 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzat.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
