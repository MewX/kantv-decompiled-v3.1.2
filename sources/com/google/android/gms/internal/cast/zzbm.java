package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.games.GameManagerClient;
import java.io.IOException;
import org.json.JSONObject;

final class zzbm extends zzbu {
    final /* synthetic */ zzbl zzud;

    zzbm(zzbl zzbl, GameManagerClient gameManagerClient) {
        this.zzud = zzbl;
        super(zzbl, gameManagerClient);
    }

    public final void execute() {
        try {
            this.zzud.zzho.setMessageReceivedCallbacks(this.zzud.zzok, this.zzud.getNamespace(), new zzbn(this));
            this.zzud.zzcy();
            this.zzud.zzcx();
            this.zzud.zza((String) null, 1100, (JSONObject) null, this.zzuk);
        } catch (IOException | IllegalStateException unused) {
            this.zzuk.zza(-1, 8, null);
        }
    }
}
