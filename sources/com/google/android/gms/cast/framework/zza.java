package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class zza extends zzg {
    private final AppVisibilityListener zzgp;

    public zza(AppVisibilityListener appVisibilityListener) {
        this.zzgp = appVisibilityListener;
    }

    public final int zzm() {
        return 12451009;
    }

    public final IObjectWrapper zzn() {
        return ObjectWrapper.wrap(this.zzgp);
    }

    public final void onAppEnteredForeground() {
        this.zzgp.onAppEnteredForeground();
    }

    public final void onAppEnteredBackground() {
        this.zzgp.onAppEnteredBackground();
    }
}
