package com.google.android.gms.cast;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast.CastApi.zza;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder;
import com.google.android.gms.internal.cast.zzcn;
import com.google.android.gms.internal.cast.zzcy;

final class zzl extends zzcy {
    private final /* synthetic */ String val$sessionId;

    zzl(zza zza, GoogleApiClient googleApiClient, String str) {
        this.val$sessionId = str;
        super(googleApiClient);
    }

    public final void zza(zzcn zzcn) throws RemoteException {
        if (TextUtils.isEmpty(this.val$sessionId)) {
            setResult(createFailedResult(new Status(CastStatusCodes.INVALID_REQUEST, "IllegalArgument: sessionId cannot be null or empty", null)));
            return;
        }
        try {
            zzcn.zza(this.val$sessionId, (ResultHolder<Status>) this);
        } catch (IllegalStateException unused) {
            zzk(CastStatusCodes.INVALID_REQUEST);
        }
    }

    public final /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
        doExecute((zzcn) anyClient);
    }
}
