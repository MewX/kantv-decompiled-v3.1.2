package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.PlayerInfo;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.util.JsonUtils;
import org.json.JSONObject;

public final class zzcb implements PlayerInfo {
    private final int zzeh;
    private final String zzun;
    private final JSONObject zzvk;
    private final boolean zzvl;

    public zzcb(String str, int i, JSONObject jSONObject, boolean z) {
        this.zzun = str;
        this.zzeh = i;
        this.zzvk = jSONObject;
        this.zzvl = z;
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

    public final boolean isConnected() {
        int i = this.zzeh;
        return i == 3 || i == 4 || i == 5 || i == 6;
    }

    public final boolean isControllable() {
        return this.zzvl;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof PlayerInfo)) {
            PlayerInfo playerInfo = (PlayerInfo) obj;
            if (this.zzvl == playerInfo.isControllable() && this.zzeh == playerInfo.getPlayerState() && zzcu.zza(this.zzun, playerInfo.getPlayerId()) && JsonUtils.areJsonValuesEquivalent(this.zzvk, playerInfo.getPlayerData())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzun, Integer.valueOf(this.zzeh), this.zzvk, Boolean.valueOf(this.zzvl));
    }
}
