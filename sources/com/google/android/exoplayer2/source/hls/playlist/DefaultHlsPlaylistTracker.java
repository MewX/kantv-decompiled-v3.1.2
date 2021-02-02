package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher;
import com.google.android.exoplayer2.source.hls.HlsDataSourceFactory;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist.Variant;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.Factory;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistEventListener;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistResetException;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PlaylistStuckException;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.Loader.Callback;
import com.google.android.exoplayer2.upstream.Loader.LoadErrorAction;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.ParsingLoadable.Parser;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class DefaultHlsPlaylistTracker implements HlsPlaylistTracker, Callback<ParsingLoadable<HlsPlaylist>> {
    public static final double DEFAULT_PLAYLIST_STUCK_TARGET_DURATION_COEFFICIENT = 3.5d;
    public static final Factory FACTORY = $$Lambda$lKTLOVxne0MoBOOliKH0gO2KDMM.INSTANCE;
    /* access modifiers changed from: private */
    public final HlsDataSourceFactory dataSourceFactory;
    /* access modifiers changed from: private */
    @Nullable
    public EventDispatcher eventDispatcher;
    @Nullable
    private Loader initialPlaylistLoader;
    private long initialStartTimeUs;
    private boolean isLive;
    private final List<PlaylistEventListener> listeners;
    /* access modifiers changed from: private */
    public final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    @Nullable
    private HlsMasterPlaylist masterPlaylist;
    /* access modifiers changed from: private */
    @Nullable
    public Parser<HlsPlaylist> mediaPlaylistParser;
    private final HashMap<Uri, MediaPlaylistBundle> playlistBundles;
    private final HlsPlaylistParserFactory playlistParserFactory;
    /* access modifiers changed from: private */
    @Nullable
    public Handler playlistRefreshHandler;
    /* access modifiers changed from: private */
    public final double playlistStuckTargetDurationCoefficient;
    @Nullable
    private HlsMediaPlaylist primaryMediaPlaylistSnapshot;
    /* access modifiers changed from: private */
    @Nullable
    public Uri primaryMediaPlaylistUrl;
    @Nullable
    private PrimaryPlaylistListener primaryPlaylistListener;

    private final class MediaPlaylistBundle implements Callback<ParsingLoadable<HlsPlaylist>>, Runnable {
        /* access modifiers changed from: private */
        public long blacklistUntilMs;
        private long earliestNextLoadTimeMs;
        private long lastSnapshotChangeMs;
        private long lastSnapshotLoadMs;
        private boolean loadPending;
        private final ParsingLoadable<HlsPlaylist> mediaPlaylistLoadable;
        private final Loader mediaPlaylistLoader = new Loader("DefaultHlsPlaylistTracker:MediaPlaylist");
        private IOException playlistError;
        private HlsMediaPlaylist playlistSnapshot;
        /* access modifiers changed from: private */
        public final Uri playlistUrl;

        public MediaPlaylistBundle(Uri uri) {
            this.playlistUrl = uri;
            this.mediaPlaylistLoadable = new ParsingLoadable<>(DefaultHlsPlaylistTracker.this.dataSourceFactory.createDataSource(4), uri, 4, DefaultHlsPlaylistTracker.this.mediaPlaylistParser);
        }

        public HlsMediaPlaylist getPlaylistSnapshot() {
            return this.playlistSnapshot;
        }

        public boolean isSnapshotValid() {
            boolean z = false;
            if (this.playlistSnapshot == null) {
                return false;
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long max = Math.max(30000, C.usToMs(this.playlistSnapshot.durationUs));
            if (this.playlistSnapshot.hasEndTag || this.playlistSnapshot.playlistType == 2 || this.playlistSnapshot.playlistType == 1 || this.lastSnapshotLoadMs + max > elapsedRealtime) {
                z = true;
            }
            return z;
        }

        public void release() {
            this.mediaPlaylistLoader.release();
        }

        public void loadPlaylist() {
            this.blacklistUntilMs = 0;
            if (!this.loadPending && !this.mediaPlaylistLoader.isLoading()) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime < this.earliestNextLoadTimeMs) {
                    this.loadPending = true;
                    DefaultHlsPlaylistTracker.this.playlistRefreshHandler.postDelayed(this, this.earliestNextLoadTimeMs - elapsedRealtime);
                    return;
                }
                loadPlaylistImmediately();
            }
        }

        public void maybeThrowPlaylistRefreshError() throws IOException {
            this.mediaPlaylistLoader.maybeThrowError();
            IOException iOException = this.playlistError;
            if (iOException != null) {
                throw iOException;
            }
        }

        public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
            HlsPlaylist hlsPlaylist = (HlsPlaylist) parsingLoadable.getResult();
            if (hlsPlaylist instanceof HlsMediaPlaylist) {
                long j3 = j2;
                processLoadedPlaylist((HlsMediaPlaylist) hlsPlaylist, j3);
                DefaultHlsPlaylistTracker.this.eventDispatcher.loadCompleted(parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), 4, j, j3, parsingLoadable.bytesLoaded());
                return;
            }
            this.playlistError = new ParserException("Loaded playlist has unexpected type.");
        }

        public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
            DefaultHlsPlaylistTracker.this.eventDispatcher.loadCanceled(parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), 4, j, j2, parsingLoadable.bytesLoaded());
        }

        public LoadErrorAction onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException, int i) {
            LoadErrorAction loadErrorAction;
            ParsingLoadable<HlsPlaylist> parsingLoadable2 = parsingLoadable;
            long blacklistDurationMsFor = DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getBlacklistDurationMsFor(parsingLoadable2.type, j2, iOException, i);
            boolean z = blacklistDurationMsFor != C.TIME_UNSET;
            boolean z2 = DefaultHlsPlaylistTracker.this.notifyPlaylistError(this.playlistUrl, blacklistDurationMsFor) || !z;
            if (z) {
                z2 |= blacklistPlaylist(blacklistDurationMsFor);
            }
            if (z2) {
                long retryDelayMsFor = DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getRetryDelayMsFor(parsingLoadable2.type, j2, iOException, i);
                loadErrorAction = retryDelayMsFor != C.TIME_UNSET ? Loader.createRetryAction(false, retryDelayMsFor) : Loader.DONT_RETRY_FATAL;
            } else {
                loadErrorAction = Loader.DONT_RETRY;
            }
            DefaultHlsPlaylistTracker.this.eventDispatcher.loadError(parsingLoadable2.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), 4, j, j2, parsingLoadable.bytesLoaded(), iOException, !loadErrorAction.isRetry());
            return loadErrorAction;
        }

        public void run() {
            this.loadPending = false;
            loadPlaylistImmediately();
        }

        private void loadPlaylistImmediately() {
            DefaultHlsPlaylistTracker.this.eventDispatcher.loadStarted(this.mediaPlaylistLoadable.dataSpec, this.mediaPlaylistLoadable.type, this.mediaPlaylistLoader.startLoading(this.mediaPlaylistLoadable, this, DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.mediaPlaylistLoadable.type)));
        }

        /* access modifiers changed from: private */
        public void processLoadedPlaylist(HlsMediaPlaylist hlsMediaPlaylist, long j) {
            HlsMediaPlaylist hlsMediaPlaylist2 = hlsMediaPlaylist;
            HlsMediaPlaylist hlsMediaPlaylist3 = this.playlistSnapshot;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.lastSnapshotLoadMs = elapsedRealtime;
            this.playlistSnapshot = DefaultHlsPlaylistTracker.this.getLatestPlaylistSnapshot(hlsMediaPlaylist3, hlsMediaPlaylist2);
            HlsMediaPlaylist hlsMediaPlaylist4 = this.playlistSnapshot;
            if (hlsMediaPlaylist4 != hlsMediaPlaylist3) {
                this.playlistError = null;
                this.lastSnapshotChangeMs = elapsedRealtime;
                DefaultHlsPlaylistTracker.this.onPlaylistUpdated(this.playlistUrl, hlsMediaPlaylist4);
            } else if (!hlsMediaPlaylist4.hasEndTag) {
                if (hlsMediaPlaylist2.mediaSequence + ((long) hlsMediaPlaylist2.segments.size()) < this.playlistSnapshot.mediaSequence) {
                    this.playlistError = new PlaylistResetException(this.playlistUrl);
                    DefaultHlsPlaylistTracker.this.notifyPlaylistError(this.playlistUrl, C.TIME_UNSET);
                } else {
                    double d = (double) (elapsedRealtime - this.lastSnapshotChangeMs);
                    double usToMs = (double) C.usToMs(this.playlistSnapshot.targetDurationUs);
                    double access$1100 = DefaultHlsPlaylistTracker.this.playlistStuckTargetDurationCoefficient;
                    Double.isNaN(usToMs);
                    if (d > usToMs * access$1100) {
                        this.playlistError = new PlaylistStuckException(this.playlistUrl);
                        long blacklistDurationMsFor = DefaultHlsPlaylistTracker.this.loadErrorHandlingPolicy.getBlacklistDurationMsFor(4, j, this.playlistError, 1);
                        DefaultHlsPlaylistTracker.this.notifyPlaylistError(this.playlistUrl, blacklistDurationMsFor);
                        if (blacklistDurationMsFor != C.TIME_UNSET) {
                            blacklistPlaylist(blacklistDurationMsFor);
                        }
                    }
                }
            }
            HlsMediaPlaylist hlsMediaPlaylist5 = this.playlistSnapshot;
            this.earliestNextLoadTimeMs = elapsedRealtime + C.usToMs(hlsMediaPlaylist5 != hlsMediaPlaylist3 ? hlsMediaPlaylist5.targetDurationUs : hlsMediaPlaylist5.targetDurationUs / 2);
            if (this.playlistUrl.equals(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl) && !this.playlistSnapshot.hasEndTag) {
                loadPlaylist();
            }
        }

        private boolean blacklistPlaylist(long j) {
            this.blacklistUntilMs = SystemClock.elapsedRealtime() + j;
            return this.playlistUrl.equals(DefaultHlsPlaylistTracker.this.primaryMediaPlaylistUrl) && !DefaultHlsPlaylistTracker.this.maybeSelectNewPrimaryUrl();
        }
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy2, HlsPlaylistParserFactory hlsPlaylistParserFactory) {
        this(hlsDataSourceFactory, loadErrorHandlingPolicy2, hlsPlaylistParserFactory, 3.5d);
    }

    public DefaultHlsPlaylistTracker(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy2, HlsPlaylistParserFactory hlsPlaylistParserFactory, double d) {
        this.dataSourceFactory = hlsDataSourceFactory;
        this.playlistParserFactory = hlsPlaylistParserFactory;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy2;
        this.playlistStuckTargetDurationCoefficient = d;
        this.listeners = new ArrayList();
        this.playlistBundles = new HashMap<>();
        this.initialStartTimeUs = C.TIME_UNSET;
    }

    public void start(Uri uri, EventDispatcher eventDispatcher2, PrimaryPlaylistListener primaryPlaylistListener2) {
        this.playlistRefreshHandler = new Handler();
        this.eventDispatcher = eventDispatcher2;
        this.primaryPlaylistListener = primaryPlaylistListener2;
        ParsingLoadable parsingLoadable = new ParsingLoadable(this.dataSourceFactory.createDataSource(4), uri, 4, this.playlistParserFactory.createPlaylistParser());
        Assertions.checkState(this.initialPlaylistLoader == null);
        this.initialPlaylistLoader = new Loader("DefaultHlsPlaylistTracker:MasterPlaylist");
        eventDispatcher2.loadStarted(parsingLoadable.dataSpec, parsingLoadable.type, this.initialPlaylistLoader.startLoading(parsingLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(parsingLoadable.type)));
    }

    public void stop() {
        this.primaryMediaPlaylistUrl = null;
        this.primaryMediaPlaylistSnapshot = null;
        this.masterPlaylist = null;
        this.initialStartTimeUs = C.TIME_UNSET;
        this.initialPlaylistLoader.release();
        this.initialPlaylistLoader = null;
        for (MediaPlaylistBundle release : this.playlistBundles.values()) {
            release.release();
        }
        this.playlistRefreshHandler.removeCallbacksAndMessages(null);
        this.playlistRefreshHandler = null;
        this.playlistBundles.clear();
    }

    public void addListener(PlaylistEventListener playlistEventListener) {
        this.listeners.add(playlistEventListener);
    }

    public void removeListener(PlaylistEventListener playlistEventListener) {
        this.listeners.remove(playlistEventListener);
    }

    @Nullable
    public HlsMasterPlaylist getMasterPlaylist() {
        return this.masterPlaylist;
    }

    public HlsMediaPlaylist getPlaylistSnapshot(Uri uri, boolean z) {
        HlsMediaPlaylist playlistSnapshot = ((MediaPlaylistBundle) this.playlistBundles.get(uri)).getPlaylistSnapshot();
        if (playlistSnapshot != null && z) {
            maybeSetPrimaryUrl(uri);
        }
        return playlistSnapshot;
    }

    public long getInitialStartTimeUs() {
        return this.initialStartTimeUs;
    }

    public boolean isSnapshotValid(Uri uri) {
        return ((MediaPlaylistBundle) this.playlistBundles.get(uri)).isSnapshotValid();
    }

    public void maybeThrowPrimaryPlaylistRefreshError() throws IOException {
        Loader loader = this.initialPlaylistLoader;
        if (loader != null) {
            loader.maybeThrowError();
        }
        Uri uri = this.primaryMediaPlaylistUrl;
        if (uri != null) {
            maybeThrowPlaylistRefreshError(uri);
        }
    }

    public void maybeThrowPlaylistRefreshError(Uri uri) throws IOException {
        ((MediaPlaylistBundle) this.playlistBundles.get(uri)).maybeThrowPlaylistRefreshError();
    }

    public void refreshPlaylist(Uri uri) {
        ((MediaPlaylistBundle) this.playlistBundles.get(uri)).loadPlaylist();
    }

    public boolean isLive() {
        return this.isLive;
    }

    public void onLoadCompleted(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2) {
        HlsMasterPlaylist hlsMasterPlaylist;
        HlsPlaylist hlsPlaylist = (HlsPlaylist) parsingLoadable.getResult();
        boolean z = hlsPlaylist instanceof HlsMediaPlaylist;
        if (z) {
            hlsMasterPlaylist = HlsMasterPlaylist.createSingleVariantMasterPlaylist(hlsPlaylist.baseUri);
        } else {
            hlsMasterPlaylist = (HlsMasterPlaylist) hlsPlaylist;
        }
        this.masterPlaylist = hlsMasterPlaylist;
        this.mediaPlaylistParser = this.playlistParserFactory.createPlaylistParser(hlsMasterPlaylist);
        this.primaryMediaPlaylistUrl = ((Variant) hlsMasterPlaylist.variants.get(0)).url;
        createBundles(hlsMasterPlaylist.mediaPlaylistUrls);
        MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) this.playlistBundles.get(this.primaryMediaPlaylistUrl);
        if (z) {
            mediaPlaylistBundle.processLoadedPlaylist((HlsMediaPlaylist) hlsPlaylist, j2);
        } else {
            long j3 = j2;
            mediaPlaylistBundle.loadPlaylist();
        }
        this.eventDispatcher.loadCompleted(parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), 4, j, j2, parsingLoadable.bytesLoaded());
    }

    public void onLoadCanceled(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, boolean z) {
        EventDispatcher eventDispatcher2 = this.eventDispatcher;
        DataSpec dataSpec = parsingLoadable.dataSpec;
        Uri uri = parsingLoadable.getUri();
        eventDispatcher2.loadCanceled(dataSpec, uri, parsingLoadable.getResponseHeaders(), 4, j, j2, parsingLoadable.bytesLoaded());
    }

    public LoadErrorAction onLoadError(ParsingLoadable<HlsPlaylist> parsingLoadable, long j, long j2, IOException iOException, int i) {
        ParsingLoadable<HlsPlaylist> parsingLoadable2 = parsingLoadable;
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(parsingLoadable2.type, j2, iOException, i);
        boolean z = retryDelayMsFor == C.TIME_UNSET;
        this.eventDispatcher.loadError(parsingLoadable2.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), 4, j, j2, parsingLoadable.bytesLoaded(), iOException, z);
        if (z) {
            return Loader.DONT_RETRY_FATAL;
        }
        return Loader.createRetryAction(false, retryDelayMsFor);
    }

    /* access modifiers changed from: private */
    public boolean maybeSelectNewPrimaryUrl() {
        List<Variant> list = this.masterPlaylist.variants;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            MediaPlaylistBundle mediaPlaylistBundle = (MediaPlaylistBundle) this.playlistBundles.get(((Variant) list.get(i)).url);
            if (elapsedRealtime > mediaPlaylistBundle.blacklistUntilMs) {
                this.primaryMediaPlaylistUrl = mediaPlaylistBundle.playlistUrl;
                mediaPlaylistBundle.loadPlaylist();
                return true;
            }
        }
        return false;
    }

    private void maybeSetPrimaryUrl(Uri uri) {
        if (!uri.equals(this.primaryMediaPlaylistUrl) && isVariantUrl(uri)) {
            HlsMediaPlaylist hlsMediaPlaylist = this.primaryMediaPlaylistSnapshot;
            if (hlsMediaPlaylist == null || !hlsMediaPlaylist.hasEndTag) {
                this.primaryMediaPlaylistUrl = uri;
                ((MediaPlaylistBundle) this.playlistBundles.get(this.primaryMediaPlaylistUrl)).loadPlaylist();
            }
        }
    }

    private boolean isVariantUrl(Uri uri) {
        List<Variant> list = this.masterPlaylist.variants;
        for (int i = 0; i < list.size(); i++) {
            if (uri.equals(((Variant) list.get(i)).url)) {
                return true;
            }
        }
        return false;
    }

    private void createBundles(List<Uri> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Uri uri = (Uri) list.get(i);
            this.playlistBundles.put(uri, new MediaPlaylistBundle(uri));
        }
    }

    /* access modifiers changed from: private */
    public void onPlaylistUpdated(Uri uri, HlsMediaPlaylist hlsMediaPlaylist) {
        if (uri.equals(this.primaryMediaPlaylistUrl)) {
            if (this.primaryMediaPlaylistSnapshot == null) {
                this.isLive = !hlsMediaPlaylist.hasEndTag;
                this.initialStartTimeUs = hlsMediaPlaylist.startTimeUs;
            }
            this.primaryMediaPlaylistSnapshot = hlsMediaPlaylist;
            this.primaryPlaylistListener.onPrimaryPlaylistRefreshed(hlsMediaPlaylist);
        }
        int size = this.listeners.size();
        for (int i = 0; i < size; i++) {
            ((PlaylistEventListener) this.listeners.get(i)).onPlaylistChanged();
        }
    }

    /* access modifiers changed from: private */
    public boolean notifyPlaylistError(Uri uri, long j) {
        boolean z = false;
        for (int i = 0; i < this.listeners.size(); i++) {
            z |= !((PlaylistEventListener) this.listeners.get(i)).onPlaylistError(uri, j);
        }
        return z;
    }

    /* access modifiers changed from: private */
    public HlsMediaPlaylist getLatestPlaylistSnapshot(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.isNewerThan(hlsMediaPlaylist)) {
            return hlsMediaPlaylist2.copyWith(getLoadedPlaylistStartTimeUs(hlsMediaPlaylist, hlsMediaPlaylist2), getLoadedPlaylistDiscontinuitySequence(hlsMediaPlaylist, hlsMediaPlaylist2));
        }
        if (hlsMediaPlaylist2.hasEndTag) {
            hlsMediaPlaylist = hlsMediaPlaylist.copyWithEndTag();
        }
        return hlsMediaPlaylist;
    }

    private long getLoadedPlaylistStartTimeUs(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.hasProgramDateTime) {
            return hlsMediaPlaylist2.startTimeUs;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        long j = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.startTimeUs : 0;
        if (hlsMediaPlaylist == null) {
            return j;
        }
        int size = hlsMediaPlaylist.segments.size();
        Segment firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2);
        if (firstOldOverlappingSegment != null) {
            return hlsMediaPlaylist.startTimeUs + firstOldOverlappingSegment.relativeStartTimeUs;
        }
        return ((long) size) == hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence ? hlsMediaPlaylist.getEndTimeUs() : j;
    }

    private int getLoadedPlaylistDiscontinuitySequence(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        if (hlsMediaPlaylist2.hasDiscontinuitySequence) {
            return hlsMediaPlaylist2.discontinuitySequence;
        }
        HlsMediaPlaylist hlsMediaPlaylist3 = this.primaryMediaPlaylistSnapshot;
        int i = hlsMediaPlaylist3 != null ? hlsMediaPlaylist3.discontinuitySequence : 0;
        if (hlsMediaPlaylist == null) {
            return i;
        }
        Segment firstOldOverlappingSegment = getFirstOldOverlappingSegment(hlsMediaPlaylist, hlsMediaPlaylist2);
        return firstOldOverlappingSegment != null ? (hlsMediaPlaylist.discontinuitySequence + firstOldOverlappingSegment.relativeDiscontinuitySequence) - ((Segment) hlsMediaPlaylist2.segments.get(0)).relativeDiscontinuitySequence : i;
    }

    private static Segment getFirstOldOverlappingSegment(HlsMediaPlaylist hlsMediaPlaylist, HlsMediaPlaylist hlsMediaPlaylist2) {
        int i = (int) (hlsMediaPlaylist2.mediaSequence - hlsMediaPlaylist.mediaSequence);
        List<Segment> list = hlsMediaPlaylist.segments;
        if (i < list.size()) {
            return (Segment) list.get(i);
        }
        return null;
    }
}
