package com.shuyu.gsyvideoplayer.video.base;

import android.content.Context;
import android.util.AttributeSet;
import com.shuyu.gsyvideoplayer.GSYVideoManager;

public abstract class GSYVideoPlayer extends GSYBaseVideoPlayer {
    public GSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public GSYVideoPlayer(Context context) {
        super(context);
    }

    public GSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GSYVideoPlayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public GSYVideoViewBridge getGSYVideoManager() {
        GSYVideoManager.instance().initContext(getContext().getApplicationContext());
        return GSYVideoManager.instance();
    }

    /* access modifiers changed from: protected */
    public boolean backFromFull(Context context) {
        return GSYVideoManager.backFromWindowFull(context);
    }

    /* access modifiers changed from: protected */
    public void releaseVideos() {
        GSYVideoManager.releaseAllVideos();
    }

    /* access modifiers changed from: protected */
    public int getFullId() {
        return GSYVideoManager.FULLSCREEN_ID;
    }

    /* access modifiers changed from: protected */
    public int getSmallId() {
        return GSYVideoManager.SMALL_ID;
    }
}
