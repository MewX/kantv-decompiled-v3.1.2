package com.shuyu.gsyvideoplayer.utils;

import android.app.Activity;
import android.provider.Settings.System;
import android.view.OrientationEventListener;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;

public class OrientationUtils {
    /* access modifiers changed from: private */
    public Activity activity;
    /* access modifiers changed from: private */
    public GSYBaseVideoPlayer gsyVideoPlayer;
    /* access modifiers changed from: private */
    public boolean mClick = false;
    /* access modifiers changed from: private */
    public boolean mClickLand = false;
    /* access modifiers changed from: private */
    public boolean mClickPort;
    private boolean mEnable = true;
    /* access modifiers changed from: private */
    public int mIsLand;
    /* access modifiers changed from: private */
    public boolean mIsPause = false;
    /* access modifiers changed from: private */
    public boolean mRotateWithSystem = true;
    private OrientationEventListener orientationEventListener;
    /* access modifiers changed from: private */
    public int screenType = 1;

    public OrientationUtils(Activity activity2, GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        this.activity = activity2;
        this.gsyVideoPlayer = gSYBaseVideoPlayer;
        init();
    }

    private void init() {
        this.orientationEventListener = new OrientationEventListener(this.activity.getApplicationContext()) {
            public void onOrientationChanged(int i) {
                if (!(System.getInt(OrientationUtils.this.activity.getContentResolver(), "accelerometer_rotation", 0) == 1) && OrientationUtils.this.mRotateWithSystem) {
                    return;
                }
                if ((OrientationUtils.this.gsyVideoPlayer == null || !OrientationUtils.this.gsyVideoPlayer.isVerticalFullByVideoSize()) && !OrientationUtils.this.mIsPause) {
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
                                    OrientationUtils.this.screenType = 0;
                                    OrientationUtils.this.activity.setRequestedOrientation(8);
                                    if (OrientationUtils.this.gsyVideoPlayer.getFullscreenButton() != null) {
                                        OrientationUtils.this.gsyVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.gsyVideoPlayer.getShrinkImageRes());
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
                            OrientationUtils.this.screenType = 0;
                            OrientationUtils.this.activity.setRequestedOrientation(0);
                            if (OrientationUtils.this.gsyVideoPlayer.getFullscreenButton() != null) {
                                OrientationUtils.this.gsyVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.gsyVideoPlayer.getShrinkImageRes());
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
                        OrientationUtils.this.screenType = 1;
                        OrientationUtils.this.activity.setRequestedOrientation(1);
                        if (OrientationUtils.this.gsyVideoPlayer.getFullscreenButton() != null) {
                            if (OrientationUtils.this.gsyVideoPlayer.isIfCurrentIsFullscreen()) {
                                OrientationUtils.this.gsyVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.gsyVideoPlayer.getShrinkImageRes());
                            } else {
                                OrientationUtils.this.gsyVideoPlayer.getFullscreenButton().setImageResource(OrientationUtils.this.gsyVideoPlayer.getEnlargeImageRes());
                            }
                        }
                        OrientationUtils.this.mIsLand = 0;
                        OrientationUtils.this.mClick = false;
                    }
                }
            }
        };
        this.orientationEventListener.enable();
    }

    public void resolveByClick() {
        if (this.mIsLand == 0) {
            GSYBaseVideoPlayer gSYBaseVideoPlayer = this.gsyVideoPlayer;
            if (gSYBaseVideoPlayer != null && gSYBaseVideoPlayer.isVerticalFullByVideoSize()) {
                return;
            }
        }
        this.mClick = true;
        if (this.mIsLand == 0) {
            this.screenType = 0;
            this.activity.setRequestedOrientation(0);
            if (this.gsyVideoPlayer.getFullscreenButton() != null) {
                this.gsyVideoPlayer.getFullscreenButton().setImageResource(this.gsyVideoPlayer.getShrinkImageRes());
            }
            this.mIsLand = 1;
            this.mClickLand = false;
        } else {
            this.screenType = 1;
            this.activity.setRequestedOrientation(1);
            if (this.gsyVideoPlayer.getFullscreenButton() != null) {
                if (this.gsyVideoPlayer.isIfCurrentIsFullscreen()) {
                    this.gsyVideoPlayer.getFullscreenButton().setImageResource(this.gsyVideoPlayer.getShrinkImageRes());
                } else {
                    this.gsyVideoPlayer.getFullscreenButton().setImageResource(this.gsyVideoPlayer.getEnlargeImageRes());
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
        this.activity.setRequestedOrientation(1);
        GSYBaseVideoPlayer gSYBaseVideoPlayer = this.gsyVideoPlayer;
        if (!(gSYBaseVideoPlayer == null || gSYBaseVideoPlayer.getFullscreenButton() == null)) {
            this.gsyVideoPlayer.getFullscreenButton().setImageResource(this.gsyVideoPlayer.getEnlargeImageRes());
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
            this.orientationEventListener.enable();
        } else {
            this.orientationEventListener.disable();
        }
    }

    public void releaseListener() {
        OrientationEventListener orientationEventListener2 = this.orientationEventListener;
        if (orientationEventListener2 != null) {
            orientationEventListener2.disable();
        }
    }

    public boolean isClick() {
        return this.mClick;
    }

    public void setClick(boolean z) {
        this.mClick = this.mClick;
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
        return this.screenType;
    }

    public void setScreenType(int i) {
        this.screenType = i;
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
