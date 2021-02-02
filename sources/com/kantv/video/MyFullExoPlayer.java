package com.kantv.video;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.exoplayer2.DefaultLoadControl.Builder;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.ExoPlayerFactory;
import com.google.android.exoplayer2.LoadControl;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import tv.danmaku.ijk.media.exo2.IjkExo2MediaPlayer;
import tv.danmaku.ijk.media.exo2.demo.EventLogger;

public class MyFullExoPlayer extends IjkExo2MediaPlayer {
    /* access modifiers changed from: private */
    public DefaultRenderersFactory rendererFactory;

    public MyFullExoPlayer(Context context) {
        super(context);
    }

    /* access modifiers changed from: protected */
    public void prepareAsyncInternal() {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                MyFullExoPlayer.this.mTrackSelector = new DefaultTrackSelector();
                MyFullExoPlayer myFullExoPlayer = MyFullExoPlayer.this;
                myFullExoPlayer.mEventLogger = new EventLogger(myFullExoPlayer.mTrackSelector);
                MyFullExoPlayer myFullExoPlayer2 = MyFullExoPlayer.this;
                myFullExoPlayer2.rendererFactory = new DefaultRenderersFactory(myFullExoPlayer2.mAppContext, 2);
                DefaultLoadControl createDefaultLoadControl = new Builder().setBufferDurationsMs(90000, 300000, 2500, 5000).createDefaultLoadControl();
                MyFullExoPlayer myFullExoPlayer3 = MyFullExoPlayer.this;
                myFullExoPlayer3.mInternalPlayer = ExoPlayerFactory.newSimpleInstance(myFullExoPlayer3.mAppContext, (RenderersFactory) MyFullExoPlayer.this.rendererFactory, (TrackSelector) MyFullExoPlayer.this.mTrackSelector, (LoadControl) createDefaultLoadControl, null, Looper.getMainLooper());
                MyFullExoPlayer.this.mInternalPlayer.addListener(MyFullExoPlayer.this);
                MyFullExoPlayer.this.mInternalPlayer.addAnalyticsListener(MyFullExoPlayer.this);
                MyFullExoPlayer.this.mInternalPlayer.addListener(MyFullExoPlayer.this.mEventLogger);
                if (MyFullExoPlayer.this.mSpeedPlaybackParameters != null) {
                    MyFullExoPlayer.this.mInternalPlayer.setPlaybackParameters(MyFullExoPlayer.this.mSpeedPlaybackParameters);
                }
                if (MyFullExoPlayer.this.mSurface != null) {
                    MyFullExoPlayer.this.mInternalPlayer.setVideoSurface(MyFullExoPlayer.this.mSurface);
                }
                MyFullExoPlayer.this.mInternalPlayer.prepare(MyFullExoPlayer.this.mMediaSource);
                MyFullExoPlayer.this.mInternalPlayer.setPlayWhenReady(false);
            }
        });
    }
}
