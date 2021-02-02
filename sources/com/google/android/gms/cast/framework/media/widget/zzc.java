package com.google.android.gms.cast.framework.media.widget;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import java.util.TimerTask;

final class zzc extends TimerTask {
    final /* synthetic */ ExpandedControllerActivity zztb;
    final /* synthetic */ AdBreakClipInfo zztc;
    final /* synthetic */ RemoteMediaClient zztd;

    zzc(ExpandedControllerActivity expandedControllerActivity, AdBreakClipInfo adBreakClipInfo, RemoteMediaClient remoteMediaClient) {
        this.zztb = expandedControllerActivity;
        this.zztc = adBreakClipInfo;
        this.zztd = remoteMediaClient;
    }

    public final void run() {
        new Handler(Looper.getMainLooper()).post(new zzd(this));
    }
}
