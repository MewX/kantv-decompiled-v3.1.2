package com.google.android.gms.internal.cast;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzbz {
    private static final zzdg zzbe = new zzdg("GameManagerMessage");
    protected final int zzus;
    protected final int zzut;
    protected final String zzuu;
    protected final JSONObject zzuv;
    protected final int zzuw;
    protected final int zzux;
    protected final List<zzcc> zzuy;
    protected final JSONObject zzuz;
    protected final String zzva;
    protected final String zzvb;
    protected final long zzvc;
    protected final String zzvd;
    protected final zzby zzve;

    private zzbz(int i, int i2, String str, JSONObject jSONObject, int i3, int i4, List<zzcc> list, JSONObject jSONObject2, String str2, String str3, long j, String str4, zzby zzby) {
        this.zzus = i;
        this.zzut = i2;
        this.zzuu = str;
        this.zzuv = jSONObject;
        this.zzuw = i3;
        this.zzux = i4;
        this.zzuy = list;
        this.zzuz = jSONObject2;
        this.zzva = str2;
        this.zzvb = str3;
        this.zzvc = j;
        this.zzvd = str4;
        this.zzve = zzby;
    }

    protected static zzbz zzh(JSONObject jSONObject) {
        int i;
        JSONObject jSONObject2 = jSONObject;
        int optInt = jSONObject2.optInt("type", -1);
        String str = "playerId";
        String str2 = "gameStatusText";
        String str3 = "gameData";
        String str4 = "players";
        String str5 = "lobbyState";
        String str6 = "gameplayState";
        String str7 = "extraMessageData";
        String str8 = "errorDescription";
        String str9 = "statusCode";
        if (optInt == 1) {
            JSONObject optJSONObject = jSONObject2.optJSONObject("gameManagerConfig");
            zzby zzby = optJSONObject != null ? new zzby(optJSONObject) : null;
            int optInt2 = jSONObject2.optInt(str9);
            String optString = jSONObject2.optString(str8);
            JSONObject optJSONObject2 = jSONObject2.optJSONObject(str7);
            int optInt3 = jSONObject2.optInt(str6);
            int optInt4 = jSONObject2.optInt(str5);
            List zza = zza(jSONObject2.optJSONArray(str4));
            JSONObject optJSONObject3 = jSONObject2.optJSONObject(str3);
            String optString2 = jSONObject2.optString(str2);
            r3 = r3;
            int i2 = optInt2;
            List list = zza;
            String optString3 = jSONObject2.optString(str);
            i = 0;
            try {
                zzbz zzbz = new zzbz(optInt, i2, optString, optJSONObject2, optInt3, optInt4, list, optJSONObject3, optString2, optString3, jSONObject2.optLong("requestId"), jSONObject2.optString("playerToken"), zzby);
                return zzbz;
            } catch (JSONException e) {
                e = e;
                zzbe.zzb(e, "Exception while parsing GameManagerMessage from json", new Object[i]);
                return null;
            }
        } else if (optInt != 2) {
            try {
                zzbe.w("Unrecognized Game Message type %d", Integer.valueOf(optInt));
            } catch (JSONException e2) {
                e = e2;
                i = 0;
                zzbe.zzb(e, "Exception while parsing GameManagerMessage from json", new Object[i]);
                return null;
            }
        } else {
            zzbz zzbz2 = new zzbz(optInt, jSONObject2.optInt(str9), jSONObject2.optString(str8), jSONObject2.optJSONObject(str7), jSONObject2.optInt(str6), jSONObject2.optInt(str5), zza(jSONObject2.optJSONArray(str4)), jSONObject2.optJSONObject(str3), jSONObject2.optString(str2), jSONObject2.optString(str), -1, null, null);
            return zzbz2;
        }
        return null;
    }

    private static List<zzcc> zza(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                Object obj = null;
                try {
                    obj = new zzcc(optJSONObject);
                } catch (JSONException e) {
                    zzbe.zzb(e, "Exception when attempting to parse PlayerInfoMessageComponent at index %d", Integer.valueOf(i));
                }
                if (obj != null) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }
}
