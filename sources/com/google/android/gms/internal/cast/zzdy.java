package com.google.android.gms.internal.cast;

import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionResult;
import com.google.android.gms.common.api.Status;

final class zzdy implements CastRemoteDisplaySessionResult {
    private final Display zzby;
    private final Status zzgf;

    public zzdy(Display display) {
        this.zzgf = Status.RESULT_SUCCESS;
        this.zzby = display;
    }

    public zzdy(Status status) {
        this.zzgf = status;
        this.zzby = null;
    }

    public final Status getStatus() {
        return this.zzgf;
    }

    public final Display getPresentationDisplay() {
        return this.zzby;
    }
}
