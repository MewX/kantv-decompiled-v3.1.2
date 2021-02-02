package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;
import android.view.View.OnClickListener;

final class zzb implements OnClickListener {
    private final /* synthetic */ UIMediaController zzqq;

    zzb(UIMediaController uIMediaController) {
        this.zzqq = uIMediaController;
    }

    public final void onClick(View view) {
        this.zzqq.onSkipNextClicked(view);
    }
}
