package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder;
import com.google.android.gms.internal.cast.zzcn;
import com.google.android.gms.internal.cast.zzcy;

final class zzk extends zzcy {
    zzk(zza zza, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    public final void zza(zzcn zzcn) throws RemoteException {
        try {
            zzcn.zza("", (ResultHolder<Status>) this);
        } catch (IllegalStateException unused) {
            zzk(CastStatusCodes.INVALID_REQUEST);
        }
    }

    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
