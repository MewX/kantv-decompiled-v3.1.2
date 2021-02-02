package com.google.android.gms.internal.cast;

import android.text.format.DateUtils;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzbi extends UIController implements ProgressListener {
    private boolean zzmc = true;
    private final long zzrp;
    private final TextView zzrs;
    private final String zzrv;

    public zzbi(TextView textView, long j, String str) {
        this.zzrs = textView;
        this.zzrp = j;
        this.zzrv = str;
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzrp);
            if (remoteMediaClient.hasMediaSession()) {
                this.zzrs.setText(DateUtils.formatElapsedTime(remoteMediaClient.getApproximateStreamPosition() / 1000));
                return;
            }
            this.zzrs.setText(this.zzrv);
        }
    }

    public final void onSessionEnded() {
        this.zzrs.setText(this.zzrv);
        if (getRemoteMediaClient() != null) {
            getRemoteMediaClient().removeProgressListener(this);
        }
        super.onSessionEnded();
    }

    public final void onProgressUpdated(long j, long j2) {
        if (this.zzmc) {
            this.zzrs.setText(DateUtils.formatElapsedTime(j / 1000));
        }
    }

    public final void zzc(long j) {
        this.zzrs.setText(DateUtils.formatElapsedTime(j / 1000));
    }

    public final void zzj(boolean z) {
        this.zzmc = z;
    }
}
