package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder;
import com.google.android.gms.internal.cast.zzcn;
import com.google.android.gms.internal.cast.zzcy;

final class zzf extends zzcy {
    private final /* synthetic */ String zzad;
    private final /* synthetic */ String zzae;

    zzf(zza zza, GoogleApiClient googleApiClient, String str, String str2) {
        this.zzad = str;
        this.zzae = str2;
        super(googleApiClient);
    }

    public final void zza(zzcn zzcn) throws RemoteException {
        try {
            zzcn.zza(this.zzad, this.zzae, (ResultHolder<Status>) this);
        } catch (IllegalArgumentException | IllegalStateException unused) {
            zzk(CastStatusCodes.INVALID_REQUEST);
        }
    }

    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
