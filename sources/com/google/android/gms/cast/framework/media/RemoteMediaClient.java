package com.google.android.gms.cast.framework.media;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.AdBreakInfo;
import com.google.android.gms.cast.Cast.CastApi;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadOptions;
import com.google.android.gms.cast.MediaLoadOptions.Builder;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.TextTrackStyle;
import com.google.android.gms.cast.zzbq;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.cast.zzcf;
import com.google.android.gms.internal.cast.zzcn;
import com.google.android.gms.internal.cast.zzdh;
import com.google.android.gms.internal.cast.zzdj;
import com.google.android.gms.internal.cast.zzdl;
import com.google.android.gms.internal.cast.zzdm;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

public class RemoteMediaClient implements MessageReceivedCallback {
    public static final String NAMESPACE = zzdh.NAMESPACE;
    public static final int RESUME_STATE_PAUSE = 2;
    public static final int RESUME_STATE_PLAY = 1;
    public static final int RESUME_STATE_UNCHANGED = 0;
    public static final int STATUS_FAILED = 2100;
    public static final int STATUS_REPLACED = 2103;
    public static final int STATUS_SUCCEEDED = 0;
    /* access modifiers changed from: private */
    public final Handler handler = new Handler(Looper.getMainLooper());
    /* access modifiers changed from: private */
    public final Object lock = new Object();
    /* access modifiers changed from: private */
    public final zzdh zzex;
    /* access modifiers changed from: private */
    public final CastApi zzho;
    private final MediaQueue zzms;
    private final zza zzoj = new zza();
    private GoogleApiClient zzok;
    /* access modifiers changed from: private */
    public final List<Listener> zzol = new CopyOnWriteArrayList();
    @VisibleForTesting
    final List<Callback> zzom = new CopyOnWriteArrayList();
    private final Map<ProgressListener, zze> zzon = new ConcurrentHashMap();
    private final Map<Long, zze> zzoo = new ConcurrentHashMap();
    /* access modifiers changed from: private */
    public ParseAdsInfoCallback zzop;

    public static abstract class Callback {
        public void onAdBreakStatusUpdated() {
        }

        public void onMetadataUpdated() {
        }

        public void onPreloadStatusUpdated() {
        }

        public void onQueueStatusUpdated() {
        }

        public void onSendingRemoteMediaRequest() {
        }

        public void onStatusUpdated() {
        }

        public void zza(int[] iArr) {
        }

        public void zza(int[] iArr, int i) {
        }

        public void zzb(int[] iArr) {
        }

        public void zzb(MediaQueueItem[] mediaQueueItemArr) {
        }

        public void zzc(int[] iArr) {
        }
    }

    @Deprecated
    public interface Listener {
        void onAdBreakStatusUpdated();

        void onMetadataUpdated();

        void onPreloadStatusUpdated();

        void onQueueStatusUpdated();

        void onSendingRemoteMediaRequest();

        void onStatusUpdated();
    }

    public interface MediaChannelResult extends Result {
        JSONObject getCustomData();
    }

    public interface ParseAdsInfoCallback {
        List<AdBreakInfo> parseAdBreaksFromMediaStatus(MediaStatus mediaStatus);

        boolean parseIsPlayingAdFromMediaStatus(MediaStatus mediaStatus);
    }

    public interface ProgressListener {
        void onProgressUpdated(long j, long j2);
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
                RemoteMediaClient.this.zzho.sendMessage(this.zzfz, str, str2).setResultCallback(new zzau(this, j));
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

    private static class zzb extends BasePendingResult<MediaChannelResult> {
        zzb() {
            super((GoogleApiClient) null);
        }

        /* access modifiers changed from: protected */
        @NonNull
        /* renamed from: zza */
        public final MediaChannelResult createFailedResult(Status status) {
            return new zzav(this, status);
        }
    }

    @VisibleForTesting
    abstract class zzc extends zzcf<MediaChannelResult> {
        zzdm zzgd;
        private final boolean zzpa;

        zzc(RemoteMediaClient remoteMediaClient, GoogleApiClient googleApiClient) {
            this(googleApiClient, false);
        }

        /* access modifiers changed from: 0000 */
        public abstract void zzb(zzcn zzcn);

        zzc(GoogleApiClient googleApiClient, boolean z) {
            super(googleApiClient);
            this.zzpa = z;
            this.zzgd = new zzaw(this, RemoteMediaClient.this);
        }

        /* access modifiers changed from: protected */
        public /* synthetic */ void doExecute(AnyClient anyClient) throws RemoteException {
            zzcn zzcn = (zzcn) anyClient;
            if (!this.zzpa) {
                for (Listener onSendingRemoteMediaRequest : RemoteMediaClient.this.zzol) {
                    onSendingRemoteMediaRequest.onSendingRemoteMediaRequest();
                }
                for (Callback onSendingRemoteMediaRequest2 : RemoteMediaClient.this.zzom) {
                    onSendingRemoteMediaRequest2.onSendingRemoteMediaRequest();
                }
            }
            zzb(zzcn);
        }

        public /* synthetic */ Result createFailedResult(Status status) {
            return new zzax(this, status);
        }
    }

    private static final class zzd implements MediaChannelResult {
        private final Status zzgf;
        private final JSONObject zzp;

        zzd(Status status, JSONObject jSONObject) {
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

    private class zze {
        /* access modifiers changed from: private */
        public final Set<ProgressListener> zzpd = new HashSet();
        /* access modifiers changed from: private */
        public final long zzpe;
        private final Runnable zzpf;
        private boolean zzpg;

        public zze(long j) {
            this.zzpe = j;
            this.zzpf = new zzay(this, RemoteMediaClient.this);
        }

        public final long zzcg() {
            return this.zzpe;
        }

        public final void zza(ProgressListener progressListener) {
            this.zzpd.add(progressListener);
        }

        public final void zzb(ProgressListener progressListener) {
            this.zzpd.remove(progressListener);
        }

        public final boolean hasListener() {
            return !this.zzpd.isEmpty();
        }

        public final void start() {
            RemoteMediaClient.this.handler.removeCallbacks(this.zzpf);
            this.zzpg = true;
            RemoteMediaClient.this.handler.postDelayed(this.zzpf, this.zzpe);
        }

        public final void stop() {
            RemoteMediaClient.this.handler.removeCallbacks(this.zzpf);
            this.zzpg = false;
        }

        public final boolean isStarted() {
            return this.zzpg;
        }
    }

    public RemoteMediaClient(@NonNull zzdh zzdh, @NonNull CastApi castApi) {
        this.zzho = castApi;
        this.zzex = (zzdh) Preconditions.checkNotNull(zzdh);
        this.zzex.zza((zzdj) new zzr(this));
        this.zzex.zza(this.zzoj);
        this.zzms = new MediaQueue(this);
    }

    public final void zzb(GoogleApiClient googleApiClient) {
        GoogleApiClient googleApiClient2 = this.zzok;
        if (googleApiClient2 != googleApiClient) {
            if (googleApiClient2 != null) {
                this.zzex.zzdc();
                try {
                    this.zzho.removeMessageReceivedCallbacks(this.zzok, getNamespace());
                } catch (IOException unused) {
                }
                this.zzoj.zza(null);
                this.handler.removeCallbacksAndMessages(null);
            }
            this.zzok = googleApiClient;
            GoogleApiClient googleApiClient3 = this.zzok;
            if (googleApiClient3 != null) {
                this.zzoj.zza(googleApiClient3);
            }
        }
    }

    public final void zzcb() throws IOException {
        GoogleApiClient googleApiClient = this.zzok;
        if (googleApiClient != null) {
            this.zzho.setMessageReceivedCallbacks(googleApiClient, getNamespace(), this);
        }
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo) {
        return load(mediaInfo, new Builder().build());
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z) {
        return load(mediaInfo, new Builder().setAutoplay(z).build());
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j) {
        return load(mediaInfo, new Builder().setAutoplay(z).setPlayPosition(j).build());
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j, JSONObject jSONObject) {
        return load(mediaInfo, new Builder().setAutoplay(z).setPlayPosition(j).setCustomData(jSONObject).build());
    }

    @Deprecated
    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, boolean z, long j, long[] jArr, JSONObject jSONObject) {
        return load(mediaInfo, new Builder().setAutoplay(z).setPlayPosition(j).setActiveTrackIds(jArr).setCustomData(jSONObject).build());
    }

    public PendingResult<MediaChannelResult> load(MediaInfo mediaInfo, MediaLoadOptions mediaLoadOptions) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzac(this, this.zzok, mediaInfo, mediaLoadOptions));
    }

    public PendingResult<MediaChannelResult> pause() {
        return pause(null);
    }

    public PendingResult<MediaChannelResult> pause(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzan(this, this.zzok, jSONObject));
    }

    public PendingResult<MediaChannelResult> stop() {
        return stop(null);
    }

    public PendingResult<MediaChannelResult> stop(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzao(this, this.zzok, jSONObject));
    }

    public PendingResult<MediaChannelResult> play() {
        return play(null);
    }

    public PendingResult<MediaChannelResult> play(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzap(this, this.zzok, jSONObject));
    }

    public PendingResult<MediaChannelResult> seek(long j) {
        return seek(j, 0, null);
    }

    public PendingResult<MediaChannelResult> seek(long j, int i) {
        return seek(j, i, null);
    }

    public PendingResult<MediaChannelResult> seek(long j, int i, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzaq zzaq = new zzaq(this, this.zzok, j, i, jSONObject);
        return zza((zzc) zzaq);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(double d) throws IllegalArgumentException {
        return setStreamVolume(d, null);
    }

    public PendingResult<MediaChannelResult> setStreamVolume(double d, JSONObject jSONObject) throws IllegalArgumentException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Volume cannot be ");
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        zzar zzar = new zzar(this, this.zzok, d, jSONObject);
        return zza((zzc) zzar);
    }

    public PendingResult<MediaChannelResult> setStreamMute(boolean z) {
        return setStreamMute(z, null);
    }

    public PendingResult<MediaChannelResult> setStreamMute(boolean z, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzas(this, this.zzok, z, jSONObject));
    }

    public PendingResult<MediaChannelResult> setPlaybackRate(double d) {
        return setPlaybackRate(d, null);
    }

    public PendingResult<MediaChannelResult> setPlaybackRate(double d, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        if (Double.compare(d, 2.0d) > 0 || Double.compare(d, 0.5d) < 0) {
            throw new IllegalArgumentException("playbackRate must be between PLAYBACK_RATE_MIN and PLAYBACK_RATE_MAX");
        }
        zzat zzat = new zzat(this, this.zzok, d, jSONObject);
        return zza((zzc) zzat);
    }

    public PendingResult<MediaChannelResult> skipAd() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzs(this, this.zzok));
    }

    public PendingResult<MediaChannelResult> requestStatus() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzt(this, this.zzok));
    }

    public PendingResult<MediaChannelResult> setActiveMediaTracks(long[] jArr) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        if (jArr != null) {
            return zza((zzc) new zzu(this, this.zzok, jArr));
        }
        throw new IllegalArgumentException("trackIds cannot be null");
    }

    public PendingResult<MediaChannelResult> setTextTrackStyle(TextTrackStyle textTrackStyle) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        if (textTrackStyle != null) {
            return zza((zzc) new zzv(this, this.zzok, textTrackStyle));
        }
        throw new IllegalArgumentException("trackStyle cannot be null");
    }

    public PendingResult<MediaChannelResult> queueLoad(MediaQueueItem[] mediaQueueItemArr, int i, int i2, JSONObject jSONObject) throws IllegalArgumentException {
        return queueLoad(mediaQueueItemArr, i, i2, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueLoad(MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) throws IllegalArgumentException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzw zzw = new zzw(this, this.zzok, mediaQueueItemArr, i, i2, j, jSONObject);
        return zza((zzc) zzw);
    }

    public PendingResult<MediaChannelResult> queueInsertItems(MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) throws IllegalArgumentException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzx zzx = new zzx(this, this.zzok, mediaQueueItemArr, i, jSONObject);
        return zza((zzc) zzx);
    }

    public PendingResult<MediaChannelResult> queueAppendItem(MediaQueueItem mediaQueueItem, JSONObject jSONObject) throws IllegalArgumentException {
        return queueInsertItems(new MediaQueueItem[]{mediaQueueItem}, 0, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(MediaQueueItem mediaQueueItem, int i, JSONObject jSONObject) {
        return queueInsertAndPlayItem(mediaQueueItem, i, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueInsertAndPlayItem(MediaQueueItem mediaQueueItem, int i, long j, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzy zzy = new zzy(this, this.zzok, mediaQueueItem, i, j, jSONObject);
        return zza((zzc) zzy);
    }

    public PendingResult<MediaChannelResult> queueUpdateItems(MediaQueueItem[] mediaQueueItemArr, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzz(this, this.zzok, mediaQueueItemArr, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueRemoveItems(int[] iArr, JSONObject jSONObject) throws IllegalArgumentException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzaa(this, this.zzok, iArr, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueReorderItems(int[] iArr, int i, JSONObject jSONObject) throws IllegalArgumentException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzab zzab = new zzab(this, this.zzok, iArr, i, jSONObject);
        return zza((zzc) zzab);
    }

    public PendingResult<MediaChannelResult> queuePrev(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzad(this, this.zzok, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueNext(JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzae(this, this.zzok, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueSetRepeatMode(int i, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzaf(this, this.zzok, i, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueRemoveItem(int i, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzag(this, this.zzok, i, jSONObject));
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(int i, JSONObject jSONObject) {
        return queueJumpToItem(i, -1, jSONObject);
    }

    public PendingResult<MediaChannelResult> queueJumpToItem(int i, long j, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzah zzah = new zzah(this, this.zzok, i, j, jSONObject);
        return zza((zzc) zzah);
    }

    public PendingResult<MediaChannelResult> queueMoveItemToNewIndex(int i, int i2, JSONObject jSONObject) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzai zzai = new zzai(this, this.zzok, i, i2, jSONObject);
        return zza((zzc) zzai);
    }

    public final PendingResult<MediaChannelResult> zzcc() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzaj(this, this.zzok, true));
    }

    public final PendingResult<MediaChannelResult> zzf(int[] iArr) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        return zza((zzc) new zzak(this, this.zzok, true, iArr));
    }

    public final PendingResult<MediaChannelResult> zza(int i, int i2, int i3) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzal zzal = new zzal(this, this.zzok, true, i, i2, i3);
        return zza((zzc) zzal);
    }

    public final PendingResult<MediaChannelResult> zza(String str, List<zzbq> list) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!zzcd()) {
            return zza(17, (String) null);
        }
        zzam zzam = new zzam(this, this.zzok, true, str, null);
        return zza((zzc) zzam);
    }

    /* access modifiers changed from: private */
    public final int zzc(int i) {
        Preconditions.checkMainThread("Must be called from the main thread.");
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
            Preconditions.checkMainThread("Must be called from the main thread.");
            approximateStreamPosition = this.zzex.getApproximateStreamPosition();
        }
        return approximateStreamPosition;
    }

    public long getApproximateAdBreakClipPositionMs() {
        long approximateAdBreakClipPositionMs;
        synchronized (this.lock) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            approximateAdBreakClipPositionMs = this.zzex.getApproximateAdBreakClipPositionMs();
        }
        return approximateAdBreakClipPositionMs;
    }

    public long getStreamDuration() {
        long streamDuration;
        synchronized (this.lock) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            streamDuration = this.zzex.getStreamDuration();
        }
        return streamDuration;
    }

    public MediaStatus getMediaStatus() {
        MediaStatus mediaStatus;
        synchronized (this.lock) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            mediaStatus = this.zzex.getMediaStatus();
        }
        return mediaStatus;
    }

    public MediaQueue getMediaQueue() {
        MediaQueue mediaQueue;
        synchronized (this.lock) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            mediaQueue = this.zzms;
        }
        return mediaQueue;
    }

    public MediaInfo getMediaInfo() {
        MediaInfo mediaInfo;
        synchronized (this.lock) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            mediaInfo = this.zzex.getMediaInfo();
        }
        return mediaInfo;
    }

    public int getPlayerState() {
        int playerState;
        synchronized (this.lock) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            playerState = mediaStatus != null ? mediaStatus.getPlayerState() : 1;
        }
        return playerState;
    }

    public int getIdleReason() {
        int idleReason;
        synchronized (this.lock) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            MediaStatus mediaStatus = getMediaStatus();
            idleReason = mediaStatus != null ? mediaStatus.getIdleReason() : 0;
        }
        return idleReason;
    }

    public boolean isLiveStream() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaInfo mediaInfo = getMediaInfo();
        return mediaInfo != null && mediaInfo.getStreamType() == 2;
    }

    public boolean isPlaying() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 2;
    }

    public boolean isPaused() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && (mediaStatus.getPlayerState() == 3 || (isLiveStream() && getIdleReason() == 2));
    }

    public boolean isBuffering() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.getPlayerState() == 4;
    }

    public boolean isLoadingNextItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return (mediaStatus == null || mediaStatus.getLoadingItemId() == 0) ? false : true;
    }

    public MediaQueueItem getCurrentItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getCurrentItemId());
    }

    public MediaQueueItem getLoadingItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getLoadingItemId());
    }

    public MediaQueueItem getPreloadedItem() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getQueueItemById(mediaStatus.getPreloadedItemId());
    }

    public void togglePlayback() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        int playerState = getPlayerState();
        if (playerState == 4 || playerState == 2) {
            pause();
        } else {
            play();
        }
    }

    public boolean hasMediaSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return isBuffering() || isPlaying() || isPaused() || isLoadingNextItem();
    }

    @Deprecated
    public void addListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.zzol.add(listener);
        }
    }

    @Deprecated
    public void removeListener(Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.zzol.remove(listener);
        }
    }

    public void registerCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (callback != null) {
            this.zzom.add(callback);
        }
    }

    public void unregisterCallback(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (callback != null) {
            this.zzom.remove(callback);
        }
    }

    public boolean addProgressListener(ProgressListener progressListener, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (progressListener == null || this.zzon.containsKey(progressListener)) {
            return false;
        }
        zze zze2 = (zze) this.zzoo.get(Long.valueOf(j));
        if (zze2 == null) {
            zze2 = new zze(j);
            this.zzoo.put(Long.valueOf(j), zze2);
        }
        zze2.zza(progressListener);
        this.zzon.put(progressListener, zze2);
        if (hasMediaSession()) {
            zze2.start();
        }
        return true;
    }

    public void removeProgressListener(ProgressListener progressListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zze zze2 = (zze) this.zzon.remove(progressListener);
        if (zze2 != null) {
            zze2.zzb(progressListener);
            if (!zze2.hasListener()) {
                this.zzoo.remove(Long.valueOf(zze2.zzcg()));
                zze2.stop();
            }
        }
    }

    public void setParseAdsInfoCallback(ParseAdsInfoCallback parseAdsInfoCallback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        this.zzop = parseAdsInfoCallback;
    }

    public boolean isPlayingAd() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus mediaStatus = getMediaStatus();
        return mediaStatus != null && mediaStatus.isPlayingAd();
    }

    public String getNamespace() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.zzex.getNamespace();
    }

    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.zzex.zzn(str2);
    }

    private final boolean zzcd() {
        return this.zzok != null;
    }

    public static PendingResult<MediaChannelResult> zza(int i, String str) {
        zzb zzb2 = new zzb();
        zzb2.setResult(zzb2.createFailedResult(new Status(i, str)));
        return zzb2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:?, code lost:
        r3.setResult((com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r3.createFailedResult(new com.google.android.gms.common.api.Status(2100)));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0016, code lost:
        return r3;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0006 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.google.android.gms.cast.framework.media.RemoteMediaClient.zzc zza(com.google.android.gms.cast.framework.media.RemoteMediaClient.zzc r3) {
        /*
            r2 = this;
            com.google.android.gms.common.api.GoogleApiClient r0 = r2.zzok     // Catch:{ IllegalStateException -> 0x0006 }
            r0.execute(r3)     // Catch:{ IllegalStateException -> 0x0006 }
            return r3
        L_0x0006:
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status     // Catch:{ all -> 0x0016 }
            r1 = 2100(0x834, float:2.943E-42)
            r0.<init>(r1)     // Catch:{ all -> 0x0016 }
            com.google.android.gms.common.api.Result r0 = r3.createFailedResult(r0)     // Catch:{ all -> 0x0016 }
            com.google.android.gms.cast.framework.media.RemoteMediaClient$MediaChannelResult r0 = (com.google.android.gms.cast.framework.media.RemoteMediaClient.MediaChannelResult) r0     // Catch:{ all -> 0x0016 }
            r3.setResult(r0)     // Catch:{ all -> 0x0016 }
        L_0x0016:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.RemoteMediaClient.zza(com.google.android.gms.cast.framework.media.RemoteMediaClient$zzc):com.google.android.gms.cast.framework.media.RemoteMediaClient$zzc");
    }

    /* access modifiers changed from: private */
    public final void zza(Set<ProgressListener> set) {
        HashSet<ProgressListener> hashSet = new HashSet<>(set);
        if (isPlaying() || isPaused() || isBuffering()) {
            for (ProgressListener onProgressUpdated : hashSet) {
                onProgressUpdated.onProgressUpdated(getApproximateStreamPosition(), getStreamDuration());
            }
        } else if (isLoadingNextItem()) {
            MediaQueueItem loadingItem = getLoadingItem();
            if (!(loadingItem == null || loadingItem.getMedia() == null)) {
                for (ProgressListener onProgressUpdated2 : hashSet) {
                    onProgressUpdated2.onProgressUpdated(0, loadingItem.getMedia().getStreamDuration());
                }
            }
        } else {
            for (ProgressListener onProgressUpdated3 : hashSet) {
                onProgressUpdated3.onProgressUpdated(0, 0);
            }
        }
    }

    /* access modifiers changed from: private */
    public final void zzce() {
        for (zze zze2 : this.zzoo.values()) {
            if (hasMediaSession() && !zze2.isStarted()) {
                zze2.start();
            } else if (!hasMediaSession() && zze2.isStarted()) {
                zze2.stop();
            }
            if (zze2.isStarted() && (isBuffering() || isPaused() || isLoadingNextItem())) {
                zza(zze2.zzpd);
            }
        }
    }
}
