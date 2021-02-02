package com.kantv.video;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.DefaultLoadControl.Builder;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.LoadControl;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.ConcatenatingMediaSource;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.dash.DashMediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionArray;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.upstream.DataSource.Factory;
import com.google.android.exoplayer2.upstream.DefaultDataSourceFactory;
import com.google.android.exoplayer2.util.Util;
import com.kantv.common.bean.AdBean;
import com.kantv.common.log.AILog;
import com.kantv.common.utils.StringUtils;
import com.kantv.ui.activity.VideoPlayActivity;
import java.util.ArrayList;
import java.util.List;
import tv.danmaku.ijk.media.exo2.IjkExo2MediaPlayer;
import tv.danmaku.ijk.media.exo2.demo.EventLogger;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class MyExoPlayer extends IjkExo2MediaPlayer {
    private String TAG = VideoPlayActivity.TAG;
    private List<AdBean> mAdBean = new ArrayList();
    private int mContentIndex = -1;
    private OnCustomListener onAdEndListener;
    private DefaultRenderersFactory rendererFactory;

    public void onLoadingChanged(boolean z) {
    }

    public void onTimelineChanged(Timeline timeline, Object obj, int i) {
    }

    public MyExoPlayer(Context context) {
        super(context);
    }

    public void release() {
        if (this.mInternalPlayer != null) {
            if (this.mInternalPlayer != null) {
                this.mInternalPlayer.release();
            }
            if (this.mExoHelper != null) {
                this.mExoHelper.release();
            }
        }
    }

    public void createPlayerIfNeed() {
        StringBuilder sb = new StringBuilder();
        sb.append("createPlayerIfNeed:");
        sb.append(this.mInternalPlayer);
        AILog.d(VideoPlayActivity.TAG, sb.toString());
        if (this.mInternalPlayer == null) {
            this.mTrackSelector = new DefaultTrackSelector();
            this.mEventLogger = new EventLogger(this.mTrackSelector);
            this.rendererFactory = new DefaultRenderersFactory(this.mAppContext, 2);
            this.mInternalPlayer = ExoPlayerFactory.newSimpleInstance(this.mAppContext, (RenderersFactory) this.rendererFactory, (TrackSelector) this.mTrackSelector, (LoadControl) new Builder().setBufferDurationsMs(90000, 300000, 2500, 5000).createDefaultLoadControl(), null, Looper.getMainLooper());
            this.mInternalPlayer.addListener(this);
            this.mInternalPlayer.addAnalyticsListener(this);
            this.mInternalPlayer.addListener(this.mEventLogger);
            if (this.mSpeedPlaybackParameters != null) {
                this.mInternalPlayer.setPlaybackParameters(this.mSpeedPlaybackParameters);
            }
            if (this.mSurface != null) {
                this.mInternalPlayer.setVideoSurface(this.mSurface);
            }
        }
    }

    public void prepareAsync() throws IllegalStateException {
        prepareAsyncInternal();
    }

    /* access modifiers changed from: protected */
    public void prepareAsyncInternal() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                MyExoPlayer.this.createPlayerIfNeed();
                MyExoPlayer.this.initSource(null);
            }
        });
    }

    public void prepareWithAd(final String str) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                MyExoPlayer.this.createPlayerIfNeed();
                MyExoPlayer.this.initSource(str);
            }
        });
    }

    /* access modifiers changed from: private */
    public void initSource(String str) {
        DefaultDataSourceFactory defaultDataSourceFactory = new DefaultDataSourceFactory(this.mAppContext, Util.getUserAgent(this.mAppContext, this.mAppContext.getString(R.string.app_name)));
        ArrayList arrayList = new ArrayList();
        List<AdBean> list = this.mAdBean;
        if (list != null && list.size() > 0) {
            for (int i = 0; i < this.mAdBean.size(); i++) {
                AdBean adBean = (AdBean) this.mAdBean.get(i);
                String adstype = adBean.getAdstype();
                if (StringUtils.isEmpty(adstype) || adstype.equals("video")) {
                    String photo = adBean.getPhoto();
                    String str2 = this.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("videoPath:");
                    sb.append(photo);
                    AILog.i(str2, sb.toString());
                    arrayList.add(buildMediaSource(Uri.parse(photo), null, defaultDataSourceFactory, adBean));
                }
            }
        }
        MediaSource buildMediaSource = str == null ? this.mMediaSource : buildMediaSource(Uri.parse(str), null, defaultDataSourceFactory, str);
        if (arrayList.size() != 0) {
            arrayList.add(buildMediaSource);
            MediaSource[] mediaSourceArr = new MediaSource[arrayList.size()];
            arrayList.toArray(mediaSourceArr);
            ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource(mediaSourceArr);
            this.mContentIndex = mediaSourceArr.length - 1;
            buildMediaSource = concatenatingMediaSource;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("prepareAsyncInternal:");
        sb2.append(buildMediaSource);
        String str3 = " ";
        sb2.append(str3);
        sb2.append(this.mAdBean.size());
        sb2.append(str3);
        sb2.append(this.mMediaSource);
        sb2.append(str3);
        sb2.append(this.mSurface);
        AILog.d(VideoPlayActivity.TAG, sb2.toString());
        this.isPreparing = true;
        this.mInternalPlayer.prepare(buildMediaSource, true, true);
        this.mInternalPlayer.setPlayWhenReady(false);
    }

    public OnCustomListener getOnAdEndListener() {
        return this.onAdEndListener;
    }

    public void setOnAdEndListener(OnCustomListener onCustomListener) {
        this.onAdEndListener = onCustomListener;
    }

    public void setAds(List<AdBean> list) {
        this.mAdBean = list;
    }

    private MediaSource buildMediaSource(Uri uri, @Nullable String str, Factory factory, Object obj) {
        int inferContentType = Util.inferContentType(uri, str);
        if (inferContentType == 0) {
            return new DashMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        if (inferContentType == 1) {
            return new SsMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        if (inferContentType == 2) {
            return new HlsMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        if (inferContentType == 3) {
            return new ExtractorMediaSource.Factory(factory).setTag(obj).createMediaSource(uri);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unsupported type: ");
        sb.append(inferContentType);
        throw new IllegalStateException(sb.toString());
    }

    public void onPlayerStateChanged(boolean z, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append("onPlayerStateChanged: playWhenReady = ");
        sb.append(z);
        sb.append(", playbackState = ");
        sb.append(i);
        sb.append(" isLastReportedPlayWhenReady =");
        sb.append(this.isLastReportedPlayWhenReady);
        sb.append(" lastReportedPlaybackState=");
        sb.append(this.lastReportedPlaybackState);
        sb.append(" isBuffering=");
        sb.append(this.isBuffering);
        sb.append(" isPreparing=");
        sb.append(this.isPreparing);
        AILog.e(VideoPlayActivity.TAG, sb.toString());
        if (!(this.isLastReportedPlayWhenReady == z && this.lastReportedPlaybackState == i)) {
            if (this.isBuffering && (i == 3 || i == 4)) {
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_END, this.mInternalPlayer.getBufferedPercentage());
                this.isBuffering = false;
            }
            if (this.isPreparing && i == 3) {
                notifyOnPrepared();
                this.isPreparing = false;
            }
            if (i == 2) {
                notifyOnInfo(IMediaPlayer.MEDIA_INFO_BUFFERING_START, this.mInternalPlayer.getBufferedPercentage());
                this.isBuffering = true;
            } else if (i != 3 && i == 4) {
                notifyOnCompletion();
                onAdCallBack(false);
            }
        }
        this.isLastReportedPlayWhenReady = z;
        this.lastReportedPlaybackState = i;
    }

    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
        onAdCallBack(false);
    }

    private void onAdCallBack(boolean z) {
        if (this.onAdEndListener != null && this.mInternalPlayer != null) {
            String str = this.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Tag:");
            sb.append(this.mInternalPlayer.getCurrentTag());
            sb.append(" windowIndex:");
            sb.append(this.mInternalPlayer.getCurrentWindowIndex());
            sb.append(" getNextWindowIndex:");
            sb.append(this.mInternalPlayer.getNextWindowIndex());
            sb.append(" getPreviousWindowIndex:");
            sb.append(this.mInternalPlayer.getPreviousWindowIndex());
            sb.append(" contentIndex:");
            sb.append(this.mContentIndex);
            AILog.d(str, sb.toString());
            if (this.mInternalPlayer.getCurrentWindowIndex() == this.mContentIndex || z) {
                this.onAdEndListener.onAdEnd(z);
            }
        }
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        AILog.e(this.TAG, "onPlayerError");
        notifyOnError(1, 1);
        onAdCallBack(true);
    }

    public AdBean getTag() {
        if (this.mInternalPlayer != null) {
            Object currentTag = this.mInternalPlayer.getCurrentTag();
            if (currentTag != null && (currentTag instanceof AdBean)) {
                return (AdBean) currentTag;
            }
        }
        return null;
    }
}
