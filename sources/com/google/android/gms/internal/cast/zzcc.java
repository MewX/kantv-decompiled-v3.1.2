package com.google.android.gms.internal.cast;

import com.google.android.gms.common.util.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzcc {
    private final int zzeh;
    private final String zzun;
    private final JSONObject zzvk;

    public zzcc(JSONObject jSONObject) throws JSONException {
        this(jSONObject.optString("playerId"), jSONObject.optInt("playerState"), jSONObject.optJSONObject("playerData"));
    }

    private zzcc(String str, int i, JSONObject jSONObject) {
        this.zzun = str;
        this.zzeh = i;
        this.zzvk = jSONObject;
    }

    public final int getPlayerState() {
        return this.zzeh;
    }

    public final JSONObject getPlayerData() {
        return this.zzvk;
    }

    public final String getPlayerId() {
        return this.zzun;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzcc)) {
            zzcc zzcc = (zzcc) obj;
            if (this.zzeh == zzcc.zzeh && zzcu.zza(this.zzun, zzcc.zzun) && JsonUtils.areJsonValuesEquivalent(this.zzvk, zzcc.zzvk)) {
                return true;
            }
        }
        return false;
    }
}
