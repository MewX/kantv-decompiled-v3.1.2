package com.google.android.gms.internal.cast;

import android.widget.TextView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.util.ArrayList;
import java.util.List;

public final class zzaw extends UIController {
    private final TextView zzrb;
    private final List<String> zzrc = new ArrayList();

    public zzaw(TextView textView, List<String> list) {
        this.zzrb = textView;
        this.zzrc.addAll(list);
    }

    public final void onMediaStatusUpdated() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            MediaQueueItem preloadedItem = remoteMediaClient.getPreloadedItem();
            if (preloadedItem != null) {
                MediaInfo media = preloadedItem.getMedia();
                if (media != null) {
                    MediaMetadata metadata = media.getMetadata();
                    if (metadata != null) {
                        for (String str : this.zzrc) {
                            if (metadata.containsKey(str)) {
                                this.zzrb.setText(metadata.getString(str));
                                return;
                            }
                        }
                        this.zzrb.setText("");
                    }
                }
            }
        }
    }
}
