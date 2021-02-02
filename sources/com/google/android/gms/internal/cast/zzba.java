package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

public final class zzba extends UIController {
    private final ImageView zzqt;
    private final View zzrg;
    private final boolean zzrh;
    private final Drawable zzri;
    private final String zzrj;
    private final Drawable zzrk;
    private final String zzrl;
    private final Drawable zzrm;
    private final String zzrn;

    public zzba(@NonNull ImageView imageView, Context context, @NonNull Drawable drawable, @NonNull Drawable drawable2, Drawable drawable3, View view, boolean z) {
        this.zzqt = imageView;
        this.zzri = drawable;
        this.zzrk = drawable2;
        if (drawable3 != null) {
            drawable2 = drawable3;
        }
        this.zzrm = drawable2;
        this.zzrj = context.getString(R.string.cast_play);
        this.zzrl = context.getString(R.string.cast_pause);
        this.zzrn = context.getString(R.string.cast_stop);
        this.zzrg = view;
        this.zzrh = z;
        this.zzqt.setEnabled(false);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zzco();
    }

    public final void onSessionEnded() {
        this.zzqt.setEnabled(false);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    public final void onSendingRemoteMediaRequest() {
        zzi(true);
    }

    private final void zzco() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zzqt.setEnabled(false);
        } else if (remoteMediaClient.isPaused()) {
            zza(this.zzri, this.zzrj);
        } else if (remoteMediaClient.isPlaying()) {
            if (remoteMediaClient.isLiveStream()) {
                zza(this.zzrm, this.zzrn);
            } else {
                zza(this.zzrk, this.zzrl);
            }
        } else if (remoteMediaClient.isBuffering()) {
            zzi(false);
        } else {
            if (remoteMediaClient.isLoadingNextItem()) {
                zzi(true);
            }
        }
    }

    private final void zza(Drawable drawable, String str) {
        this.zzqt.setImageDrawable(drawable);
        this.zzqt.setContentDescription(str);
        this.zzqt.setVisibility(0);
        this.zzqt.setEnabled(true);
        View view = this.zzrg;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    private final void zzi(boolean z) {
        View view = this.zzrg;
        int i = 0;
        if (view != null) {
            view.setVisibility(0);
        }
        ImageView imageView = this.zzqt;
        if (this.zzrh) {
            i = 4;
        }
        imageView.setVisibility(i);
        this.zzqt.setEnabled(!z);
    }
}
