package com.shuyu.gsyvideoplayer;

import android.content.res.Configuration;
import android.view.View;
import android.view.View.OnClickListener;
import com.shuyu.gsyvideoplayer.builder.GSYVideoOptionBuilder;
import com.shuyu.gsyvideoplayer.listener.GSYSampleCallBack;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.shuyu.gsyvideoplayer.video.GSYADVideoPlayer;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;

public abstract class GSYBaseADActivityDetail<T extends GSYBaseVideoPlayer, R extends GSYADVideoPlayer> extends GSYBaseActivityDetail<T> {
    protected OrientationUtils mADOrientationUtils;

    public void clickForFullScreen() {
    }

    public abstract GSYVideoOptionBuilder getGSYADVideoOptionBuilder();

    public abstract R getGSYADVideoPlayer();

    public abstract boolean isNeedAdOnStart();

    public void initVideo() {
        super.initVideo();
        this.mADOrientationUtils = new OrientationUtils(this, getGSYADVideoPlayer());
        this.mADOrientationUtils.setEnable(false);
        if (getGSYADVideoPlayer().getFullscreenButton() != null) {
            getGSYADVideoPlayer().getFullscreenButton().setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    GSYBaseADActivityDetail.this.showADFull();
                    GSYBaseADActivityDetail.this.clickForFullScreen();
                }
            });
        }
    }

    public void initVideoBuilderMode() {
        super.initVideoBuilderMode();
        getGSYADVideoOptionBuilder().setVideoAllCallBack(new GSYSampleCallBack() {
            public void onStartPrepared(String str, Object... objArr) {
                super.onStartPrepared(str, objArr);
                GSYBaseADActivityDetail.this.mADOrientationUtils.setEnable(GSYBaseADActivityDetail.this.getDetailOrientationRotateAuto());
            }

            public void onAutoComplete(String str, Object... objArr) {
                GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getCurrentPlayer().release();
                GSYBaseADActivityDetail.this.getGSYADVideoPlayer().onVideoReset();
                GSYBaseADActivityDetail.this.getGSYADVideoPlayer().setVisibility(8);
                GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().startAfterPrepared();
                if (GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    GSYBaseADActivityDetail.this.getGSYADVideoPlayer().removeFullWindowViewOnly();
                    if (!GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                        GSYBaseADActivityDetail.this.showFull();
                        GSYBaseADActivityDetail.this.getGSYVideoPlayer().setSaveBeforeFullSystemUiVisibility(GSYBaseADActivityDetail.this.getGSYADVideoPlayer().getSaveBeforeFullSystemUiVisibility());
                    }
                }
            }

            public void onQuitFullscreen(String str, Object... objArr) {
                if (GSYBaseADActivityDetail.this.mADOrientationUtils != null) {
                    GSYBaseADActivityDetail.this.mADOrientationUtils.backToProtVideo();
                }
                if (GSYBaseADActivityDetail.this.getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
                    GSYBaseADActivityDetail.this.getGSYVideoPlayer().onBackFullscreen();
                }
            }
        }).build((StandardGSYVideoPlayer) getGSYADVideoPlayer());
    }

    public void showFull() {
        if (this.orientationUtils.getIsLand() != 1) {
            this.orientationUtils.resolveByClick();
        }
        getGSYVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    public void onBackPressed() {
        OrientationUtils orientationUtils = this.mADOrientationUtils;
        if (orientationUtils != null) {
            orientationUtils.backToProtVideo();
        }
        if (!GSYVideoADManager.backFromWindowFull(this)) {
            super.onBackPressed();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        GSYVideoADManager.onPause();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        GSYVideoADManager.onResume();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        GSYVideoADManager.releaseAllVideos();
        OrientationUtils orientationUtils = this.mADOrientationUtils;
        if (orientationUtils != null) {
            orientationUtils.releaseListener();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        boolean z = this.isPlay;
        if (!this.isPause && getGSYADVideoPlayer().getVisibility() == 0 && isADStarted()) {
            this.isPlay = false;
            getGSYADVideoPlayer().getCurrentPlayer().onConfigurationChanged(this, configuration, this.mADOrientationUtils, hideActionBarWhenFull(), hideStatusBarWhenFull());
        }
        super.onConfigurationChanged(configuration);
        this.isPlay = z;
    }

    public void onStartPrepared(String str, Object... objArr) {
        super.onStartPrepared(str, objArr);
    }

    public void onPrepared(String str, Object... objArr) {
        super.onPrepared(str, objArr);
        if (isNeedAdOnStart()) {
            startAdPlay();
        }
    }

    public void onEnterFullscreen(String str, Object... objArr) {
        super.onEnterFullscreen(str, objArr);
        objArr[1].getBackButton().setVisibility(8);
    }

    /* access modifiers changed from: protected */
    public boolean isADStarted() {
        return (getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() < 0 || getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() == 0 || getGSYADVideoPlayer().getCurrentPlayer().getCurrentState() == 6) ? false : true;
    }

    public void startAdPlay() {
        getGSYADVideoPlayer().setVisibility(0);
        getGSYADVideoPlayer().startPlayLogic();
        if (getGSYVideoPlayer().getCurrentPlayer().isIfCurrentIsFullscreen()) {
            showADFull();
            getGSYADVideoPlayer().setSaveBeforeFullSystemUiVisibility(getGSYVideoPlayer().getSaveBeforeFullSystemUiVisibility());
        }
    }

    public void showADFull() {
        if (this.mADOrientationUtils.getIsLand() != 1) {
            this.mADOrientationUtils.resolveByClick();
        }
        getGSYADVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }
}
