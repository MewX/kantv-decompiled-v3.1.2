package com.kantv.kt_player.ExoPlayer.utils;

import android.app.Activity;
import android.provider.Settings.System;
import android.view.OrientationEventListener;
import com.kantv.kt_player.ExoPlayer.base.GSYBaseVideoPlayer;

public class OrientationUtils {
    private static final int LAND_TYPE_NORMAL = 1;
    private static final int LAND_TYPE_NULL = 0;
    private static final int LAND_TYPE_REVERSE = 2;
    /* access modifiers changed from: private */
    public final Activity mActivity;
    /* access modifiers changed from: private */
    public boolean mClick = false;
    /* access modifiers changed from: private */
    public boolean mClickLand = false;
    /* access modifiers changed from: private */
    public boolean mClickPort;
    private boolean mEnable = true;
    /* access modifiers changed from: private */
    public int mIsLand = 0;
    /* access modifiers changed from: private */
    public boolean mIsPause = false;
    private OrientationEventListener mOrientationEventListener;
    /* access modifiers changed from: private */
    public boolean mRotateWithSystem = true;
    /* access modifiers changed from: private */
    public int mScreenType = 1;
    /* access modifiers changed from: private */
    public GSYBaseVideoPlayer mVideoPlayer;

    public OrientationUtils(Activity activity, GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        this.mVideoPlayer = gSYBaseVideoPlayer;
        this.mActivity = activity;
        init();
    }

    private void init() {
        this.mOrientationEventListener = new OrientationEventListener(this.mActivity.getApplicationContext()) {
            public void onOrientationChanged(int i) {
                if (!(System.getInt(OrientationUtils.this.mActivity.getContentResolver(), "accelerometer_rotation", 0) == 1) && OrientationUtils.this.mRotateWithSystem) {
                    return;
                }
                if ((OrientationUtils.this.mVideoPlayer == null || !OrientationUtils.this.mVideoPlayer.isVerticalFullByVideoSize()) && !OrientationUtils.this.mIsPause) {
                    if ((i < 0 || i > 30) && i < 330) {
                        if (i < 230 || i > 310) {
                            if (i > 30 && i < 95) {
                                if (OrientationUtils.this.mClick) {
                                    if (OrientationUtils.this.mIsLand == 2 || OrientationUtils.this.mClickPort) {
                                        OrientationUtils.this.mClickLand = true;
                                        OrientationUtils.this.mClick = false;
                                        OrientationUtils.this.mIsLand = 2;
                                    }
                                } else if (OrientationUtils.this.mIsLand != 2) {
                                    OrientationUtils.this.mScreenType = 0;
                                    OrientationUtils.this.mActivity.setRequestedOrientation(8);
                                    if (OrientationUtils.this.mVideoPlayer.getFullscreenButton() != null) {
                                        OrientationUtils.this.mVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.mVideoPlayer.getShrinkImageRes());
                                    }
                                    OrientationUtils.this.mIsLand = 2;
                                    OrientationUtils.this.mClick = false;
                                }
                            }
                        } else if (OrientationUtils.this.mClick) {
                            if (OrientationUtils.this.mIsLand == 1 || OrientationUtils.this.mClickPort) {
                                OrientationUtils.this.mClickLand = true;
                                OrientationUtils.this.mClick = false;
                                OrientationUtils.this.mIsLand = 1;
                            }
                        } else if (OrientationUtils.this.mIsLand != 1) {
                            OrientationUtils.this.mScreenType = 0;
                            OrientationUtils.this.mActivity.setRequestedOrientation(0);
                            if (OrientationUtils.this.mVideoPlayer.getFullscreenButton() != null) {
                                OrientationUtils.this.mVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.mVideoPlayer.getShrinkImageRes());
                            }
                            OrientationUtils.this.mIsLand = 1;
                            OrientationUtils.this.mClick = false;
                        }
                    } else if (OrientationUtils.this.mClick) {
                        if (OrientationUtils.this.mIsLand <= 0 || OrientationUtils.this.mClickLand) {
                            OrientationUtils.this.mClickPort = true;
                            OrientationUtils.this.mClick = false;
                            OrientationUtils.this.mIsLand = 0;
                        }
                    } else if (OrientationUtils.this.mIsLand > 0) {
                        OrientationUtils.this.mScreenType = 1;
                        OrientationUtils.this.mActivity.setRequestedOrientation(1);
                        if (OrientationUtils.this.mVideoPlayer.getFullscreenButton() != null) {
                            if (OrientationUtils.this.mVideoPlayer.isIfCurrentIsFullscreen()) {
                                OrientationUtils.this.mVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.mVideoPlayer.getShrinkImageRes());
                            } else {
                                OrientationUtils.this.mVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.mVideoPlayer.getEnlargeImageRes());
                            }
                        }
                        OrientationUtils.this.mIsLand = 0;
                        OrientationUtils.this.mClick = false;
                    }
                }
            }
        };
        this.mOrientationEventListener.enable();
    }

    public void resolveByClick() {
        if (this.mIsLand == 0) {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = this.mVideoPlayer;
            if (gSYBaseVideoPlayer != null && gSYBaseVideoPlayer.isVerticalFullByVideoSize()) {
                return;
            }
        }
        this.mClick = true;
        if (this.mIsLand == 0) {
            this.mScreenType = 0;
            this.mActivity.setRequestedOrientation(0);
            if (this.mVideoPlayer.getFullscreenButton() != null) {
                this.mVideoPlayer.getFullscreenButton().setImageResource(this.mVideoPlayer.getShrinkImageRes());
            }
            this.mIsLand = 1;
            this.mClickLand = false;
        } else {
            this.mScreenType = 1;
            this.mActivity.setRequestedOrientation(1);
            if (this.mVideoPlayer.getFullscreenButton() != null) {
                if (this.mVideoPlayer.isIfCurrentIsFullscreen()) {
                    this.mVideoPlayer.getFullscreenButton().setImageResource(this.mVideoPlayer.getShrinkImageRes());
                } else {
                    this.mVideoPlayer.getFullscreenButton().setImageResource(this.mVideoPlayer.getEnlargeImageRes());
                }
            }
            this.mIsLand = 0;
            this.mClickPort = false;
        }
    }

    public int backToProtVideo() {
        if (this.mIsLand <= 0) {
            return 0;
        }
        this.mClick = true;
        this.mActivity.setRequestedOrientation(1);
        GSYBaseVideoPlayer gSYBaseVideoPlayer = this.mVideoPlayer;
        if (!(gSYBaseVideoPlayer == null || gSYBaseVideoPlayer.getFullscreenButton() == null)) {
            this.mVideoPlayer.getFullscreenButton().setImageResource(this.mVideoPlayer.getEnlargeImageRes());
        }
        this.mIsLand = 0;
        this.mClickPort = false;
        return 500;
    }

    public boolean isEnable() {
        return this.mEnable;
    }

    public void setEnable(boolean z) {
        this.mEnable = z;
        if (this.mEnable) {
            this.mOrientationEventListener.enable();
        } else {
            this.mOrientationEventListener.disable();
        }
    }

    public void releaseListener() {
        OrientationEventListener orientationEventListener = this.mOrientationEventListener;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
    }

    public boolean isClick() {
        return this.mClick;
    }

    public void setClick(boolean z) {
        this.mClick = z;
    }

    public boolean isClickLand() {
        return this.mClickLand;
    }

    public void setClickLand(boolean z) {
        this.mClickLand = z;
    }

    public int getIsLand() {
        return this.mIsLand;
    }

    public void setIsLand(int i) {
        this.mIsLand = i;
    }

    public boolean isClickPort() {
        return this.mClickPort;
    }

    public void setClickPort(boolean z) {
        this.mClickPort = z;
    }

    public int getScreenType() {
        return this.mScreenType;
    }

    public void setScreenType(int i) {
        this.mScreenType = i;
    }

    public boolean isRotateWithSystem() {
        return this.mRotateWithSystem;
    }

    public void setRotateWithSystem(boolean z) {
        this.mRotateWithSystem = z;
    }

    public boolean isPause() {
        return this.mIsPause;
    }

    public void setIsPause(boolean z) {
        this.mIsPause = z;
    }
}
