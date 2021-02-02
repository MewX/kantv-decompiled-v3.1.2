package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ExoPlayer.ExoPlayerMessage;
import com.google.android.exoplayer2.Player.AudioComponent;
import com.google.android.exoplayer2.Player.EventListener;
import com.google.android.exoplayer2.Player.MetadataComponent;
import com.google.android.exoplayer2.Player.TextComponent;
import com.google.android.exoplayer2.Player.VideoComponent;
import com.google.android.exoplayer2.PlayerMessage.Target;
import com.google.android.exoplayer2.Timeline.Period;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSource.MediaPeriodId;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

final class ExoPlayerImpl extends BasePlayer implements ExoPlayer {
    private static final String TAG = "ExoPlayerImpl";
    final TrackSelectorResult emptyTrackSelectorResult;
    private final Handler eventHandler;
    private boolean foregroundMode;
    private boolean hasPendingPrepare;
    private boolean hasPendingSeek;
    private boolean internalPlayWhenReady;
    private final ExoPlayerImplInternal internalPlayer;
    private final Handler internalPlayerHandler;
    private final CopyOnWriteArrayList<ListenerHolder> listeners;
    private int maskingPeriodIndex;
    private int maskingWindowIndex;
    private long maskingWindowPositionMs;
    private MediaSource mediaSource;
    private final ArrayDeque<Runnable> pendingListenerNotifications;
    private int pendingOperationAcks;
    private final Period period;
    private boolean playWhenReady;
    @Nullable
    private ExoPlaybackException playbackError;
    private PlaybackInfo playbackInfo;
    private PlaybackParameters playbackParameters;
    private final Renderer[] renderers;
    private int repeatMode;
    private SeekParameters seekParameters;
    private boolean shuffleModeEnabled;
    private final TrackSelector trackSelector;

    private static final class PlaybackInfoUpdate implements Runnable {
        private final boolean isLoadingChanged;
        private final CopyOnWriteArrayList<ListenerHolder> listenerSnapshot;
        private final boolean playWhenReady;
        private final PlaybackInfo playbackInfo;
        private final boolean playbackStateChanged;
        private final boolean positionDiscontinuity;
        private final int positionDiscontinuityReason;
        private final boolean seekProcessed;
        private final int timelineChangeReason;
        private final boolean timelineOrManifestChanged;
        private final TrackSelector trackSelector;
        private final boolean trackSelectorResultChanged;

        public PlaybackInfoUpdate(PlaybackInfo playbackInfo2, PlaybackInfo playbackInfo3, CopyOnWriteArrayList<ListenerHolder> copyOnWriteArrayList, TrackSelector trackSelector2, boolean z, int i, int i2, boolean z2, boolean z3) {
            this.playbackInfo = playbackInfo2;
            this.listenerSnapshot = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
            this.trackSelector = trackSelector2;
            this.positionDiscontinuity = z;
            this.positionDiscontinuityReason = i;
            this.timelineChangeReason = i2;
            this.seekProcessed = z2;
            this.playWhenReady = z3;
            boolean z4 = true;
            this.playbackStateChanged = playbackInfo3.playbackState != playbackInfo2.playbackState;
            this.timelineOrManifestChanged = (playbackInfo3.timeline == playbackInfo2.timeline && playbackInfo3.manifest == playbackInfo2.manifest) ? false : true;
            this.isLoadingChanged = playbackInfo3.isLoading != playbackInfo2.isLoading;
            if (playbackInfo3.trackSelectorResult == playbackInfo2.trackSelectorResult) {
                z4 = false;
            }
            this.trackSelectorResultChanged = z4;
        }

        public void run() {
            if (this.timelineOrManifestChanged || this.timelineChangeReason == 0) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new ListenerInvocation() {
                    public final void invokeListener(EventListener eventListener) {
                        PlaybackInfoUpdate.this.lambda$run$0$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.positionDiscontinuity) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new ListenerInvocation() {
                    public final void invokeListener(EventListener eventListener) {
                        PlaybackInfoUpdate.this.lambda$run$1$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.trackSelectorResultChanged) {
                this.trackSelector.onSelectionActivated(this.playbackInfo.trackSelectorResult.info);
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new ListenerInvocation() {
                    public final void invokeListener(EventListener eventListener) {
                        PlaybackInfoUpdate.this.lambda$run$2$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.isLoadingChanged) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new ListenerInvocation() {
                    public final void invokeListener(EventListener eventListener) {
                        PlaybackInfoUpdate.this.lambda$run$3$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.playbackStateChanged) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, new ListenerInvocation() {
                    public final void invokeListener(EventListener eventListener) {
                        PlaybackInfoUpdate.this.lambda$run$4$ExoPlayerImpl$PlaybackInfoUpdate(eventListener);
                    }
                });
            }
            if (this.seekProcessed) {
                ExoPlayerImpl.invokeAll(this.listenerSnapshot, $$Lambda$5UFexKQkRNqmel8DaRJEnD1bDjg.INSTANCE);
            }
        }

        public /* synthetic */ void lambda$run$0$ExoPlayerImpl$PlaybackInfoUpdate(EventListener eventListener) {
            eventListener.onTimelineChanged(this.playbackInfo.timeline, this.playbackInfo.manifest, this.timelineChangeReason);
        }

        public /* synthetic */ void lambda$run$1$ExoPlayerImpl$PlaybackInfoUpdate(EventListener eventListener) {
            eventListener.onPositionDiscontinuity(this.positionDiscontinuityReason);
        }

        public /* synthetic */ void lambda$run$2$ExoPlayerImpl$PlaybackInfoUpdate(EventListener eventListener) {
            eventListener.onTracksChanged(this.playbackInfo.trackGroups, this.playbackInfo.trackSelectorResult.selections);
        }

        public /* synthetic */ void lambda$run$3$ExoPlayerImpl$PlaybackInfoUpdate(EventListener eventListener) {
            eventListener.onLoadingChanged(this.playbackInfo.isLoading);
        }

        public /* synthetic */ void lambda$run$4$ExoPlayerImpl$PlaybackInfoUpdate(EventListener eventListener) {
            eventListener.onPlayerStateChanged(this.playWhenReady, this.playbackInfo.playbackState);
        }
    }

    @Nullable
    public AudioComponent getAudioComponent() {
        return null;
    }

    @Nullable
    public MetadataComponent getMetadataComponent() {
        return null;
    }

    @Nullable
    public TextComponent getTextComponent() {
        return null;
    }

    @Nullable
    public VideoComponent getVideoComponent() {
        return null;
    }

    @SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(Renderer[] rendererArr, TrackSelector trackSelector2, LoadControl loadControl, BandwidthMeter bandwidthMeter, Clock clock, Looper looper) {
        Renderer[] rendererArr2 = rendererArr;
        StringBuilder sb = new StringBuilder();
        sb.append("Init ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [");
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        sb.append("] [");
        sb.append(Util.DEVICE_DEBUG_INFO);
        sb.append("]");
        Log.i(TAG, sb.toString());
        Assertions.checkState(rendererArr2.length > 0);
        this.renderers = (Renderer[]) Assertions.checkNotNull(rendererArr);
        this.trackSelector = (TrackSelector) Assertions.checkNotNull(trackSelector2);
        this.playWhenReady = false;
        this.repeatMode = 0;
        this.shuffleModeEnabled = false;
        this.listeners = new CopyOnWriteArrayList<>();
        this.emptyTrackSelectorResult = new TrackSelectorResult(new RendererConfiguration[rendererArr2.length], new TrackSelection[rendererArr2.length], null);
        this.period = new Period();
        this.playbackParameters = PlaybackParameters.DEFAULT;
        this.seekParameters = SeekParameters.DEFAULT;
        this.eventHandler = new Handler(looper) {
            public void handleMessage(Message message) {
                ExoPlayerImpl.this.handleEvent(message);
            }
        };
        this.playbackInfo = PlaybackInfo.createDummy(0, this.emptyTrackSelectorResult);
        this.pendingListenerNotifications = new ArrayDeque<>();
        ExoPlayerImplInternal exoPlayerImplInternal = new ExoPlayerImplInternal(rendererArr, trackSelector2, this.emptyTrackSelectorResult, loadControl, bandwidthMeter, this.playWhenReady, this.repeatMode, this.shuffleModeEnabled, this.eventHandler, clock);
        this.internalPlayer = exoPlayerImplInternal;
        this.internalPlayerHandler = new Handler(this.internalPlayer.getPlaybackLooper());
    }

    public Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    public Looper getApplicationLooper() {
        return this.eventHandler.getLooper();
    }

    public void addListener(EventListener eventListener) {
        this.listeners.addIfAbsent(new ListenerHolder(eventListener));
    }

    public void removeListener(EventListener eventListener) {
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ListenerHolder listenerHolder = (ListenerHolder) it.next();
            if (listenerHolder.listener.equals(eventListener)) {
                listenerHolder.release();
                this.listeners.remove(listenerHolder);
            }
        }
    }

    public int getPlaybackState() {
        return this.playbackInfo.playbackState;
    }

    @Nullable
    public ExoPlaybackException getPlaybackError() {
        return this.playbackError;
    }

    public void retry() {
        if (this.mediaSource == null) {
            return;
        }
        if (this.playbackError != null || this.playbackInfo.playbackState == 1) {
            prepare(this.mediaSource, false, false);
        }
    }

    public void prepare(MediaSource mediaSource2) {
        prepare(mediaSource2, true, true);
    }

    public void prepare(MediaSource mediaSource2, boolean z, boolean z2) {
        this.playbackError = null;
        this.mediaSource = mediaSource2;
        PlaybackInfo resetPlaybackInfo = getResetPlaybackInfo(z, z2, 2);
        this.hasPendingPrepare = true;
        this.pendingOperationAcks++;
        this.internalPlayer.prepare(mediaSource2, z, z2);
        updatePlaybackInfo(resetPlaybackInfo, false, 4, 1, false);
    }

    public void setPlayWhenReady(boolean z) {
        setPlayWhenReady(z, false);
    }

    public void setPlayWhenReady(boolean z, boolean z2) {
        boolean z3 = z && !z2;
        if (this.internalPlayWhenReady != z3) {
            this.internalPlayWhenReady = z3;
            this.internalPlayer.setPlayWhenReady(z3);
        }
        if (this.playWhenReady != z) {
            this.playWhenReady = z;
            notifyListeners((ListenerInvocation) new ListenerInvocation(z, this.playbackInfo.playbackState) {
                private final /* synthetic */ boolean f$0;
                private final /* synthetic */ int f$1;

                {
                    this.f$0 = r1;
                    this.f$1 = r2;
                }

                public final void invokeListener(EventListener eventListener) {
                    eventListener.onPlayerStateChanged(this.f$0, this.f$1);
                }
            });
        }
    }

    public boolean getPlayWhenReady() {
        return this.playWhenReady;
    }

    public void setRepeatMode(int i) {
        if (this.repeatMode != i) {
            this.repeatMode = i;
            this.internalPlayer.setRepeatMode(i);
            notifyListeners((ListenerInvocation) new ListenerInvocation(i) {
                private final /* synthetic */ int f$0;

                {
                    this.f$0 = r1;
                }

                public final void invokeListener(EventListener eventListener) {
                    eventListener.onRepeatModeChanged(this.f$0);
                }
            });
        }
    }

    public int getRepeatMode() {
        return this.repeatMode;
    }

    public void setShuffleModeEnabled(boolean z) {
        if (this.shuffleModeEnabled != z) {
            this.shuffleModeEnabled = z;
            this.internalPlayer.setShuffleModeEnabled(z);
            notifyListeners((ListenerInvocation) new ListenerInvocation(z) {
                private final /* synthetic */ boolean f$0;

                {
                    this.f$0 = r1;
                }

                public final void invokeListener(EventListener eventListener) {
                    eventListener.onShuffleModeEnabledChanged(this.f$0);
                }
            });
        }
    }

    public boolean getShuffleModeEnabled() {
        return this.shuffleModeEnabled;
    }

    public boolean isLoading() {
        return this.playbackInfo.isLoading;
    }

    public void seekTo(int i, long j) {
        Timeline timeline = this.playbackInfo.timeline;
        if (i < 0 || (!timeline.isEmpty() && i >= timeline.getWindowCount())) {
            throw new IllegalSeekPositionException(timeline, i, j);
        }
        this.hasPendingSeek = true;
        this.pendingOperationAcks++;
        if (isPlayingAd()) {
            Log.w(TAG, "seekTo ignored because an ad is playing");
            this.eventHandler.obtainMessage(0, 1, -1, this.playbackInfo).sendToTarget();
            return;
        }
        this.maskingWindowIndex = i;
        if (timeline.isEmpty()) {
            this.maskingWindowPositionMs = j == C.TIME_UNSET ? 0 : j;
            this.maskingPeriodIndex = 0;
        } else {
            long defaultPositionUs = j == C.TIME_UNSET ? timeline.getWindow(i, this.window).getDefaultPositionUs() : C.msToUs(j);
            Pair periodPosition = timeline.getPeriodPosition(this.window, this.period, i, defaultPositionUs);
            this.maskingWindowPositionMs = C.usToMs(defaultPositionUs);
            this.maskingPeriodIndex = timeline.getIndexOfPeriod(periodPosition.first);
        }
        this.internalPlayer.seekTo(timeline, i, C.msToUs(j));
        notifyListeners((ListenerInvocation) $$Lambda$ExoPlayerImpl$Or0VmpLdRqfIa3jPOGIz08ZWLAg.INSTANCE);
    }

    public void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters2) {
        if (playbackParameters2 == null) {
            playbackParameters2 = PlaybackParameters.DEFAULT;
        }
        this.internalPlayer.setPlaybackParameters(playbackParameters2);
    }

    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    public void setSeekParameters(@Nullable SeekParameters seekParameters2) {
        if (seekParameters2 == null) {
            seekParameters2 = SeekParameters.DEFAULT;
        }
        if (!this.seekParameters.equals(seekParameters2)) {
            this.seekParameters = seekParameters2;
            this.internalPlayer.setSeekParameters(seekParameters2);
        }
    }

    public SeekParameters getSeekParameters() {
        return this.seekParameters;
    }

    public void setForegroundMode(boolean z) {
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            this.internalPlayer.setForegroundMode(z);
        }
    }

    public void stop(boolean z) {
        if (z) {
            this.playbackError = null;
            this.mediaSource = null;
        }
        PlaybackInfo resetPlaybackInfo = getResetPlaybackInfo(z, z, 1);
        this.pendingOperationAcks++;
        this.internalPlayer.stop(z);
        updatePlaybackInfo(resetPlaybackInfo, false, 4, 1, false);
    }

    public void release() {
        StringBuilder sb = new StringBuilder();
        sb.append("Release ");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" [");
        sb.append(ExoPlayerLibraryInfo.VERSION_SLASHY);
        String str = "] [";
        sb.append(str);
        sb.append(Util.DEVICE_DEBUG_INFO);
        sb.append(str);
        sb.append(ExoPlayerLibraryInfo.registeredModules());
        sb.append("]");
        Log.i(TAG, sb.toString());
        this.mediaSource = null;
        this.internalPlayer.release();
        this.eventHandler.removeCallbacksAndMessages(null);
        this.playbackInfo = getResetPlaybackInfo(false, false, 1);
    }

    @Deprecated
    public void sendMessages(ExoPlayerMessage... exoPlayerMessageArr) {
        for (ExoPlayerMessage exoPlayerMessage : exoPlayerMessageArr) {
            createMessage(exoPlayerMessage.target).setType(exoPlayerMessage.messageType).setPayload(exoPlayerMessage.message).send();
        }
    }

    public PlayerMessage createMessage(Target target) {
        PlayerMessage playerMessage = new PlayerMessage(this.internalPlayer, target, this.playbackInfo.timeline, getCurrentWindowIndex(), this.internalPlayerHandler);
        return playerMessage;
    }

    @Deprecated
    public void blockingSendMessages(ExoPlayerMessage... exoPlayerMessageArr) {
        ArrayList<PlayerMessage> arrayList = new ArrayList<>();
        for (ExoPlayerMessage exoPlayerMessage : exoPlayerMessageArr) {
            arrayList.add(createMessage(exoPlayerMessage.target).setType(exoPlayerMessage.messageType).setPayload(exoPlayerMessage.message).send());
        }
        boolean z = false;
        for (PlayerMessage playerMessage : arrayList) {
            boolean z2 = z;
            boolean z3 = true;
            while (z3) {
                try {
                    playerMessage.blockUntilDelivered();
                    z3 = false;
                } catch (InterruptedException unused) {
                    z2 = true;
                }
            }
            z = z2;
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public int getCurrentPeriodIndex() {
        if (shouldMaskPosition()) {
            return this.maskingPeriodIndex;
        }
        return this.playbackInfo.timeline.getIndexOfPeriod(this.playbackInfo.periodId.periodUid);
    }

    public int getCurrentWindowIndex() {
        if (shouldMaskPosition()) {
            return this.maskingWindowIndex;
        }
        return this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    public long getDuration() {
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
        this.playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return C.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
    }

    public long getCurrentPosition() {
        if (shouldMaskPosition()) {
            return this.maskingWindowPositionMs;
        }
        if (this.playbackInfo.periodId.isAd()) {
            return C.usToMs(this.playbackInfo.positionUs);
        }
        return periodPositionUsToWindowPositionMs(this.playbackInfo.periodId, this.playbackInfo.positionUs);
    }

    public long getBufferedPosition() {
        long j;
        if (!isPlayingAd()) {
            return getContentBufferedPosition();
        }
        if (this.playbackInfo.loadingMediaPeriodId.equals(this.playbackInfo.periodId)) {
            j = C.usToMs(this.playbackInfo.bufferedPositionUs);
        } else {
            j = getDuration();
        }
        return j;
    }

    public long getTotalBufferedDuration() {
        return C.usToMs(this.playbackInfo.totalBufferedDurationUs);
    }

    public boolean isPlayingAd() {
        return !shouldMaskPosition() && this.playbackInfo.periodId.isAd();
    }

    public int getCurrentAdGroupIndex() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    public int getCurrentAdIndexInAdGroup() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    public long getContentPosition() {
        long j;
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.periodId.periodUid, this.period);
        if (this.playbackInfo.contentPositionUs == C.TIME_UNSET) {
            j = this.playbackInfo.timeline.getWindow(getCurrentWindowIndex(), this.window).getDefaultPositionMs();
        } else {
            j = this.period.getPositionInWindowMs() + C.usToMs(this.playbackInfo.contentPositionUs);
        }
        return j;
    }

    public long getContentBufferedPosition() {
        if (shouldMaskPosition()) {
            return this.maskingWindowPositionMs;
        }
        if (this.playbackInfo.loadingMediaPeriodId.windowSequenceNumber != this.playbackInfo.periodId.windowSequenceNumber) {
            return this.playbackInfo.timeline.getWindow(getCurrentWindowIndex(), this.window).getDurationMs();
        }
        long j = this.playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.isAd()) {
            Period periodByUid = this.playbackInfo.timeline.getPeriodByUid(this.playbackInfo.loadingMediaPeriodId.periodUid, this.period);
            long adGroupTimeUs = periodByUid.getAdGroupTimeUs(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            j = adGroupTimeUs == Long.MIN_VALUE ? periodByUid.durationUs : adGroupTimeUs;
        }
        return periodPositionUsToWindowPositionMs(this.playbackInfo.loadingMediaPeriodId, j);
    }

    public int getRendererCount() {
        return this.renderers.length;
    }

    public int getRendererType(int i) {
        return this.renderers[i].getTrackType();
    }

    public TrackGroupArray getCurrentTrackGroups() {
        return this.playbackInfo.trackGroups;
    }

    public TrackSelectionArray getCurrentTrackSelections() {
        return this.playbackInfo.trackSelectorResult.selections;
    }

    public Timeline getCurrentTimeline() {
        return this.playbackInfo.timeline;
    }

    public Object getCurrentManifest() {
        return this.playbackInfo.manifest;
    }

    /* access modifiers changed from: 0000 */
    public void handleEvent(Message message) {
        int i = message.what;
        boolean z = true;
        if (i == 0) {
            PlaybackInfo playbackInfo2 = (PlaybackInfo) message.obj;
            int i2 = message.arg1;
            if (message.arg2 == -1) {
                z = false;
            }
            handlePlaybackInfo(playbackInfo2, i2, z, message.arg2);
        } else if (i == 1) {
            PlaybackParameters playbackParameters2 = (PlaybackParameters) message.obj;
            if (!this.playbackParameters.equals(playbackParameters2)) {
                this.playbackParameters = playbackParameters2;
                notifyListeners((ListenerInvocation) new ListenerInvocation() {
                    public final void invokeListener(EventListener eventListener) {
                        eventListener.onPlaybackParametersChanged(PlaybackParameters.this);
                    }
                });
            }
        } else if (i == 2) {
            ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
            this.playbackError = exoPlaybackException;
            notifyListeners((ListenerInvocation) new ListenerInvocation() {
                public final void invokeListener(EventListener eventListener) {
                    eventListener.onPlayerError(ExoPlaybackException.this);
                }
            });
        } else {
            throw new IllegalStateException();
        }
    }

    private void handlePlaybackInfo(PlaybackInfo playbackInfo2, int i, boolean z, int i2) {
        this.pendingOperationAcks -= i;
        if (this.pendingOperationAcks == 0) {
            if (playbackInfo2.startPositionUs == C.TIME_UNSET) {
                playbackInfo2 = playbackInfo2.resetToNewPosition(playbackInfo2.periodId, 0, playbackInfo2.contentPositionUs);
            }
            PlaybackInfo playbackInfo3 = playbackInfo2;
            if (!this.playbackInfo.timeline.isEmpty() && playbackInfo3.timeline.isEmpty()) {
                this.maskingPeriodIndex = 0;
                this.maskingWindowIndex = 0;
                this.maskingWindowPositionMs = 0;
            }
            int i3 = this.hasPendingPrepare ? 0 : 2;
            boolean z2 = this.hasPendingSeek;
            this.hasPendingPrepare = false;
            this.hasPendingSeek = false;
            updatePlaybackInfo(playbackInfo3, z, i2, i3, z2);
        }
    }

    private PlaybackInfo getResetPlaybackInfo(boolean z, boolean z2, int i) {
        long j;
        long j2 = 0;
        boolean z3 = false;
        if (z) {
            this.maskingWindowIndex = 0;
            this.maskingPeriodIndex = 0;
            this.maskingWindowPositionMs = 0;
        } else {
            this.maskingWindowIndex = getCurrentWindowIndex();
            this.maskingPeriodIndex = getCurrentPeriodIndex();
            this.maskingWindowPositionMs = getCurrentPosition();
        }
        if (z || z2) {
            z3 = true;
        }
        MediaPeriodId dummyFirstMediaPeriodId = z3 ? this.playbackInfo.getDummyFirstMediaPeriodId(this.shuffleModeEnabled, this.window) : this.playbackInfo.periodId;
        if (!z3) {
            j2 = this.playbackInfo.positionUs;
        }
        long j3 = j2;
        if (z3) {
            j = C.TIME_UNSET;
        } else {
            j = this.playbackInfo.contentPositionUs;
        }
        PlaybackInfo playbackInfo2 = new PlaybackInfo(z2 ? Timeline.EMPTY : this.playbackInfo.timeline, z2 ? null : this.playbackInfo.manifest, dummyFirstMediaPeriodId, j3, j, i, false, z2 ? TrackGroupArray.EMPTY : this.playbackInfo.trackGroups, z2 ? this.emptyTrackSelectorResult : this.playbackInfo.trackSelectorResult, dummyFirstMediaPeriodId, j3, 0, j3);
        return playbackInfo2;
    }

    private void updatePlaybackInfo(PlaybackInfo playbackInfo2, boolean z, int i, int i2, boolean z2) {
        PlaybackInfo playbackInfo3 = this.playbackInfo;
        PlaybackInfo playbackInfo4 = playbackInfo2;
        this.playbackInfo = playbackInfo4;
        PlaybackInfoUpdate playbackInfoUpdate = new PlaybackInfoUpdate(playbackInfo4, playbackInfo3, this.listeners, this.trackSelector, z, i, i2, z2, this.playWhenReady);
        notifyListeners((Runnable) playbackInfoUpdate);
    }

    private void notifyListeners(ListenerInvocation listenerInvocation) {
        notifyListeners((Runnable) new Runnable(new CopyOnWriteArrayList(this.listeners), listenerInvocation) {
            private final /* synthetic */ CopyOnWriteArrayList f$0;
            private final /* synthetic */ ListenerInvocation f$1;

            {
                this.f$0 = r1;
                this.f$1 = r2;
            }

            public final void run() {
                ExoPlayerImpl.invokeAll(this.f$0, this.f$1);
            }
        });
    }

    private void notifyListeners(Runnable runnable) {
        boolean z = !this.pendingListenerNotifications.isEmpty();
        this.pendingListenerNotifications.addLast(runnable);
        if (!z) {
            while (!this.pendingListenerNotifications.isEmpty()) {
                ((Runnable) this.pendingListenerNotifications.peekFirst()).run();
                this.pendingListenerNotifications.removeFirst();
            }
        }
    }

    private long periodPositionUsToWindowPositionMs(MediaPeriodId mediaPeriodId, long j) {
        long usToMs = C.usToMs(j);
        this.playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return usToMs + this.period.getPositionInWindowMs();
    }

    private boolean shouldMaskPosition() {
        return this.playbackInfo.timeline.isEmpty() || this.pendingOperationAcks > 0;
    }

    /* access modifiers changed from: private */
    public static void invokeAll(CopyOnWriteArrayList<ListenerHolder> copyOnWriteArrayList, ListenerInvocation listenerInvocation) {
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            ((ListenerHolder) it.next()).invoke(listenerInvocation);
        }
    }
}
