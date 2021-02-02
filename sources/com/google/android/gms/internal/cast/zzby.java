package com.google.android.gms.internal.cast;

import org.json.JSONException;
import org.json.JSONObject;

public final class zzby {
    private final String version;
    private final String zzuq;
    private final int zzur;

    public zzby(JSONObject jSONObject) throws JSONException {
        this(jSONObject.optString("applicationName"), jSONObject.optInt("maxPlayers"), jSONObject.optString("version"));
    }

    private zzby(String str, int i, String str2) {
        this.zzuq = str;
        this.zzur = i;
        this.version = str2;
    }

    public final String zzda() {
        return this.zzuq;
    }

    public final int getMaxPlayers() {
        return this.zzur;
    }

    public final String getVersion() {
        return this.version;
    }
}
