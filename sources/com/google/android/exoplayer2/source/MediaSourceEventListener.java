package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.MediaSource.MediaPeriodId;
import com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher;
import com.google.android.exoplayer2.source.MediaSourceEventListener.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaSourceEventListener.MediaLoadData;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public interface MediaSourceEventListener {

    public static final class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;
        @Nullable
        public final MediaPeriodId mediaPeriodId;
        private final long mediaTimeOffsetMs;
        public final int windowIndex;

        private static final class ListenerAndHandler {
            public final Handler handler;
            public final MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler2, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler2;
                this.listener = mediaSourceEventListener;
            }
        }

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null, 0);
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i, @Nullable MediaPeriodId mediaPeriodId2, long j) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i;
            this.mediaPeriodId = mediaPeriodId2;
            this.mediaTimeOffsetMs = j;
        }

        @CheckResult
        public EventDispatcher withParameters(int i, @Nullable MediaPeriodId mediaPeriodId2, long j) {
            EventDispatcher eventDispatcher = new EventDispatcher(this.listenerAndHandlers, i, mediaPeriodId2, j);
            return eventDispatcher;
        }

        public void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            Assertions.checkArgument((handler == null || mediaSourceEventListener == null) ? false : true);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }

        public void removeEventListener(MediaSourceEventListener mediaSourceEventListener) {
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                if (listenerAndHandler.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(listenerAndHandler);
                }
            }
        }

        public void mediaPeriodCreated() {
            MediaPeriodId mediaPeriodId2 = (MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, mediaPeriodId2) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ MediaPeriodId f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$mediaPeriodCreated$0$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$mediaPeriodCreated$0$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, MediaPeriodId mediaPeriodId2) {
            mediaSourceEventListener.onMediaPeriodCreated(this.windowIndex, mediaPeriodId2);
        }

        public void mediaPeriodReleased() {
            MediaPeriodId mediaPeriodId2 = (MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, mediaPeriodId2) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ MediaPeriodId f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$mediaPeriodReleased$1$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$mediaPeriodReleased$1$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, MediaPeriodId mediaPeriodId2) {
            mediaSourceEventListener.onMediaPeriodReleased(this.windowIndex, mediaPeriodId2);
        }

        public void loadStarted(DataSpec dataSpec, int i, long j) {
            loadStarted(dataSpec, i, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j);
        }

        public void loadStarted(DataSpec dataSpec, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3) {
            DataSpec dataSpec2 = dataSpec;
            LoadEventInfo loadEventInfo = new LoadEventInfo(dataSpec2, dataSpec2.uri, Collections.emptyMap(), j3, 0, 0);
            MediaLoadData mediaLoadData = new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2));
            loadStarted(loadEventInfo, mediaLoadData);
        }

        public void loadStarted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, loadEventInfo, mediaLoadData) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ LoadEventInfo f$2;
                    private final /* synthetic */ MediaLoadData f$3;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r4;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$loadStarted$2$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2, this.f$3);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$loadStarted$2$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadStarted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public void loadCompleted(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            loadCompleted(dataSpec, uri, map, i, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j, j2, j3);
        }

        public void loadCompleted(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
            LoadEventInfo loadEventInfo = new LoadEventInfo(dataSpec, uri, map, j3, j4, j5);
            MediaLoadData mediaLoadData = new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2));
            loadCompleted(loadEventInfo, mediaLoadData);
        }

        public void loadCompleted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, loadEventInfo, mediaLoadData) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ LoadEventInfo f$2;
                    private final /* synthetic */ MediaLoadData f$3;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r4;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$loadCompleted$3$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2, this.f$3);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$loadCompleted$3$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCompleted(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public void loadCanceled(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3) {
            loadCanceled(dataSpec, uri, map, i, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j, j2, j3);
        }

        public void loadCanceled(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5) {
            LoadEventInfo loadEventInfo = new LoadEventInfo(dataSpec, uri, map, j3, j4, j5);
            MediaLoadData mediaLoadData = new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2));
            loadCanceled(loadEventInfo, mediaLoadData);
        }

        public void loadCanceled(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, loadEventInfo, mediaLoadData) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ LoadEventInfo f$2;
                    private final /* synthetic */ MediaLoadData f$3;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r4;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$loadCanceled$4$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2, this.f$3);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$loadCanceled$4$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onLoadCanceled(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        public void loadError(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            loadError(dataSpec, uri, map, i, -1, null, 0, null, C.TIME_UNSET, C.TIME_UNSET, j, j2, j3, iOException, z);
        }

        public void loadError(DataSpec dataSpec, Uri uri, Map<String, List<String>> map, int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
            LoadEventInfo loadEventInfo = new LoadEventInfo(dataSpec, uri, map, j3, j4, j5);
            MediaLoadData mediaLoadData = new MediaLoadData(i, i2, format, i3, obj, adjustMediaTime(j), adjustMediaTime(j2));
            loadError(loadEventInfo, mediaLoadData, iOException, z);
        }

        public void loadError(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                Handler handler = listenerAndHandler.handler;
                $$Lambda$MediaSourceEventListener$EventDispatcher$0XTAsNqR4TUW1yA_ZD1_p3oT84 r2 = new Runnable(mediaSourceEventListener, loadEventInfo, mediaLoadData, iOException, z) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ LoadEventInfo f$2;
                    private final /* synthetic */ MediaLoadData f$3;
                    private final /* synthetic */ IOException f$4;
                    private final /* synthetic */ boolean f$5;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r4;
                        this.f$4 = r5;
                        this.f$5 = r6;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$loadError$5$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5);
                    }
                };
                postOrRun(handler, r2);
            }
        }

        public /* synthetic */ void lambda$loadError$5$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            mediaSourceEventListener.onLoadError(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z);
        }

        public void readingStarted() {
            MediaPeriodId mediaPeriodId2 = (MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, mediaPeriodId2) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ MediaPeriodId f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$readingStarted$6$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$readingStarted$6$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, MediaPeriodId mediaPeriodId2) {
            mediaSourceEventListener.onReadingStarted(this.windowIndex, mediaPeriodId2);
        }

        public void upstreamDiscarded(int i, long j, long j2) {
            long j3 = j;
            MediaLoadData mediaLoadData = new MediaLoadData(1, i, null, 3, null, adjustMediaTime(j), adjustMediaTime(j2));
            upstreamDiscarded(mediaLoadData);
        }

        public void upstreamDiscarded(MediaLoadData mediaLoadData) {
            MediaPeriodId mediaPeriodId2 = (MediaPeriodId) Assertions.checkNotNull(this.mediaPeriodId);
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, mediaPeriodId2, mediaLoadData) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ MediaPeriodId f$2;
                    private final /* synthetic */ MediaLoadData f$3;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                        this.f$3 = r4;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$upstreamDiscarded$7$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2, this.f$3);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$upstreamDiscarded$7$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, MediaPeriodId mediaPeriodId2, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onUpstreamDiscarded(this.windowIndex, mediaPeriodId2, mediaLoadData);
        }

        public void downstreamFormatChanged(int i, @Nullable Format format, int i2, @Nullable Object obj, long j) {
            MediaLoadData mediaLoadData = new MediaLoadData(1, i, format, i2, obj, adjustMediaTime(j), C.TIME_UNSET);
            downstreamFormatChanged(mediaLoadData);
        }

        public void downstreamFormatChanged(MediaLoadData mediaLoadData) {
            Iterator it = this.listenerAndHandlers.iterator();
            while (it.hasNext()) {
                ListenerAndHandler listenerAndHandler = (ListenerAndHandler) it.next();
                postOrRun(listenerAndHandler.handler, new Runnable(listenerAndHandler.listener, mediaLoadData) {
                    private final /* synthetic */ MediaSourceEventListener f$1;
                    private final /* synthetic */ MediaLoadData f$2;

                    {
                        this.f$1 = r2;
                        this.f$2 = r3;
                    }

                    public final void run() {
                        EventDispatcher.this.lambda$downstreamFormatChanged$8$MediaSourceEventListener$EventDispatcher(this.f$1, this.f$2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$downstreamFormatChanged$8$MediaSourceEventListener$EventDispatcher(MediaSourceEventListener mediaSourceEventListener, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.onDownstreamFormatChanged(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        private long adjustMediaTime(long j) {
            long usToMs = C.usToMs(j);
            if (usToMs == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            return this.mediaTimeOffsetMs + usToMs;
        }

        private void postOrRun(Handler handler, Runnable runnable) {
            if (handler.getLooper() == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    public static final class LoadEventInfo {
        public final long bytesLoaded;
        public final DataSpec dataSpec;
        public final long elapsedRealtimeMs;
        public final long loadDurationMs;
        public final Map<String, List<String>> responseHeaders;
        public final Uri uri;

        public LoadEventInfo(DataSpec dataSpec2, Uri uri2, Map<String, List<String>> map, long j, long j2, long j3) {
            this.dataSpec = dataSpec2;
            this.uri = uri2;
            this.responseHeaders = map;
            this.elapsedRealtimeMs = j;
            this.loadDurationMs = j2;
            this.bytesLoaded = j3;
        }
    }

    public static final class MediaLoadData {
        public final int dataType;
        public final long mediaEndTimeMs;
        public final long mediaStartTimeMs;
        @Nullable
        public final Format trackFormat;
        @Nullable
        public final Object trackSelectionData;
        public final int trackSelectionReason;
        public final int trackType;

        public MediaLoadData(int i, int i2, @Nullable Format format, int i3, @Nullable Object obj, long j, long j2) {
            this.dataType = i;
            this.trackType = i2;
            this.trackFormat = format;
            this.trackSelectionReason = i3;
            this.trackSelectionData = obj;
            this.mediaStartTimeMs = j;
            this.mediaEndTimeMs = j2;
        }
    }

    void onDownstreamFormatChanged(int i, @Nullable MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void onLoadCanceled(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadCompleted(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onLoadError(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z);

    void onLoadStarted(int i, @Nullable MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void onMediaPeriodCreated(int i, MediaPeriodId mediaPeriodId);

    void onMediaPeriodReleased(int i, MediaPeriodId mediaPeriodId);

    void onReadingStarted(int i, MediaPeriodId mediaPeriodId);

    void onUpstreamDiscarded(int i, MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);
}
