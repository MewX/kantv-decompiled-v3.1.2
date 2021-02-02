package com.kantv.kt_player.ExoPlayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.kantv.kt_player.ExoPlayer.base.GSYBaseVideoPlayer;
import com.kantv.kt_player.ExoPlayer.listener.GSYMediaPlayerListener;
import com.kantv.kt_player.ExoPlayer.utils.CommonUtil;

public class GSYVideoManager extends GSYVideoBaseManager {
    public static final int FULLSCREEN_ID = 1;
    public static final int SMALL_ID = 0;
    public static String TAG = "GSYVideoManager";
    @SuppressLint({"StaticFieldLeak"})
    private static GSYVideoManager videoManager;

    private GSYVideoManager() {
        init();
    }

    public static synchronized GSYVideoManager instance() {
        GSYVideoManager gSYVideoManager;
        synchronized (GSYVideoManager.class) {
            if (videoManager == null) {
                videoManager = new GSYVideoManager();
            }
            gSYVideoManager = videoManager;
        }
        return gSYVideoManager;
    }

    public static synchronized GSYVideoManager tmpInstance(GSYMediaPlayerListener gSYMediaPlayerListener) {
        GSYVideoManager gSYVideoManager;
        synchronized (GSYVideoManager.class) {
            gSYVideoManager = new GSYVideoManager();
            gSYVideoManager.bufferPoint = videoManager.bufferPoint;
            gSYVideoManager.optionModelList = videoManager.optionModelList;
            gSYVideoManager.playTag = videoManager.playTag;
            gSYVideoManager.currentVideoWidth = videoManager.currentVideoWidth;
            gSYVideoManager.currentVideoHeight = videoManager.currentVideoHeight;
            gSYVideoManager.context = videoManager.context;
            gSYVideoManager.lastState = videoManager.lastState;
            gSYVideoManager.playPosition = videoManager.playPosition;
            gSYVideoManager.timeOut = videoManager.timeOut;
            gSYVideoManager.needMute = videoManager.needMute;
            gSYVideoManager.needTimeOutOther = videoManager.needTimeOutOther;
            gSYVideoManager.setListener(gSYMediaPlayerListener);
        }
        return gSYVideoManager;
    }

    public static synchronized void changeManager(GSYVideoManager gSYVideoManager) {
        synchronized (GSYVideoManager.class) {
            videoManager = gSYVideoManager;
        }
    }

    public static boolean backFromWindowFull(Context context) {
        if (((ViewGroup) CommonUtil.scanForActivity(context).findViewById(16908290)).findViewById(1) == null) {
            return false;
        }
        CommonUtil.hideNavKey(context);
        if (instance().listener() == null) {
            return true;
        }
        instance().listener().onBackFullscreen();
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
        View findViewById = ((ViewGroup) CommonUtil.scanForActivity(activity).findViewById(16908290)).findViewById(1);
        if ((findViewById != null ? (GSYBaseVideoPlayer) findViewById : null) != null) {
            return true;
        }
        return false;
    }
}
