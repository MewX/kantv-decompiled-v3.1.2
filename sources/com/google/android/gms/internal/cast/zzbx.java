package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.GameManagerClient.GameManagerResult;
import com.google.android.gms.common.api.Status;
import org.json.JSONObject;

final class zzbx implements GameManagerResult {
    private final Status zzgf;
    private final String zzun;
    private final long zzuo;
    private final JSONObject zzup;

    zzbx(Status status, String str, long j, JSONObject jSONObject) {
        this.zzgf = status;
        this.zzun = str;
        this.zzuo = j;
        this.zzup = jSONObject;
    }

    public final Status getStatus() {
        return this.zzgf;
    }

    public final String getPlayerId() {
        return this.zzun;
    }

    public final long getRequestId() {
        return this.zzuo;
    }

    public final JSONObject getExtraMessageData() {
        return this.zzup;
    }
}
