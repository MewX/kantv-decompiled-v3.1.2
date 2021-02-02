package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;

final class zzbn implements MessageReceivedCallback {
    private final /* synthetic */ zzbm zzue;

    zzbn(zzbm zzbm) {
        this.zzue = zzbm;
    }

    public final void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzue.zzud.zzn(str2);
    }
}
