package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzbf extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ int zzfu;
    private final /* synthetic */ int zzfv;

    zzbf(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, int i2, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfu = i;
        this.zzfv = i2;
        this.zzfe = googleApiClient2;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(6:33|34|35|36|37|38) */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00a5, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c1, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00c2, code lost:
        r7.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00cb, code lost:
        throw r0;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:33:0x00a7 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r8) {
        /*
            r7 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r8 = r7.zzfd
            java.lang.Object r8 = r8.lock
            monitor-enter(r8)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r7.zzfd     // Catch:{ all -> 0x00cc }
            int r1 = r7.zzfu     // Catch:{ all -> 0x00cc }
            int r0 = r0.zzc(r1)     // Catch:{ all -> 0x00cc }
            r1 = -1
            r2 = 0
            if (r0 != r1) goto L_0x0023
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x00cc }
            r0.<init>(r2)     // Catch:{ all -> 0x00cc }
            com.google.android.gms.common.api.Result r0 = r7.createFailedResult(r0)     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0     // Catch:{ all -> 0x00cc }
            r7.setResult(r0)     // Catch:{ all -> 0x00cc }
            monitor-exit(r8)     // Catch:{ all -> 0x00cc }
            return
        L_0x0023:
            int r1 = r7.zzfv     // Catch:{ all -> 0x00cc }
            r3 = 1
            if (r1 >= 0) goto L_0x004c
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x00cc }
            r1 = 2001(0x7d1, float:2.804E-42)
            java.util.Locale r4 = java.util.Locale.ROOT     // Catch:{ all -> 0x00cc }
            java.lang.String r5 = "Invalid request: Invalid newIndex %d."
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x00cc }
            int r6 = r7.zzfv     // Catch:{ all -> 0x00cc }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x00cc }
            r3[r2] = r6     // Catch:{ all -> 0x00cc }
            java.lang.String r2 = java.lang.String.format(r4, r5, r3)     // Catch:{ all -> 0x00cc }
            r0.<init>(r1, r2)     // Catch:{ all -> 0x00cc }
            com.google.android.gms.common.api.Result r0 = r7.createFailedResult(r0)     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0     // Catch:{ all -> 0x00cc }
            r7.setResult(r0)     // Catch:{ all -> 0x00cc }
            monitor-exit(r8)     // Catch:{ all -> 0x00cc }
            return
        L_0x004c:
            int r1 = r7.zzfv     // Catch:{ all -> 0x00cc }
            if (r0 != r1) goto L_0x0060
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x00cc }
            r0.<init>(r2)     // Catch:{ all -> 0x00cc }
            com.google.android.gms.common.api.Result r0 = r7.createFailedResult(r0)     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0     // Catch:{ all -> 0x00cc }
            r7.setResult(r0)     // Catch:{ all -> 0x00cc }
            monitor-exit(r8)     // Catch:{ all -> 0x00cc }
            return
        L_0x0060:
            int r1 = r7.zzfv     // Catch:{ all -> 0x00cc }
            if (r1 <= r0) goto L_0x0068
            int r0 = r7.zzfv     // Catch:{ all -> 0x00cc }
            int r0 = r0 + r3
            goto L_0x006a
        L_0x0068:
            int r0 = r7.zzfv     // Catch:{ all -> 0x00cc }
        L_0x006a:
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r7.zzfd     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.MediaStatus r1 = r1.getMediaStatus()     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.MediaQueueItem r0 = r1.getQueueItem(r0)     // Catch:{ all -> 0x00cc }
            if (r0 == 0) goto L_0x007b
            int r0 = r0.getItemId()     // Catch:{ all -> 0x00cc }
            goto L_0x007c
        L_0x007b:
            r0 = 0
        L_0x007c:
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r7.zzfd     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x00cc }
            com.google.android.gms.common.api.GoogleApiClient r4 = r7.zzfe     // Catch:{ all -> 0x00cc }
            r1.zza(r4)     // Catch:{ all -> 0x00cc }
            r1 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r4 = r7.zzfd     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            com.google.android.gms.internal.cast.zzdh r4 = r4.zzex     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            com.google.android.gms.internal.cast.zzdm r5 = r7.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            int[] r3 = new int[r3]     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            int r6 = r7.zzfu     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            r3[r2] = r6     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            org.json.JSONObject r2 = r7.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            r4.zza(r5, r3, r0, r2)     // Catch:{ zzdk | IllegalStateException -> 0x00a7 }
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r7.zzfd     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x00cc }
            r0.zza(r1)     // Catch:{ all -> 0x00cc }
            goto L_0x00c0
        L_0x00a5:
            r0 = move-exception
            goto L_0x00c2
        L_0x00a7:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x00a5 }
            r2 = 2100(0x834, float:2.943E-42)
            r0.<init>(r2)     // Catch:{ all -> 0x00a5 }
            com.google.android.gms.common.api.Result r0 = r7.createFailedResult(r0)     // Catch:{ all -> 0x00a5 }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0     // Catch:{ all -> 0x00a5 }
            r7.setResult(r0)     // Catch:{ all -> 0x00a5 }
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r7.zzfd     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x00cc }
            r0.zza(r1)     // Catch:{ all -> 0x00cc }
        L_0x00c0:
            monitor-exit(r8)     // Catch:{ all -> 0x00cc }
            return
        L_0x00c2:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r7.zzfd     // Catch:{ all -> 0x00cc }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x00cc }
            r2.zza(r1)     // Catch:{ all -> 0x00cc }
            throw r0     // Catch:{ all -> 0x00cc }
        L_0x00cc:
            r0 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x00cc }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbf.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
