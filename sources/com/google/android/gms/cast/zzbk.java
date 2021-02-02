package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;
import org.json.JSONObject;

final class zzbk extends zzb {
    private final /* synthetic */ RemoteMediaPlayer zzfd;
    private final /* synthetic */ GoogleApiClient zzfe;
    private final /* synthetic */ JSONObject zzfk;
    private final /* synthetic */ double zzfx;

    zzbk(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, double d, JSONObject jSONObject) {
        this.zzfd = remoteMediaPlayer;
        this.zzfe = googleApiClient2;
        this.zzfx = d;
        this.zzfk = jSONObject;
        super(googleApiClient);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        setResult((com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0049, code lost:
        r6.zzfd.zzey.zza(null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0052, code lost:
        throw r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002c, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x002e */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(com.google.android.gms.internal.cast.zzcn r7) {
        /*
            r6 = this;
            com.google.android.gms.cast.RemoteMediaPlayer r7 = r6.zzfd
            java.lang.Object r7 = r7.lock
            monitor-enter(r7)
            com.google.android.gms.cast.RemoteMediaPlayer r0 = r6.zzfd     // Catch:{ all -> 0x0053 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r0 = r0.zzey     // Catch:{ all -> 0x0053 }
            com.google.android.gms.common.api.GoogleApiClient r1 = r6.zzfe     // Catch:{ all -> 0x0053 }
            r0.zza(r1)     // Catch:{ all -> 0x0053 }
            r0 = 0
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r6.zzfd     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x002e }
            com.google.android.gms.internal.cast.zzdh r1 = r1.zzex     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x002e }
            com.google.android.gms.internal.cast.zzdm r2 = r6.zzgd     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x002e }
            double r3 = r6.zzfx     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x002e }
            org.json.JSONObject r5 = r6.zzfk     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x002e }
            r1.zza(r2, r3, r5)     // Catch:{ zzdk | IllegalArgumentException | IllegalStateException -> 0x002e }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r6.zzfd     // Catch:{ all -> 0x0053 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0053 }
            r1.zza(r0)     // Catch:{ all -> 0x0053 }
            goto L_0x0047
        L_0x002c:
            r1 = move-exception
            goto L_0x0049
        L_0x002e:
            com.google.android.gms.common.api.Status r1 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x002c }
            r2 = 2100(0x834, float:2.943E-42)
            r1.<init>(r2)     // Catch:{ all -> 0x002c }
            com.google.android.gms.common.api.Result r1 = r6.createFailedResult(r1)     // Catch:{ all -> 0x002c }
            com.google.android.gms.cast.RemoteMediaPlayer$MediaChannelResult r1 = (com.google.android.gms.cast.RemoteMediaPlayer.MediaChannelResult) r1     // Catch:{ all -> 0x002c }
            r6.setResult(r1)     // Catch:{ all -> 0x002c }
            com.google.android.gms.cast.RemoteMediaPlayer r1 = r6.zzfd     // Catch:{ all -> 0x0053 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r1 = r1.zzey     // Catch:{ all -> 0x0053 }
            r1.zza(r0)     // Catch:{ all -> 0x0053 }
        L_0x0047:
            monitor-exit(r7)     // Catch:{ all -> 0x0053 }
            return
        L_0x0049:
            com.google.android.gms.cast.RemoteMediaPlayer r2 = r6.zzfd     // Catch:{ all -> 0x0053 }
            com.google.android.gms.cast.RemoteMediaPlayer$zza r2 = r2.zzey     // Catch:{ all -> 0x0053 }
            r2.zza(r0)     // Catch:{ all -> 0x0053 }
            throw r1     // Catch:{ all -> 0x0053 }
        L_0x0053:
            r0 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x0053 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbk.zza(com.google.android.gms.internal.cast.zzcn):void");
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
