package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

public final class zzd extends zzo {
    private final CastStateListener zzhw;

    public zzd(CastStateListener castStateListener) {
        this.zzhw = castStateListener;
    }

    public final int zzm() {
        return 12451009;
    }

    public final IObjectWrapper zzn() {
        return ObjectWrapper.wrap(this.zzhw);
    }

    public final void onCastStateChanged(int i) {
        this.zzhw.onCastStateChanged(i);
    }
}
