package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.cast.zzcn;

final class zzi extends zza {
    private final /* synthetic */ String val$sessionId;
    private final /* synthetic */ String zzaf;
    private final /* synthetic */ zzag zzah = null;

    zzi(zza zza, GoogleApiClient googleApiClient, String str, String str2, zzag zzag) {
        this.zzaf = str;
        this.val$sessionId = str2;
        super(googleApiClient);
    }

    public final void zza(zzcn zzcn) throws RemoteException {
        try {
            zzcn.zza(this.zzaf, this.val$sessionId, this.zzah, this);
        } catch (IllegalStateException unused) {
            zzk(CastStatusCodes.INVALID_REQUEST);
        }
    }

    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
