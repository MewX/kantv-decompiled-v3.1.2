package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.cast.games.PlayerInfo;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.util.JsonUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public final class zzca implements GameManagerState {
    private final String zzuq;
    private final int zzur;
    private final int zzvf;
    private final int zzvg;
    private final String zzvh;
    private final JSONObject zzvi;
    private final Map<String, PlayerInfo> zzvj;

    public zzca(int i, int i2, String str, JSONObject jSONObject, Collection<PlayerInfo> collection, String str2, int i3) {
        this.zzvf = i;
        this.zzvg = i2;
        this.zzvh = str;
        this.zzvi = jSONObject;
        this.zzuq = str2;
        this.zzur = i3;
        this.zzvj = new HashMap(collection.size());
        for (PlayerInfo playerInfo : collection) {
            this.zzvj.put(playerInfo.getPlayerId(), playerInfo);
        }
    }

    public final int getLobbyState() {
        return this.zzvf;
    }

    public final int getGameplayState() {
        return this.zzvg;
    }

    public final JSONObject getGameData() {
        return this.zzvi;
    }

    public final CharSequence getGameStatusText() {
        return this.zzvh;
    }

    public final CharSequence getApplicationName() {
        return this.zzuq;
    }

    public final int getMaxPlayers() {
        return this.zzur;
    }

    public final List<PlayerInfo> getPlayersInState(int i) {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.getPlayerState() == i) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final PlayerInfo getPlayer(String str) {
        if (str == null) {
            return null;
        }
        return (PlayerInfo) this.zzvj.get(str);
    }

    public final Collection<PlayerInfo> getPlayers() {
        return Collections.unmodifiableCollection(this.zzvj.values());
    }

    public final List<PlayerInfo> getControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final List<PlayerInfo> getConnectedPlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final List<PlayerInfo> getConnectedControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected() && playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    public final boolean hasLobbyStateChanged(GameManagerState gameManagerState) {
        return this.zzvf != gameManagerState.getLobbyState();
    }

    public final boolean hasGameplayStateChanged(GameManagerState gameManagerState) {
        return this.zzvg != gameManagerState.getGameplayState();
    }

    public final boolean hasGameDataChanged(GameManagerState gameManagerState) {
        return !JsonUtils.areJsonValuesEquivalent(this.zzvi, gameManagerState.getGameData());
    }

    public final boolean hasGameStatusTextChanged(GameManagerState gameManagerState) {
        return !zzcu.zza(this.zzvh, gameManagerState.getGameStatusText());
    }

    public final boolean hasPlayerChanged(String str, GameManagerState gameManagerState) {
        return !zzcu.zza(getPlayer(str), gameManagerState.getPlayer(str));
    }

    public final boolean hasPlayerStateChanged(String str, GameManagerState gameManagerState) {
        PlayerInfo player = getPlayer(str);
        PlayerInfo player2 = gameManagerState.getPlayer(str);
        if (player == null && player2 == null) {
            return false;
        }
        return player == null || player2 == null || player.getPlayerState() != player2.getPlayerState();
    }

    public final boolean hasPlayerDataChanged(String str, GameManagerState gameManagerState) {
        PlayerInfo player = getPlayer(str);
        PlayerInfo player2 = gameManagerState.getPlayer(str);
        if (player == null && player2 == null) {
            return false;
        }
        return player == null || player2 == null || !JsonUtils.areJsonValuesEquivalent(player.getPlayerData(), player2.getPlayerData());
    }

    public final Collection<String> getListOfChangedPlayers(GameManagerState gameManagerState) {
        HashSet hashSet = new HashSet();
        for (PlayerInfo playerInfo : getPlayers()) {
            PlayerInfo player = gameManagerState.getPlayer(playerInfo.getPlayerId());
            if (player == null || !playerInfo.equals(player)) {
                hashSet.add(playerInfo.getPlayerId());
            }
        }
        for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
            if (getPlayer(playerInfo2.getPlayerId()) == null) {
                hashSet.add(playerInfo2.getPlayerId());
            }
        }
        return hashSet;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof GameManagerState)) {
            GameManagerState gameManagerState = (GameManagerState) obj;
            if (getPlayers().size() != gameManagerState.getPlayers().size()) {
                return false;
            }
            for (PlayerInfo playerInfo : getPlayers()) {
                boolean z = false;
                for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
                    if (zzcu.zza(playerInfo.getPlayerId(), playerInfo2.getPlayerId())) {
                        if (!zzcu.zza(playerInfo, playerInfo2)) {
                            return false;
                        }
                        z = true;
                    }
                }
                if (!z) {
                    return false;
                }
            }
            if (this.zzvf != gameManagerState.getLobbyState() || this.zzvg != gameManagerState.getGameplayState() || this.zzur != gameManagerState.getMaxPlayers() || !zzcu.zza(this.zzuq, gameManagerState.getApplicationName()) || !zzcu.zza(this.zzvh, gameManagerState.getGameStatusText()) || !JsonUtils.areJsonValuesEquivalent(this.zzvi, gameManagerState.getGameData())) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzvf), Integer.valueOf(this.zzvg), this.zzvj, this.zzvh, this.zzvi, this.zzuq, Integer.valueOf(this.zzur));
    }
}
