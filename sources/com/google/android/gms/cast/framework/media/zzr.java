package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.internal.cast.zzdj;
import java.util.List;

final class zzr implements zzdj {
    private final /* synthetic */ RemoteMediaClient zzoq;

    zzr(RemoteMediaClient remoteMediaClient) {
        this.zzoq = remoteMediaClient;
    }

    public final void onStatusUpdated() {
        zzcf();
        this.zzoq.zzce();
        for (Listener onStatusUpdated : this.zzoq.zzol) {
            onStatusUpdated.onStatusUpdated();
        }
        for (Callback onStatusUpdated2 : this.zzoq.zzom) {
            onStatusUpdated2.onStatusUpdated();
        }
    }

    public final void onMetadataUpdated() {
        zzcf();
        for (Listener onMetadataUpdated : this.zzoq.zzol) {
            onMetadataUpdated.onMetadataUpdated();
        }
        for (Callback onMetadataUpdated2 : this.zzoq.zzom) {
            onMetadataUpdated2.onMetadataUpdated();
        }
    }

    public final void onQueueStatusUpdated() {
        for (Listener onQueueStatusUpdated : this.zzoq.zzol) {
            onQueueStatusUpdated.onQueueStatusUpdated();
        }
        for (Callback onQueueStatusUpdated2 : this.zzoq.zzom) {
            onQueueStatusUpdated2.onQueueStatusUpdated();
        }
    }

    public final void onPreloadStatusUpdated() {
        for (Listener onPreloadStatusUpdated : this.zzoq.zzol) {
            onPreloadStatusUpdated.onPreloadStatusUpdated();
        }
        for (Callback onPreloadStatusUpdated2 : this.zzoq.zzom) {
            onPreloadStatusUpdated2.onPreloadStatusUpdated();
        }
    }

    public final void onAdBreakStatusUpdated() {
        for (Listener onAdBreakStatusUpdated : this.zzoq.zzol) {
            onAdBreakStatusUpdated.onAdBreakStatusUpdated();
        }
        for (Callback onAdBreakStatusUpdated2 : this.zzoq.zzom) {
            onAdBreakStatusUpdated2.onAdBreakStatusUpdated();
        }
    }

    public final void zza(int[] iArr) {
        for (Callback zza : this.zzoq.zzom) {
            zza.zza(iArr);
        }
    }

    public final void zza(int[] iArr, int i) {
        for (Callback zza : this.zzoq.zzom) {
            zza.zza(iArr, i);
        }
    }

    public final void zzb(int[] iArr) {
        for (Callback zzb : this.zzoq.zzom) {
            zzb.zzb(iArr);
        }
    }

    public final void zzc(int[] iArr) {
        for (Callback zzc : this.zzoq.zzom) {
            zzc.zzc(iArr);
        }
    }

    public final void zzb(MediaQueueItem[] mediaQueueItemArr) {
        for (Callback zzb : this.zzoq.zzom) {
            zzb.zzb(mediaQueueItemArr);
        }
    }

    private final void zzcf() {
        if (this.zzoq.zzop != null) {
            MediaStatus mediaStatus = this.zzoq.getMediaStatus();
            if (mediaStatus != null) {
                mediaStatus.zzf(this.zzoq.zzop.parseIsPlayingAdFromMediaStatus(mediaStatus));
                List parseAdBreaksFromMediaStatus = this.zzoq.zzop.parseAdBreaksFromMediaStatus(mediaStatus);
                MediaInfo mediaInfo = this.zzoq.getMediaInfo();
                if (mediaInfo != null) {
                    mediaInfo.zzb(parseAdBreaksFromMediaStatus);
                }
            }
        }
    }
}
