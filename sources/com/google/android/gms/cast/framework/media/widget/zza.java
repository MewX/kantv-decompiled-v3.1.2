package com.google.android.gms.cast.framework.media.widget;

import android.graphics.Bitmap;
import com.google.android.gms.internal.cast.zzy;

final class zza implements zzy {
    private final /* synthetic */ ExpandedControllerActivity zztb;

    zza(ExpandedControllerActivity expandedControllerActivity) {
        this.zztb = expandedControllerActivity;
    }

    public final void zza(Bitmap bitmap) {
        if (bitmap != null) {
            if (this.zztb.zzss != null) {
                this.zztb.zzss.setVisibility(8);
            }
            if (this.zztb.zzsr != null) {
                this.zztb.zzsr.setVisibility(0);
                this.zztb.zzsr.setImageBitmap(bitmap);
            }
        }
    }
}
