package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.view.Choreographer.FrameCallback;

public abstract class zzen {
    private Runnable zzzf;
    private FrameCallback zzzg;

    public abstract void doFrame(long j);

    /* access modifiers changed from: 0000 */
    @TargetApi(16)
    public final FrameCallback zzdu() {
        if (this.zzzg == null) {
            this.zzzg = new zzeo(this);
        }
        return this.zzzg;
    }

    /* access modifiers changed from: 0000 */
    public final Runnable zzdv() {
        if (this.zzzf == null) {
            this.zzzf = new zzep(this);
        }
        return this.zzzf;
    }
}
