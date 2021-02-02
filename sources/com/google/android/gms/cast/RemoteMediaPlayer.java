package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.cast.zzcf;
import com.google.android.gms.internal.cast.zzcn;
import com.google.android.gms.internal.cast.zzdh;
import com.google.android.gms.internal.cast.zzdj;
import com.google.android.gms.internal.cast.zzdl;
import com.google.android.gms.internal.cast.zzdm;
import org.json.JSONObject;

@SuppressLint({"MissingRemoteException"})
@Deprecated
public class RemoteMediaPlayer implements MessageReceivedCallback {
    public static final String NAMESPACE = zzdh.NAMESPACE;
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_CANCELED = 2101;
    public static final int STATUS_FAILED = 2100;
    public static final int STATUS_REPLACED = 2103;
    public static final int STATUS_SUCCEEDED = 0;
    public static final int STATUS_TIMED_OUT = 2102;
    /* access modifiers changed from: private */
    public final Object lock;
    /* access modifiers changed from: private */
    public final zzdh zzex;
    /* access modifiers changed from: private */
    public final zza zzey;
    private OnPreloadStatusUpdatedListener zzez;
    private OnQueueStatusUpdatedListener zzfa;
    private OnMetadataUpdatedListener zzfb;
    private OnStatusUpdatedListener zzfc;

    @Deprecated
    public interface MediaChannelResult extends Result {
        JSONObject getCustomData();
    }

    @Deprecated
    public interface OnMetadataUpdatedListener {
        void onMetadataUpdated();
    }

    @Deprecated
    public interface OnPreloadStatusUpdatedListener {
        void onPreloadStatusUpdated();
    }

    @Deprecated
    public interface OnQueueStatusUpdatedListener {
        void onQueueStatusUpdated();
    }

    @Deprecated
    public interface OnStatusUpdatedListener {
        void onStatusUpdated();
    }

    private class zza implements zzdl {
        private GoogleApiClient zzfz;
        private long zzga = 0;

        public zza() {
        }

        public final void zza(GoogleApiClient googleApiClient) {
            this.zzfz = googleApiClient;
        }

        public final void zza(String str, String str2, long j, String str3) {
            if (this.zzfz != null) {
                Cast.CastApi.sendMessage(this.zzfz, str, str2).setResultCallback(new zzbn(this, j));
                return;
            }
            throw new IllegalStateException("No GoogleApiClient available");
        }

        public final long zzl() {
            long j = this.zzga + 1;
            this.zzga = j;
            return j;
        }
    }

    @VisibleForTesting
    static abstract class zzb extends zzcf<MediaChannelResult> {
        zzdm zzgd = new zzbo(this);

        zzb(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* access modifiers changed from: protected */
        /* renamed from: zza */
        public void doExecute(zzcn zzcn) {
        }

        public /* synthetic */ Result createFailedResult(Status status) {
            return new zzbp(this, status);
        }
    }

    private static final class zzc implements MediaChannelResult {
        private final Status zzgf;
        private final JSONObject zzp;

        zzc(Status status, JSONObject jSONObject) {
            this.zzgf = status;
            this.zzp = jSONObject;
        }

        public final Status getStatus() {
            return this.zzgf;
        }

        public final JSONObject getCustomData() {
            return this.zzp;
        }
    }

    public RemoteMediaPlayer() {
        this(new zzdh(null));
    }

    @VisibleForTesting
    private RemoteMediaPlayer(zzdh zzdh) {
        this.lock = new Object();
        this.zzex = zzdh;
        this.zzex.zza((zzdj) new zzaq(this));
        this.zzey = new zza();
        this.zzex.zza(this.zzey);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo) {
        return load(googleApiClient, mediaInfo, true, 0, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z) {
        return load(googleApiClient, mediaInfo, z, 0, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j) {
        return load(googleApiClient, mediaInfo, z, j, null, null);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        return load(googleApiClient, mediaInfo, z, j, null, jSONObject);
    }

    public PendingResult<MediaChannelResult> load(GoogleApiClient googleApiClient, MediaInfo mediaInfo, boolean z, long j, long[] jArr, JSONObject jSONObject) {
        zzbb zzbb = new zzbb(this, googleApiClient, googleApiClient, z, j, jArr, jSONObject, mediaInfo);
        GoogleApiClient googleApiClient2 = googleApiClient;
        return googleApiClient.execute(zzbb);
    }

    public PendingResult<MediaChannelResult> pause(GoogleApiClient googleApiClient) {
        return pause(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> pause(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.execute(new zzbg(this, googleApiClient, googleApiClient, jSONObject));
    }

    public PendingResult<MediaChannelResult> stop(GoogleApiClient googleApiClient) {
        return stop(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> stop(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.execute(new zzbh(this, googleApiClient, googleApiClient, jSONObject));
    }

    public PendingResult<MediaChannelResult> play(GoogleApiClient googleApiClient) {
        return play(googleApiClient, null);
    }

    public PendingResult<MediaChannelResult> play(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.execute(new zzbi(this, googleApiClient, googleApiClient, jSONObject));
    }

    public PendingResult<MediaChannelResult> seek(GoogleApiClient googleApiClient, long j) {
        return seek(googleApiClient, j, 0, null);
    }

    public PendingResult<MediaChannelResult> seek(GoogleApiClient googleApiClient, long j, int i) {
        return seek(googleApiClient, j, i, null);
    }

    public PendingResult<MediaChannelResult> seek(GoogleApiClient googleApiClient, long j, int i, JSONObject jSONObject) {
        zzbj zzbj = new zzbj(this, googleApiClient, googleApiClient, j, i, jSONObject);
        return googleApiClient.execute(zzbj);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(GoogleApiClient googleApiClient, double d) throws IllegalArgumentException {
        return setStreamVolume(googleApiClient, d, null);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(GoogleApiClient googleApiClient, double d, JSONObject jSONObject) throws IllegalArgumentException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Volume cannot be ");
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        zzbk zzbk = new zzbk(this, googleApiClient, googleApiClient, d, jSONObject);
        return googleApiClient.execute(zzbk);
    }

    public PendingResult<MediaChannelResult> setStreamMute(GoogleApiClient googleApiClient, boolean z) {
        return setStreamMute(googleApiClient, z, null);
    }

    public PendingResult<MediaChannelResult> setStreamMute(GoogleApiClient googleApiClient, boolean z, JSONObject jSONObject) {
        zzbl zzbl = new zzbl(this, googleApiClient, googleApiClient, z, jSONObject);
        return googleApiClient.execute(zzbl);
    }

    public PendingResult<MediaChannelResult> requestStatus(GoogleApiClient googleApiClient) {
        return googleApiClient.execute(new zzbm(this, googleApiClient, googleApiClient));
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(GoogleApiClient googleApiClient, long[] jArr) {
        if (jArr != null) {
            return googleApiClient.execute(new zzar(this, googleApiClient, googleApiClient, jArr));
        }
        throw new IllegalArgumentException("trackIds cannot be null");
    }

    public PendingResult<MediaChannelResult> setTextTrackStyle(GoogleApiClient googleApiClient, TextTrackStyle textTrackStyle) {
        if (textTrackStyle != null) {
            return googleApiClient.execute(new zzas(this, googleApiClient, googleApiClient, textTrackStyle));
        }
        throw new IllegalArgumentException("trackStyle cannot be null");
    }

    public PendingResult<MediaChannelResult> queueLoad(GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, int i2, JSONObject jSONObject) throws IllegalArgumentException {
        return queueLoad(googleApiClient, mediaQueueItemArr, i, i2, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueLoad(GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) throws IllegalArgumentException {
        zzat zzat = new zzat(this, googleApiClient, googleApiClient, mediaQueueItemArr, i, i2, j, jSONObject);
        GoogleApiClient googleApiClient2 = googleApiClient;
        return googleApiClient.execute(zzat);
    }

    public PendingResult<MediaChannelResult> queueInsertItems(GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) throws IllegalArgumentException {
        zzau zzau = new zzau(this, googleApiClient, googleApiClient, mediaQueueItemArr, i, jSONObject);
        return googleApiClient.execute(zzau);
    }

    public PendingResult<MediaChannelResult> queueAppendItem(GoogleApiClient googleApiClient, MediaQueueItem mediaQueueItem, JSONObject jSONObject) throws IllegalArgumentException {
        return queueInsertItems(googleApiClient, new MediaQueueItem[]{mediaQueueItem}, 0, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(GoogleApiClient googleApiClient, MediaQueueItem mediaQueueItem, int i, JSONObject jSONObject) {
        return queueInsertAndPlayItem(googleApiClient, mediaQueueItem, i, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(GoogleApiClient googleApiClient, MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        zzav zzav = new zzav(this, googleApiClient, googleApiClient, mediaQueueItem, i, j, jSONObject);
        GoogleApiClient googleApiClient2 = googleApiClient;
        return googleApiClient.execute(zzav);
    }

    public PendingResult<MediaChannelResult> queueUpdateItems(GoogleApiClient googleApiClient, MediaQueueItem[] mediaQueueItemArr, JSONObject jSONObject) {
        zzaw zzaw = new zzaw(this, googleApiClient, googleApiClient, mediaQueueItemArr, jSONObject);
        return googleApiClient.execute(zzaw);
    }

    public PendingResult<MediaChannelResult> queueRemoveItems(GoogleApiClient googleApiClient, int[] iArr, JSONObject jSONObject) throws IllegalArgumentException {
        zzax zzax = new zzax(this, googleApiClient, googleApiClient, iArr, jSONObject);
        return googleApiClient.execute(zzax);
    }

    public PendingResult<MediaChannelResult> queueReorderItems(GoogleApiClient googleApiClient, int[] iArr, int i, JSONObject jSONObject) throws IllegalArgumentException {
        zzay zzay = new zzay(this, googleApiClient, googleApiClient, iArr, i, jSONObject);
        return googleApiClient.execute(zzay);
    }

    public PendingResult<MediaChannelResult> queuePrev(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.execute(new zzaz(this, googleApiClient, googleApiClient, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueNext(GoogleApiClient googleApiClient, JSONObject jSONObject) {
        return googleApiClient.execute(new zzba(this, googleApiClient, googleApiClient, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueSetRepeatMode(GoogleApiClient googleApiClient, int i, JSONObject jSONObject) {
        zzbc zzbc = new zzbc(this, googleApiClient, googleApiClient, i, jSONObject);
        return googleApiClient.execute(zzbc);
    }

    public PendingResult<MediaChannelResult> queueRemoveItem(GoogleApiClient googleApiClient, int i, JSONObject jSONObject) {
        zzbd zzbd = new zzbd(this, googleApiClient, i, googleApiClient, jSONObject);
        return googleApiClient.execute(zzbd);
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(GoogleApiClient googleApiClient, int i, JSONObject jSONObject) {
        return queueJumpToItem(googleApiClient, i, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(GoogleApiClient googleApiClient, int i, long j, JSONObject jSONObject) {
        zzbe zzbe = new zzbe(this, googleApiClient, i, googleApiClient, j, jSONObject);
        return googleApiClient.execute(zzbe);
    }

    public PendingResult<MediaChannelResult> queueMoveItemToNewIndex(GoogleApiClient googleApiClient, int i, int i2, JSONObject jSONObject) {
        zzbf zzbf = new zzbf(this, googleApiClient, i, i2, googleApiClient, jSONObject);
        return googleApiClient.execute(zzbf);
    }

    /* access modifiers changed from: private */
    public final int zzc(int i) {
        MediaStatus mediaStatus = getMediaStatus();
        for (int i2 = 0; i2 < mediaStatus.getQueueItemCount(); i2++) {
            if (mediaStatus.getQueueItem(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public long getApproximateStreamPosition() {
        long approximateStreamPosition;
        synchronized (this.lock) {
            approximateStreamPosition = this.zzex.getApproximateStreamPosition();
        }
        return approximateStreamPosition;
    }

    public long getStreamDuration() {
        long streamDuration;
        synchronized (this.lock) {
            streamDuration = this.zzex.getStreamDuration();
        }
        return streamDuration;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatus;
        synchronized (this.lock) {
            mediaStatus = this.zzex.getMediaStatus();
        }
        return mediaStatus;
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo;
        synchronized (this.lock) {
            mediaInfo = this.zzex.getMediaInfo();
        }
        return mediaInfo;
    }

    public void setOnStatusUpdatedListener(OnStatusUpdatedListener onStatusUpdatedListener) {
        this.zzfc = onStatusUpdatedListener;
    }

    /* access modifiers changed from: private */
    public final void onStatusUpdated() {
        OnStatusUpdatedListener onStatusUpdatedListener = this.zzfc;
        if (onStatusUpdatedListener != null) {
            onStatusUpdatedListener.onStatusUpdated();
        }
    }

    public void setOnMetadataUpdatedListener(OnMetadataUpdatedListener onMetadataUpdatedListener) {
        this.zzfb = onMetadataUpdatedListener;
    }

    /* access modifiers changed from: private */
    public final void onMetadataUpdated() {
        OnMetadataUpdatedListener onMetadataUpdatedListener = this.zzfb;
        if (onMetadataUpdatedListener != null) {
            onMetadataUpdatedListener.onMetadataUpdated();
        }
    }

    public void setOnQueueStatusUpdatedListener(OnQueueStatusUpdatedListener onQueueStatusUpdatedListener) {
        this.zzfa = onQueueStatusUpdatedListener;
    }

    /* access modifiers changed from: private */
    public final void onQueueStatusUpdated() {
        OnQueueStatusUpdatedListener onQueueStatusUpdatedListener = this.zzfa;
        if (onQueueStatusUpdatedListener != null) {
            onQueueStatusUpdatedListener.onQueueStatusUpdated();
        }
    }

    public void setOnPreloadStatusUpdatedListener(OnPreloadStatusUpdatedListener onPreloadStatusUpdatedListener) {
        this.zzez = onPreloadStatusUpdatedListener;
    }

    /* access modifiers changed from: private */
    public final void onPreloadStatusUpdated() {
        OnPreloadStatusUpdatedListener onPreloadStatusUpdatedListener = this.zzez;
        if (onPreloadStatusUpdatedListener != null) {
            onPreloadStatusUpdatedListener.onPreloadStatusUpdated();
        }
    }

    public String getNamespace() {
        return this.zzex.getNamespace();
    }

    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzex.zzn(str2);
    }
}
