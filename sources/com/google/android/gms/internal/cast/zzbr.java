package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.GameManagerClient.GameManagerResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;

@VisibleForTesting
public abstract class zzbr extends zzbt<GameManagerResult> {
    final /* synthetic */ zzbl zzud;

    public zzbr(zzbl zzbl) {
        this.zzud = zzbl;
        super(zzbl);
        this.zzuk = new zzbs(this, zzbl);
    }

    public static GameManagerResult a_(Status status) {
        zzbx zzbx = new zzbx(status, null, -1, null);
        return zzbx;
    }

    public /* synthetic */ Result createFailedResult(Status status) {
        return a_(status);
    }
}
