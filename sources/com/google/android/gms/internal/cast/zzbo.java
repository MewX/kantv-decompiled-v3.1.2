package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.CastStatusCodes;
import org.json.JSONObject;

final class zzbo extends zzbr {
    private final /* synthetic */ int val$playerState;
    private final /* synthetic */ zzbl zzud;
    private final /* synthetic */ String zzuf;
    private final /* synthetic */ JSONObject zzug;

    zzbo(zzbl zzbl, int i, String str, JSONObject jSONObject) {
        this.zzud = zzbl;
        this.val$playerState = i;
        this.zzuf = str;
        this.zzug = jSONObject;
        super(zzbl);
    }

    public final void execute() {
        int i = this.val$playerState;
        int i2 = 5;
        if (i != 2) {
            i2 = i != 3 ? i != 4 ? i != 5 ? i != 6 ? 0 : 4 : 3 : 2 : 1;
        }
        if (i2 == 0) {
            this.zzuk.zza(-1, CastStatusCodes.INVALID_REQUEST, null);
            zzbl.zzbe.w("sendPlayerRequest for unsupported playerState: %d", Integer.valueOf(this.val$playerState));
            return;
        }
        this.zzud.zza(this.zzuf, i2, this.zzug, this.zzuk);
    }
}
