package com.shuyu.gsyvideoplayer;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import androidx.appcompat.app.AppCompatActivity;
import com.shuyu.gsyvideoplayer.builder.GSYVideoOptionBuilder;
import com.shuyu.gsyvideoplayer.listener.VideoAllCallBack;
import com.shuyu.gsyvideoplayer.utils.OrientationUtils;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;

public abstract class GSYBaseActivityDetail<T extends GSYBaseVideoPlayer> extends AppCompatActivity implements VideoAllCallBack {
    protected boolean isPause;
    protected boolean isPlay;
    protected OrientationUtils orientationUtils;

    public abstract void clickForFullScreen();

    public abstract boolean getDetailOrientationRotateAuto();

    public abstract GSYVideoOptionBuilder getGSYVideoOptionBuilder();

    public abstract T getGSYVideoPlayer();

    public boolean hideActionBarWhenFull() {
        return true;
    }

    public boolean hideStatusBarWhenFull() {
        return true;
    }

    public boolean isAutoFullWithSize() {
        return false;
    }

    public void onAutoComplete(String str, Object... objArr) {
    }

    public void onClickBlank(String str, Object... objArr) {
    }

    public void onClickBlankFullscreen(String str, Object... objArr) {
    }

    public void onClickResume(String str, Object... objArr) {
    }

    public void onClickResumeFullscreen(String str, Object... objArr) {
    }

    public void onClickSeekbar(String str, Object... objArr) {
    }

    public void onClickSeekbarFullscreen(String str, Object... objArr) {
    }

    public void onClickStartError(String str, Object... objArr) {
    }

    public void onClickStartIcon(String str, Object... objArr) {
    }

    public void onClickStartThumb(String str, Object... objArr) {
    }

    public void onClickStop(String str, Object... objArr) {
    }

    public void onClickStopFullscreen(String str, Object... objArr) {
    }

    public void onEnterFullscreen(String str, Object... objArr) {
    }

    public void onEnterSmallWidget(String str, Object... objArr) {
    }

    public void onPlayError(String str, Object... objArr) {
    }

    public void onQuitSmallWidget(String str, Object... objArr) {
    }

    public void onStartPrepared(String str, Object... objArr) {
    }

    public void onTouchScreenSeekLight(String str, Object... objArr) {
    }

    public void onTouchScreenSeekPosition(String str, Object... objArr) {
    }

    public void onTouchScreenSeekVolume(String str, Object... objArr) {
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void initVideo() {
        this.orientationUtils = new OrientationUtils(this, getGSYVideoPlayer());
        this.orientationUtils.setEnable(false);
        if (getGSYVideoPlayer().getFullscreenButton() != null) {
            getGSYVideoPlayer().getFullscreenButton().setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    GSYBaseActivityDetail.this.showFull();
                    GSYBaseActivityDetail.this.clickForFullScreen();
                }
            });
        }
    }

    public void initVideoBuilderMode() {
        initVideo();
        getGSYVideoOptionBuilder().setVideoAllCallBack(this).build(getGSYVideoPlayer());
    }

    public void showFull() {
        if (this.orientationUtils.getIsLand() != 1) {
            this.orientationUtils.resolveByClick();
        }
        getGSYVideoPlayer().startWindowFullscreen(this, hideActionBarWhenFull(), hideStatusBarWhenFull());
    }

    public void onBackPressed() {
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.backToProtVideo();
        }
        if (!GSYVideoManager.backFromWindowFull(this)) {
            super.onBackPressed();
        }
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        getGSYVideoPlayer().getCurrentPlayer().onVideoPause();
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.setIsPause(true);
        }
        this.isPause = true;
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        getGSYVideoPlayer().getCurrentPlayer().onVideoResume();
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.setIsPause(false);
        }
        this.isPause = false;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        if (this.isPlay) {
            getGSYVideoPlayer().getCurrentPlayer().release();
        }
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.releaseListener();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.isPlay && !this.isPause) {
            getGSYVideoPlayer().onConfigurationChanged(this, configuration, this.orientationUtils, hideActionBarWhenFull(), hideStatusBarWhenFull());
        }
    }

    public void onPrepared(String str, Object... objArr) {
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.setEnable(getDetailOrientationRotateAuto() && !isAutoFullWithSize());
            this.isPlay = true;
            return;
        }
        throw new NullPointerException("initVideo() or initVideoBuilderMode() first");
    }

    public void onQuitFullscreen(String str, Object... objArr) {
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.backToProtVideo();
        }
    }
}
