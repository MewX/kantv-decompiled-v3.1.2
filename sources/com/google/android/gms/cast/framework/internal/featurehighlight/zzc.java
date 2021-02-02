package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

final class zzc extends SimpleOnGestureListener {
    private final /* synthetic */ View zzju;
    private final /* synthetic */ boolean zzjv = true;
    private final /* synthetic */ zzh zzjw;

    zzc(zza zza, View view, boolean z, zzh zzh) {
        this.zzju = view;
        this.zzjw = zzh;
    }

    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        if (this.zzju.getParent() != null) {
            this.zzju.performClick();
        }
        if (this.zzjv) {
            this.zzjw.zzao();
        }
        return true;
    }
}
