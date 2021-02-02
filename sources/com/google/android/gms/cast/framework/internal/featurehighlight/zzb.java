package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class zzb extends SimpleOnGestureListener {
    private final /* synthetic */ zza zzjt;

    zzb(zza zza) {
        this.zzjt = zza;
    }

    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (!this.zzjt.zza(x, y) || !this.zzjt.zzjj.zzb(x, y)) {
            this.zzjt.zzjr.dismiss();
        }
        return true;
    }
}
