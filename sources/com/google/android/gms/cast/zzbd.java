package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzbd extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ int zzfu;

    zzbd(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfu = i;
        this.zzfe = googleApiClient2;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x004d, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0069, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x006a, code lost:
        r6.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0073, code lost:
        throw r1;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x004f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r7) {
        /*
            r6 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r7 = r6.zzfd
            java.lang.Object r7 = r7.lock
            monitor-enter(r7)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r6.zzfd     // Catch:{ all -> 0x0074 }
            int r1 = r6.zzfu     // Catch:{ all -> 0x0074 }
            int r0 = r0.zzc(r1)     // Catch:{ all -> 0x0074 }
            r1 = -1
            r2 = 0
            if (r0 != r1) goto L_0x0023
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0074 }
            r0.<init>(r2)     // Catch:{ all -> 0x0074 }
            com.google.android.gms.common.api.Result r0 = r6.createFailedResult(r0)     // Catch:{ all -> 0x0074 }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r0 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r0     // Catch:{ all -> 0x0074 }
            r6.setResult(r0)     // Catch:{ all -> 0x0074 }
            monitor-exit(r7)     // Catch:{ all -> 0x0074 }
            return
        L_0x0023:
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r6.zzfd     // Catch:{ all -> 0x0074 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x0074 }
            com.google.android.gms.common.api.GoogleApiClient r1 = r6.zzfe     // Catch:{ all -> 0x0074 }
            r0.zza(r1)     // Catch:{ all -> 0x0074 }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r6.zzfd     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            com.google.android.gms.internal.cast.zzdh r1 = r1.zzex     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            com.google.android.gms.internal.cast.zzdm r3 = r6.zzgd     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            r4 = 1
            int[] r4 = new int[r4]     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            int r5 = r6.zzfu     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            r4[r2] = r5     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            org.json.JSONObject r2 = r6.zzfk     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            r1.zza(r3, r4, r2)     // Catch:{ zzdk | IllegalStateException -> 0x004f }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r6.zzfd     // Catch:{ all -> 0x0074 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0074 }
            r1.zza(r0)     // Catch:{ all -> 0x0074 }
            goto L_0x0068
        L_0x004d:
            r1 = move-exception
            goto L_0x006a
        L_0x004f:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x004d }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x004d }
            com.google.android.gms.common.api.Result r1 = r6.createFailedResult(r1)     // Catch:{ all -> 0x004d }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x004d }
            r6.setResult(r1)     // Catch:{ all -> 0x004d }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r6.zzfd     // Catch:{ all -> 0x0074 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0074 }
            r1.zza(r0)     // Catch:{ all -> 0x0074 }
        L_0x0068:
            monitor-exit(r7)     // Catch:{ all -> 0x0074 }
            return
        L_0x006a:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r6.zzfd     // Catch:{ all -> 0x0074 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x0074 }
            r2.zza(r0)     // Catch:{ all -> 0x0074 }
            throw r1     // Catch:{ all -> 0x0074 }
        L_0x0074:
            r0 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x0074 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbd.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
