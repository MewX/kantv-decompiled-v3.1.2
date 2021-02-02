package com.google.android.gms.internal.cast;

import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzbh extends UIController implements ProgressListener {
    private final TextView zzrs;
    private final String zzrt;
    private final View zzru;

    public zzbh(TextView textView, String str, View view) {
        this.zzrs = textView;
        this.zzrt = str;
        this.zzru = view;
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().addProgressListener(this, 1000);
        }
        zza(-1, true);
    }

    public final void onSessionEnded() {
        this.zzrs.setText(this.zzrt);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zza(-1, true);
    }

    public final void onProgressUpdated(long j, long j2) {
        zza(j2, false);
    }

    private final void zza(long j, boolean z) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzrs.setVisibility(0);
            this.zzrs.setText(this.zzrt);
            View view = this.zzru;
            if (view != null) {
                view.setVisibility(4);
            }
        } else if (!remoteMediaClient.isLiveStream()) {
            if (z) {
                j = remoteMediaClient.getStreamDuration();
            }
            this.zzrs.setVisibility(0);
            this.zzrs.setText(DateUtils.formatElapsedTime(j / 1000));
            View view2 = this.zzru;
            if (view2 != null) {
                view2.setVisibility(4);
            }
        } else {
            this.zzrs.setText(this.zzrt);
            if (this.zzru != null) {
                this.zzrs.setVisibility(4);
                this.zzru.setVisibility(0);
            }
        }
    }
}
