package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.hardware.display.VirtualDisplay;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.cast.CastRemoteDisplayApi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

@Deprecated
public final class zzdq implements CastRemoteDisplayApi {
    /* access modifiers changed from: private */
    public static final zzdg zzbe = new zzdg("CastRemoteDisplayApiImpl");
    /* access modifiers changed from: private */
    public VirtualDisplay zzbf;
    /* access modifiers changed from: private */
    public Api<?> zzyo;
    /* access modifiers changed from: private */
    public final zzeg zzyp = new zzdr(this);

    public zzdq(Api api) {
        this.zzyo = api;
    }

    public final PendingResult<CastRemoteDisplaySessionResult> startRemoteDisplay(GoogleApiClient googleApiClient, String str) {
        zzbe.d("startRemoteDisplay", new Object[0]);
        return googleApiClient.execute(new zzds(this, googleApiClient, str));
    }

    public final PendingResult<CastRemoteDisplaySessionResult> stopRemoteDisplay(GoogleApiClient googleApiClient) {
        zzbe.d("stopRemoteDisplay", new Object[0]);
        return googleApiClient.execute(new zzdt(this, googleApiClient));
    }

    /* access modifiers changed from: private */
    @TargetApi(19)
    public final void zzb() {
        VirtualDisplay virtualDisplay = this.zzbf;
        if (virtualDisplay != null) {
            if (virtualDisplay.getDisplay() != null) {
                zzdg zzdg = zzbe;
                int displayId = this.zzbf.getDisplay().getDisplayId();
                StringBuilder sb = new StringBuilder(38);
                sb.append("releasing virtual display: ");
                sb.append(displayId);
                zzdg.d(sb.toString(), new Object[0]);
            }
            this.zzbf.release();
            this.zzbf = null;
        }
    }
}
