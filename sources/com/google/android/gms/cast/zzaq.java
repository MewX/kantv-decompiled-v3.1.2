package com.google.android.gms.cast;

import com.google.android.gms.internal.cast.zzdj;

final class zzaq implements zzdj {
    private final /* synthetic */ RemoteMediaPlayer zzfd;

    zzaq(RemoteMediaPlayer remoteMediaPlayer) {
        this.zzfd = remoteMediaPlayer;
    }

    public final void onAdBreakStatusUpdated() {
    }

    public final void zza(int[] iArr) {
    }

    public final void zza(int[] iArr, int i) {
    }

    public final void zzb(int[] iArr) {
    }

    public final void zzb(MediaQueueItem[] mediaQueueItemArr) {
    }

    public final void zzc(int[] iArr) {
    }

    public final void onStatusUpdated() {
        this.zzfd.onStatusUpdated();
    }

    public final void onMetadataUpdated() {
        this.zzfd.onMetadataUpdated();
    }

    public final void onQueueStatusUpdated() {
        this.zzfd.onQueueStatusUpdated();
    }

    public final void onPreloadStatusUpdated() {
        this.zzfd.onPreloadStatusUpdated();
    }
}
