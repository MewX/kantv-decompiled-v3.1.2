package com.google.android.gms.internal.cast;

import android.content.Context;
import android.widget.ImageView;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzay extends UIController {
    private Listener zzaj;
    private final Context zzgt;
    private final ImageView zzqt;
    private final String zzrd = this.zzgt.getString(R.string.cast_mute);
    private final String zzre = this.zzgt.getString(R.string.cast_unmute);

    public zzay(ImageView imageView, Context context) {
        this.zzqt = imageView;
        this.zzgt = context.getApplicationContext();
        this.zzqt.setEnabled(false);
        this.zzaj = null;
    }

    public final void onSessionConnected(CastSession castSession) {
        if (this.zzaj == null) {
            this.zzaj = new zzaz(this);
        }
        super.onSessionConnected(castSession);
        castSession.addCastListener(this.zzaj);
        zzco();
    }

    public final void onSessionEnded() {
        this.zzqt.setEnabled(false);
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzgt).getSessionManager().getCurrentCastSession();
        if (currentCastSession != null) {
            Listener listener = this.zzaj;
            if (listener != null) {
                currentCastSession.removeCastListener(listener);
            }
        }
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    public final void onSendingRemoteMediaRequest() {
        this.zzqt.setEnabled(false);
    }

    private final void zzh(boolean z) {
        this.zzqt.setSelected(z);
        this.zzqt.setContentDescription(z ? this.zzrd : this.zzre);
    }

    /* access modifiers changed from: protected */
    public final void zzco() {
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzgt).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            this.zzqt.setEnabled(false);
            return;
        }
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzqt.setEnabled(false);
        } else {
            this.zzqt.setEnabled(true);
        }
        if (currentCastSession.isMute()) {
            zzh(true);
        } else {
            zzh(false);
        }
    }
}
