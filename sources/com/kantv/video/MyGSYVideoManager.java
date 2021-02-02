package com.kantv.video;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.kantv.common.bean.AdBean;
import com.kantv.common.log.AILog;
import com.kantv.ui.activity.VideoPlayActivity;
import com.shuyu.gsyvideoplayer.GSYVideoBaseManager;
import com.shuyu.gsyvideoplayer.cache.CacheFactory;
import com.shuyu.gsyvideoplayer.cache.ICacheManager;
import com.shuyu.gsyvideoplayer.listener.GSYMediaPlayerListener;
import com.shuyu.gsyvideoplayer.player.IPlayerManager;
import com.shuyu.gsyvideoplayer.player.PlayerFactory;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import tv.danmaku.ijk.media.player.IMediaPlayer;

public class MyGSYVideoManager extends GSYVideoBaseManager {
    public static final int FULLSCREEN_ID = R.id.full_id;
    public static final int SMALL_ID = R.id.small_id;
    public static String TAG = "GSYVideoManager";
    @SuppressLint({"StaticFieldLeak"})
    private static MyGSYVideoManager videoManager;
    private List<AdBean> adBeans = new ArrayList();
    private OnCustomListener listerer;

    private MyGSYVideoManager() {
        init();
    }

    /* access modifiers changed from: protected */
    public IPlayerManager getPlayManager() {
        if (this.playerManager == null) {
            this.playerManager = PlayerFactory.getPlayManager();
        }
        return this.playerManager;
    }

    /* access modifiers changed from: protected */
    public ICacheManager getCacheManager() {
        if (this.cacheManager == null) {
            this.cacheManager = CacheFactory.getCacheManager();
        }
        return this.cacheManager;
    }

    public static synchronized MyGSYVideoManager instance() {
        MyGSYVideoManager myGSYVideoManager;
        synchronized (MyGSYVideoManager.class) {
            if (videoManager == null) {
                videoManager = new MyGSYVideoManager();
            }
            myGSYVideoManager = videoManager;
        }
        return myGSYVideoManager;
    }

    public static synchronized MyGSYVideoManager tmpInstance(GSYMediaPlayerListener gSYMediaPlayerListener) {
        MyGSYVideoManager myGSYVideoManager;
        synchronized (MyGSYVideoManager.class) {
            myGSYVideoManager = new MyGSYVideoManager();
            myGSYVideoManager.bufferPoint = videoManager.bufferPoint;
            myGSYVideoManager.optionModelList = videoManager.optionModelList;
            myGSYVideoManager.playTag = videoManager.playTag;
            myGSYVideoManager.currentVideoWidth = videoManager.currentVideoWidth;
            myGSYVideoManager.currentVideoHeight = videoManager.currentVideoHeight;
            myGSYVideoManager.context = videoManager.context;
            myGSYVideoManager.lastState = videoManager.lastState;
            myGSYVideoManager.playPosition = videoManager.playPosition;
            myGSYVideoManager.timeOut = videoManager.timeOut;
            myGSYVideoManager.needMute = videoManager.needMute;
            myGSYVideoManager.needTimeOutOther = videoManager.needTimeOutOther;
            myGSYVideoManager.setListener(gSYMediaPlayerListener);
        }
        return myGSYVideoManager;
    }

    public static synchronized void changeManager(MyGSYVideoManager myGSYVideoManager) {
        synchronized (MyGSYVideoManager.class) {
            videoManager = myGSYVideoManager;
        }
    }

    public static boolean backFromWindowFull(Context context) {
        if (((ViewGroup) CommonUtil.scanForActivity(context).findViewById(16908290)).findViewById(FULLSCREEN_ID) == null) {
            return false;
        }
        CommonUtil.hideNavKey(context);
        if (instance().lastListener() == null) {
            return true;
        }
        instance().lastListener().onBackFullscreen();
        return true;
    }

    public static void releaseAllVideos() {
        if (instance().listener() != null) {
            instance().listener().onCompletion();
        }
        instance().releaseMediaPlayer();
    }

    public static void onPause() {
        if (instance().listener() != null) {
            instance().listener().onVideoPause();
        }
    }

    public static void onResume() {
        if (instance().listener() != null) {
            instance().listener().onVideoResume();
        }
    }

    public static void onResume(boolean z) {
        if (instance().listener() != null) {
            instance().listener().onVideoResume(z);
        }
    }

    public static boolean isFullState(Activity activity) {
        View findViewById = ((ViewGroup) CommonUtil.scanForActivity(activity).findViewById(16908290)).findViewById(FULLSCREEN_ID);
        return (findViewById != null ? (GSYVideoPlayer) findViewById : null) != null;
    }

    public void onPrepared(IMediaPlayer iMediaPlayer) {
        super.onPrepared(iMediaPlayer);
    }

    public void prepare(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("prepare playerManager ");
        sb.append(this.playerManager);
        AILog.d(VideoPlayActivity.TAG, sb.toString());
        if (this.playerManager != null) {
            try {
                if (this.needTimeOutOther) {
                    startTimeOutBuffer();
                }
                setNeedMute(this.needMute);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (!TextUtils.isEmpty(str)) {
            Message message = new Message();
            message.what = 0;
            MyGSYModel myGSYModel = new MyGSYModel(str, map, z, f, z2, file, str2, this.adBeans, this.listerer);
            message.obj = myGSYModel;
            sendMessage(message);
            if (this.needTimeOutOther) {
                startTimeOutBuffer();
            }
        }
    }

    public void setAds(List<AdBean> list) {
        this.adBeans = list;
    }

    public void releaseMediaPlayer() {
        AILog.d(VideoPlayActivity.TAG, "releaseMediaPlayer");
        if (this.playerManager != null) {
            this.playerManager.release();
            this.playerManager = null;
        }
        if (this.cacheManager != null) {
            this.cacheManager.release();
            this.cacheManager = null;
        }
        this.bufferPoint = 0;
        setNeedMute(false);
        cancelTimeOutBuffer();
    }

    public void setAdListener(OnCustomListener onCustomListener) {
        this.listerer = onCustomListener;
    }
}
