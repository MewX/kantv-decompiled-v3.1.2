package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;
import android.view.View.OnClickListener;

final class zzd implements OnClickListener {
    private final /* synthetic */ UIMediaController zzqq;
    private final /* synthetic */ long zzqr;

    zzd(UIMediaController uIMediaController, long j) {
        this.zzqq = uIMediaController;
        this.zzqr = j;
    }

    public final void onClick(View view) {
        this.zzqq.onForwardClicked(view, this.zzqr);
    }
}
