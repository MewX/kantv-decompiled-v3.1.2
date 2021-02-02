package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult;
import com.google.android.gms.common.api.Status;

final class zzbw implements GameManagerInstanceResult {
    private final Status zzgf;
    private final GameManagerClient zzul;

    zzbw(Status status, GameManagerClient gameManagerClient) {
        this.zzgf = status;
        this.zzul = gameManagerClient;
    }

    public final Status getStatus() {
        return this.zzgf;
    }

    public final GameManagerClient getGameManagerClient() {
        return this.zzul;
    }
}
