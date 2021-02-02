package com.shuyu.gsyvideoplayer.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import androidx.transition.TransitionManager;
import com.shuyu.gsyvideoplayer.listener.VideoAllCallBack;
import com.shuyu.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.Map;

@Deprecated
public class ListVideoUtil {
    private String TAG = "NULL";
    private boolean autoRotation = true;
    private File cachePath;
    /* access modifiers changed from: private */
    public Context context;
    private boolean fullLandFrist = true;
    /* access modifiers changed from: private */
    public ViewGroup fullViewContainer;
    /* access modifiers changed from: private */
    public StandardGSYVideoPlayer gsyVideoPlayer;
    /* access modifiers changed from: private */
    public Handler handler = new Handler();
    /* access modifiers changed from: private */
    public boolean hideActionBar;
    /* access modifiers changed from: private */
    public boolean hideKey = true;
    /* access modifiers changed from: private */
    public boolean hideStatusBar;
    /* access modifiers changed from: private */
    public boolean isFull;
    private boolean isLoop;
    private boolean isSmall;
    /* access modifiers changed from: private */
    public int[] listItemRect;
    /* access modifiers changed from: private */
    public int[] listItemSize;
    /* access modifiers changed from: private */
    public LayoutParams listParams;
    /* access modifiers changed from: private */
    public ViewGroup listParent;
    /* access modifiers changed from: private */
    public String mTitle;
    private Map<String, String> mapHeadData;
    private boolean needLockFull = true;
    protected boolean needShowWifiTip = true;
    /* access modifiers changed from: private */
    public OrientationUtils orientationUtils;
    private int playPosition = -1;
    private boolean showFullAnimation = true;
    private int speed = 1;
    /* access modifiers changed from: private */
    public int systemUiVisibility;
    /* access modifiers changed from: private */
    public String url;
    /* access modifiers changed from: private */
    public VideoAllCallBack videoAllCallBack;

    public ListVideoUtil(Context context2) {
        this.gsyVideoPlayer = new StandardGSYVideoPlayer(context2);
        this.context = context2;
    }

    public void addVideoPlayer(int i, View view, String str, ViewGroup viewGroup, View view2) {
        viewGroup.removeAllViews();
        if (!isCurrentViewPlaying(i, str)) {
            view2.setVisibility(0);
            viewGroup.removeAllViews();
            viewGroup.addView(view);
        } else if (!this.isFull) {
            ViewGroup viewGroup2 = (ViewGroup) this.gsyVideoPlayer.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            viewGroup.addView(this.gsyVideoPlayer);
            view2.setVisibility(4);
        }
    }

    public void setPlayPositionAndTag(int i, String str) {
        this.playPosition = i;
        this.TAG = str;
    }

    public void startPlay(String str) {
        if (isSmall()) {
            smallVideoToNormal();
        }
        this.url = str;
        this.gsyVideoPlayer.release();
        this.gsyVideoPlayer.setLooping(this.isLoop);
        this.gsyVideoPlayer.setSpeed((float) this.speed);
        this.gsyVideoPlayer.setNeedShowWifiTip(this.needShowWifiTip);
        this.gsyVideoPlayer.setNeedLockFull(this.needLockFull);
        this.gsyVideoPlayer.setUp(str, true, this.cachePath, (Map) this.mapHeadData, this.mTitle);
        if (!TextUtils.isEmpty(this.mTitle)) {
            this.gsyVideoPlayer.getTitleTextView().setText(this.mTitle);
        }
        this.gsyVideoPlayer.getTitleTextView().setVisibility(8);
        this.gsyVideoPlayer.getBackButton().setVisibility(8);
        this.gsyVideoPlayer.getFullscreenButton().setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ListVideoUtil.this.resolveFullBtn();
            }
        });
        this.gsyVideoPlayer.startPlayLogic();
    }

    public void resolveFullBtn() {
        if (this.fullViewContainer != null) {
            if (!this.isFull) {
                resolveToFull();
            } else {
                resolveMaterialToNormal(this.gsyVideoPlayer);
            }
        }
    }

    private void resolveToFull() {
        this.systemUiVisibility = ((Activity) this.context).getWindow().getDecorView().getSystemUiVisibility();
        CommonUtil.hideSupportActionBar(this.context, this.hideActionBar, this.hideStatusBar);
        if (this.hideKey) {
            CommonUtil.hideNavKey(this.context);
        }
        this.isFull = true;
        ViewGroup viewGroup = (ViewGroup) this.gsyVideoPlayer.getParent();
        this.listParams = this.gsyVideoPlayer.getLayoutParams();
        if (viewGroup != null) {
            this.listParent = viewGroup;
            viewGroup.removeView(this.gsyVideoPlayer);
        }
        this.gsyVideoPlayer.setIfCurrentIsFullscreen(true);
        this.gsyVideoPlayer.getFullscreenButton().setImageResource(this.gsyVideoPlayer.getShrinkImageRes());
        this.gsyVideoPlayer.getBackButton().setVisibility(0);
        this.orientationUtils = new OrientationUtils((Activity) this.context, this.gsyVideoPlayer);
        this.orientationUtils.setEnable(isAutoRotation());
        this.gsyVideoPlayer.getBackButton().setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ListVideoUtil listVideoUtil = ListVideoUtil.this;
                listVideoUtil.resolveMaterialToNormal(listVideoUtil.gsyVideoPlayer);
            }
        });
        if (!this.showFullAnimation) {
            resolveFullAdd();
        } else if (this.fullViewContainer instanceof FrameLayout) {
            resolveMaterialAnimation();
        } else {
            resolveFullAdd();
        }
    }

    private void resolveFullAdd() {
        this.fullViewContainer.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.fullViewContainer.addView(this.gsyVideoPlayer);
        resolveChangeFirstLogic(50);
    }

    private void resolveMaterialAnimation() {
        this.listItemRect = new int[2];
        this.listItemSize = new int[2];
        saveLocationStatus(this.context, this.hideStatusBar, this.hideActionBar);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FrameLayout frameLayout = new FrameLayout(this.context);
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        int[] iArr = this.listItemSize;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iArr[0], iArr[1]);
        int[] iArr2 = this.listItemRect;
        layoutParams2.setMargins(iArr2[0], iArr2[1], 0, 0);
        frameLayout.addView(this.gsyVideoPlayer, layoutParams2);
        this.fullViewContainer.addView(frameLayout, layoutParams);
        this.handler.postDelayed(new Runnable() {
            public void run() {
                TransitionManager.beginDelayedTransition(ListVideoUtil.this.fullViewContainer);
                ListVideoUtil listVideoUtil = ListVideoUtil.this;
                listVideoUtil.resolveMaterialFullVideoShow(listVideoUtil.gsyVideoPlayer);
                ListVideoUtil.this.resolveChangeFirstLogic(600);
            }
        }, 300);
    }

    /* access modifiers changed from: private */
    public void resolveMaterialFullVideoShow(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
    }

    /* access modifiers changed from: private */
    public void resolveToNormal() {
        this.handler.postDelayed(new Runnable() {
            public void run() {
                ListVideoUtil.this.isFull = false;
                ListVideoUtil.this.fullViewContainer.removeAllViews();
                if (ListVideoUtil.this.gsyVideoPlayer.getParent() != null) {
                    ((ViewGroup) ListVideoUtil.this.gsyVideoPlayer.getParent()).removeView(ListVideoUtil.this.gsyVideoPlayer);
                }
                ListVideoUtil.this.orientationUtils.setEnable(false);
                ListVideoUtil.this.gsyVideoPlayer.setIfCurrentIsFullscreen(false);
                ListVideoUtil.this.fullViewContainer.setBackgroundColor(0);
                ListVideoUtil.this.listParent.addView(ListVideoUtil.this.gsyVideoPlayer, ListVideoUtil.this.listParams);
                ListVideoUtil.this.gsyVideoPlayer.getFullscreenButton().setImageResource(ListVideoUtil.this.gsyVideoPlayer.getEnlargeImageRes());
                ListVideoUtil.this.gsyVideoPlayer.getBackButton().setVisibility(8);
                ListVideoUtil.this.gsyVideoPlayer.setIfCurrentIsFullscreen(false);
                if (ListVideoUtil.this.videoAllCallBack != null) {
                    Debuger.printfLog("onQuitFullscreen");
                    ListVideoUtil.this.videoAllCallBack.onQuitFullscreen(ListVideoUtil.this.url, ListVideoUtil.this.mTitle, ListVideoUtil.this.gsyVideoPlayer);
                }
                if (ListVideoUtil.this.hideKey) {
                    CommonUtil.showNavKey(ListVideoUtil.this.context, ListVideoUtil.this.systemUiVisibility);
                }
                CommonUtil.showSupportActionBar(ListVideoUtil.this.context, ListVideoUtil.this.hideActionBar, ListVideoUtil.this.hideStatusBar);
            }
        }, (long) this.orientationUtils.backToProtVideo());
    }

    /* access modifiers changed from: private */
    public void resolveMaterialToNormal(final GSYVideoPlayer gSYVideoPlayer) {
        if (!this.showFullAnimation || !(this.fullViewContainer instanceof FrameLayout)) {
            resolveToNormal();
            return;
        }
        this.handler.postDelayed(new Runnable() {
            public void run() {
                TransitionManager.beginDelayedTransition(ListVideoUtil.this.fullViewContainer);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYVideoPlayer.getLayoutParams();
                layoutParams.setMargins(ListVideoUtil.this.listItemRect[0], ListVideoUtil.this.listItemRect[1], 0, 0);
                layoutParams.width = ListVideoUtil.this.listItemSize[0];
                layoutParams.height = ListVideoUtil.this.listItemSize[1];
                layoutParams.gravity = 0;
                gSYVideoPlayer.setLayoutParams(layoutParams);
                ListVideoUtil.this.handler.postDelayed(new Runnable() {
                    public void run() {
                        ListVideoUtil.this.resolveToNormal();
                    }
                }, 400);
            }
        }, (long) this.orientationUtils.backToProtVideo());
    }

    /* access modifiers changed from: private */
    public void resolveChangeFirstLogic(int i) {
        if (isFullLandFrist()) {
            this.handler.postDelayed(new Runnable() {
                public void run() {
                    if (ListVideoUtil.this.orientationUtils.getIsLand() != 1) {
                        ListVideoUtil.this.orientationUtils.resolveByClick();
                    }
                }
            }, (long) i);
        }
        this.gsyVideoPlayer.setIfCurrentIsFullscreen(true);
        if (this.videoAllCallBack != null) {
            Debuger.printfLog("onEnterFullscreen");
            this.videoAllCallBack.onEnterFullscreen(this.url, this.mTitle, this.gsyVideoPlayer);
        }
    }

    private void saveLocationStatus(Context context2, boolean z, boolean z2) {
        this.listParent.getLocationOnScreen(this.listItemRect);
        int statusBarHeight = CommonUtil.getStatusBarHeight(context2);
        int actionBarHeight = CommonUtil.getActionBarHeight((Activity) context2);
        if (z) {
            int[] iArr = this.listItemRect;
            iArr[1] = iArr[1] - statusBarHeight;
        }
        if (z2) {
            int[] iArr2 = this.listItemRect;
            iArr2[1] = iArr2[1] - actionBarHeight;
        }
        this.listItemSize[0] = this.listParent.getWidth();
        this.listItemSize[1] = this.listParent.getHeight();
    }

    private boolean isPlayView(int i, String str) {
        return this.playPosition == i && this.TAG.equals(str);
    }

    private boolean isCurrentViewPlaying(int i, String str) {
        return isPlayView(i, str);
    }

    public boolean backFromFull() {
        if (this.fullViewContainer.getChildCount() <= 0) {
            return false;
        }
        resolveMaterialToNormal(this.gsyVideoPlayer);
        return true;
    }

    public void releaseVideoPlayer() {
        ViewGroup viewGroup = (ViewGroup) this.gsyVideoPlayer.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        this.playPosition = -1;
        this.TAG = "NULL";
        OrientationUtils orientationUtils2 = this.orientationUtils;
        if (orientationUtils2 != null) {
            orientationUtils2.releaseListener();
        }
    }

    public void showSmallVideo(Point point, boolean z, boolean z2) {
        if (this.gsyVideoPlayer.getCurrentState() == 2) {
            this.gsyVideoPlayer.showSmallVideo(point, z, z2);
            this.isSmall = true;
        }
    }

    public void smallVideoToNormal() {
        this.isSmall = false;
        this.gsyVideoPlayer.hideSmallVideo();
    }

    public void setFullViewContainer(ViewGroup viewGroup) {
        this.fullViewContainer = viewGroup;
    }

    public boolean isFull() {
        return this.isFull;
    }

    public void setAutoRotation(boolean z) {
        this.autoRotation = z;
    }

    public boolean isAutoRotation() {
        return this.autoRotation;
    }

    public void setFullLandFrist(boolean z) {
        this.fullLandFrist = z;
    }

    public boolean isFullLandFrist() {
        return this.fullLandFrist;
    }

    public void setShowFullAnimation(boolean z) {
        this.showFullAnimation = z;
    }

    public boolean isShowFullAnimation() {
        return this.showFullAnimation;
    }

    public boolean isHideStatusBar() {
        return this.hideStatusBar;
    }

    public void setHideStatusBar(boolean z) {
        this.hideStatusBar = z;
    }

    public boolean isHideActionBar() {
        return this.hideActionBar;
    }

    public void setHideActionBar(boolean z) {
        this.hideActionBar = z;
    }

    public void setVideoAllCallBack(VideoAllCallBack videoAllCallBack2) {
        this.videoAllCallBack = videoAllCallBack2;
        this.gsyVideoPlayer.setVideoAllCallBack(videoAllCallBack2);
    }

    public int getPlayPosition() {
        return this.playPosition;
    }

    public String getPlayTAG() {
        return this.TAG;
    }

    public boolean isSmall() {
        return this.isSmall;
    }

    public boolean isLoop() {
        return this.isLoop;
    }

    public void setLoop(boolean z) {
        this.isLoop = z;
    }

    public int getDuration() {
        return this.gsyVideoPlayer.getDuration();
    }

    public int getSpeed() {
        return this.speed;
    }

    public void setSpeed(int i) {
        this.speed = i;
    }

    public File getCachePath() {
        return this.cachePath;
    }

    public void setCachePath(File file) {
        this.cachePath = file;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public Map<String, String> getMapHeadData() {
        return this.mapHeadData;
    }

    public void setMapHeadData(Map<String, String> map) {
        this.mapHeadData = map;
    }

    public int getCurrentPositionWhenPlaying() {
        return this.gsyVideoPlayer.getCurrentPositionWhenPlaying();
    }

    public StandardGSYVideoPlayer getGsyVideoPlayer() {
        return this.gsyVideoPlayer;
    }

    public boolean isHideKey() {
        return this.hideKey;
    }

    public void setHideKey(boolean z) {
        this.hideKey = z;
    }

    public boolean isNeedLockFull() {
        return this.needLockFull;
    }

    public void setNeedLockFull(boolean z) {
        this.needLockFull = z;
    }

    public boolean isNeedShowWifiTip() {
        return this.needShowWifiTip;
    }

    public void setNeedShowWifiTip(boolean z) {
        this.needShowWifiTip = z;
    }
}
