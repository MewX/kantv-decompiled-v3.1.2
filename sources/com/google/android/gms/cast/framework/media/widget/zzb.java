package com.google.android.gms.cast.framework.media.widget;

import android.view.View;
import android.view.View.OnClickListener;

final class zzb implements OnClickListener {
    private final /* synthetic */ ExpandedControllerActivity zztb;

    zzb(ExpandedControllerActivity expandedControllerActivity) {
        this.zztb = expandedControllerActivity;
    }

    public final void onClick(View view) {
        if (this.zztb.zzsu.isClickable()) {
            this.zztb.getRemoteMediaClient().skipAd();
        }
    }
}
