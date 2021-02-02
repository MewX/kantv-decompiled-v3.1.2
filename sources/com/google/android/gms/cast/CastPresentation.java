package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.Presentation;
import android.content.Context;
import android.view.Display;
import android.view.Window;
import com.google.android.exoplayer2.C;

@TargetApi(19)
public class CastPresentation extends Presentation {
    public CastPresentation(Context context, Display display) {
        super(context, display);
        zza();
    }

    public CastPresentation(Context context, Display display, int i) {
        super(context, display, i);
        zza();
    }

    private final void zza() {
        Window window = getWindow();
        if (window != null) {
            window.setType(2030);
            window.addFlags(C.ENCODING_PCM_MU_LAW);
            window.addFlags(16777216);
            window.addFlags(1024);
        }
    }
}
