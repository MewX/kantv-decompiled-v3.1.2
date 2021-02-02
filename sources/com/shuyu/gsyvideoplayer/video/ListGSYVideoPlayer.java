package com.shuyu.gsyvideoplayer.video;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.shuyu.gsyvideoplayer.model.GSYVideoModel;
import com.shuyu.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import moe.codeest.enviews.ENDownloadView;

public class ListGSYVideoPlayer extends StandardGSYVideoPlayer {
    protected int mPlayPosition;
    protected List<GSYVideoModel> mUriList = new ArrayList();

    public ListGSYVideoPlayer(Context context, Boolean bool) {
        super(context, bool);
    }

    public ListGSYVideoPlayer(Context context) {
        super(context);
    }

    public ListGSYVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean setUp(List<GSYVideoModel> list, boolean z, int i) {
        return setUp(list, z, i, null, new HashMap());
    }

    public boolean setUp(List<GSYVideoModel> list, boolean z, int i, File file) {
        return setUp(list, z, i, file, new HashMap());
    }

    public boolean setUp(List<GSYVideoModel> list, boolean z, int i, File file, Map<String, String> map) {
        return setUp(list, z, i, file, map, true);
    }

    /* access modifiers changed from: protected */
    public boolean setUp(List<GSYVideoModel> list, boolean z, int i, File file, Map<String, String> map, boolean z2) {
        this.mUriList = list;
        this.mPlayPosition = i;
        this.mMapHeadData = map;
        GSYVideoModel gSYVideoModel = (GSYVideoModel) list.get(i);
        boolean up = setUp(gSYVideoModel.getUrl(), z, file, gSYVideoModel.getTitle(), z2);
        if (!TextUtils.isEmpty(gSYVideoModel.getTitle())) {
            this.mTitleTextView.setText(gSYVideoModel.getTitle());
        }
        return up;
    }

    /* access modifiers changed from: protected */
    public void cloneParams(GSYBaseVideoPlayer gSYBaseVideoPlayer, GSYBaseVideoPlayer gSYBaseVideoPlayer2) {
        super.cloneParams(gSYBaseVideoPlayer, gSYBaseVideoPlayer2);
        ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) gSYBaseVideoPlayer;
        ListGSYVideoPlayer listGSYVideoPlayer2 = (ListGSYVideoPlayer) gSYBaseVideoPlayer2;
        listGSYVideoPlayer2.mPlayPosition = listGSYVideoPlayer.mPlayPosition;
        listGSYVideoPlayer2.mUriList = listGSYVideoPlayer.mUriList;
    }

    public GSYBaseVideoPlayer startWindowFullscreen(Context context, boolean z, boolean z2) {
        GSYBaseVideoPlayer startWindowFullscreen = super.startWindowFullscreen(context, z, z2);
        if (startWindowFullscreen != null) {
            ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) startWindowFullscreen;
            GSYVideoModel gSYVideoModel = (GSYVideoModel) this.mUriList.get(this.mPlayPosition);
            if (!TextUtils.isEmpty(gSYVideoModel.getTitle())) {
                listGSYVideoPlayer.mTitleTextView.setText(gSYVideoModel.getTitle());
            }
        }
        return startWindowFullscreen;
    }

    /* access modifiers changed from: protected */
    public void resolveNormalVideoShow(View view, ViewGroup viewGroup, GSYVideoPlayer gSYVideoPlayer) {
        if (gSYVideoPlayer != null) {
            ListGSYVideoPlayer listGSYVideoPlayer = (ListGSYVideoPlayer) gSYVideoPlayer;
            GSYVideoModel gSYVideoModel = (GSYVideoModel) this.mUriList.get(this.mPlayPosition);
            if (!TextUtils.isEmpty(gSYVideoModel.getTitle())) {
                this.mTitleTextView.setText(gSYVideoModel.getTitle());
            }
        }
        super.resolveNormalVideoShow(view, viewGroup, gSYVideoPlayer);
    }

    public void onCompletion() {
        releaseNetWorkState();
        if (this.mPlayPosition >= this.mUriList.size()) {
            super.onCompletion();
        }
    }

    public void onAutoCompletion() {
        if (!playNext()) {
            super.onAutoCompletion();
        }
    }

    /* access modifiers changed from: protected */
    public void prepareVideo() {
        super.prepareVideo();
        if (this.mHadPlay && this.mPlayPosition < this.mUriList.size()) {
            setViewShowState(this.mLoadingProgressBar, 0);
            if (this.mLoadingProgressBar instanceof ENDownloadView) {
                ((ENDownloadView) this.mLoadingProgressBar).start();
            }
        }
    }

    public void onPrepared() {
        super.onPrepared();
    }

    /* access modifiers changed from: protected */
    public void changeUiToNormal() {
        super.changeUiToNormal();
        if (this.mHadPlay && this.mPlayPosition < this.mUriList.size()) {
            setViewShowState(this.mThumbImageViewLayout, 8);
            setViewShowState(this.mTopContainer, 4);
            setViewShowState(this.mBottomContainer, 4);
            setViewShowState(this.mStartButton, 8);
            setViewShowState(this.mLoadingProgressBar, 0);
            setViewShowState(this.mBottomProgressBar, 4);
            setViewShowState(this.mLockScreen, 8);
            if (this.mLoadingProgressBar instanceof ENDownloadView) {
                ((ENDownloadView) this.mLoadingProgressBar).start();
            }
        }
    }

    public boolean playNext() {
        if (this.mPlayPosition >= this.mUriList.size() - 1) {
            return false;
        }
        this.mPlayPosition++;
        GSYVideoModel gSYVideoModel = (GSYVideoModel) this.mUriList.get(this.mPlayPosition);
        this.mSaveChangeViewTIme = 0;
        setUp(this.mUriList, this.mCache, this.mPlayPosition, null, this.mMapHeadData, false);
        if (!TextUtils.isEmpty(gSYVideoModel.getTitle())) {
            this.mTitleTextView.setText(gSYVideoModel.getTitle());
        }
        startPlayLogic();
        return true;
    }
}
