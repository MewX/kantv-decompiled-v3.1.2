package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
public abstract class zzbu extends zzbt<GameManagerInstanceResult> {
    final /* synthetic */ zzbl zzud;
    /* access modifiers changed from: private */
    public GameManagerClient zzul;

    public zzbu(zzbl zzbl, GameManagerClient gameManagerClient) {
        this.zzud = zzbl;
        super(zzbl);
        this.zzul = gameManagerClient;
        this.zzuk = new zzbv(this, zzbl);
    }

    public static GameManagerInstanceResult zzc(Status status) {
        return new zzbw(status, null);
    }

    public /* synthetic */ Result createFailedResult(Status status) {
        return zzc(status);
    }
}
