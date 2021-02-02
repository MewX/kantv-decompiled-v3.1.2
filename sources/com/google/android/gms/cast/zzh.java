package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder;
import com.google.android.gms.internal.cast.zzcn;

final class zzh extends zza {
    private final /* synthetic */ String zzaf;
    private final /* synthetic */ LaunchOptions zzag;

    zzh(zza zza, GoogleApiClient googleApiClient, String str, LaunchOptions launchOptions) {
        this.zzaf = str;
        this.zzag = launchOptions;
        super(googleApiClient);
    }

    public final void zza(zzcn zzcn) throws RemoteException {
        try {
            zzcn.zza(this.zzaf, this.zzag, (ResultHolder<ApplicationConnectionResult>) this);
        } catch (IllegalStateException unused) {
            zzk(CastStatusCodes.INVALID_REQUEST);
        }
    }

    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
