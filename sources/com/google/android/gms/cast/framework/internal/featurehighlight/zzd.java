package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

final class zzd implements OnLayoutChangeListener {
    private final /* synthetic */ zza zzjt;
    private final /* synthetic */ Runnable zzjx = null;

    zzd(zza zza, Runnable runnable) {
        this.zzjt = zza;
    }

    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Runnable runnable = this.zzjx;
        if (runnable != null) {
            runnable.run();
        }
        this.zzjt.zzaq();
        this.zzjt.removeOnLayoutChangeListener(this);
    }
}
