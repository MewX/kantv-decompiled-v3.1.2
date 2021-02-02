package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.Cast.MessageReceivedCallback;

final class zzct implements Runnable {
    private final /* synthetic */ String zzad;
    private final /* synthetic */ zzcn zzwr;
    private final /* synthetic */ String zzwv;

    zzct(zzcp zzcp, zzcn zzcn, String str, String str2) {
        this.zzwr = zzcn;
        this.zzad = str;
        this.zzwv = str2;
    }

    public final void run() {
        MessageReceivedCallback messageReceivedCallback;
        synchronized (this.zzwr.zzvt) {
            messageReceivedCallback = (MessageReceivedCallback) this.zzwr.zzvt.get(this.zzad);
        }
        if (messageReceivedCallback != null) {
            messageReceivedCallback.onMessageReceived(this.zzwr.zzht, this.zzad, this.zzwv);
            return;
        }
        zzcn.zzbe.d("Discarded message for unknown namespace '%s'", this.zzad);
    }
}
