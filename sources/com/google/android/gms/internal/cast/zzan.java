package com.google.android.gms.internal.cast;

import android.content.Context;
import android.view.View;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.util.Iterator;
import java.util.List;

public final class zzan extends UIController {
    private final View view;
    private final String zzmy;
    private final String zzqs;

    public zzan(View view2, Context context) {
        this.view = view2;
        this.zzmy = context.getString(R.string.cast_closed_captions);
        this.zzqs = context.getString(R.string.cast_closed_captions_unavailable);
        this.view.setEnabled(false);
    }

    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.view.setEnabled(true);
        zzco();
    }

    public final void onSessionEnded() {
        this.view.setEnabled(false);
        super.onSessionEnded();
    }

    public final void onMediaStatusUpdated() {
        zzco();
    }

    public final void onSendingRemoteMediaRequest() {
        this.view.setEnabled(false);
    }

    private final void zzco() {
        boolean z;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
            if (mediaInfo != null) {
                List mediaTracks = mediaInfo.getMediaTracks();
                if (mediaTracks != null && !mediaTracks.isEmpty()) {
                    Iterator it = mediaTracks.iterator();
                    int i = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        MediaTrack mediaTrack = (MediaTrack) it.next();
                        if (mediaTrack.getType() == 2) {
                            i++;
                            if (i > 1) {
                                break;
                            }
                        } else if (mediaTrack.getType() == 1) {
                            break;
                        }
                    }
                    z = true;
                    if (z && !remoteMediaClient.isPlayingAd()) {
                        this.view.setEnabled(true);
                        this.view.setContentDescription(this.zzmy);
                        return;
                    }
                }
            }
            z = false;
            this.view.setEnabled(true);
            this.view.setContentDescription(this.zzmy);
            return;
        }
        this.view.setEnabled(false);
        this.view.setContentDescription(this.zzqs);
    }
}
