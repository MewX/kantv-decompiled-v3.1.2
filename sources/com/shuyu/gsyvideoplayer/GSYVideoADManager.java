package com.shuyu.gsyvideoplayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.shuyu.gsyvideoplayer.utils.CommonUtil;
import com.shuyu.gsyvideoplayer.video.base.GSYVideoPlayer;

public class GSYVideoADManager extends GSYVideoBaseManager {
    public static final int FULLSCREEN_ID = R.id.ad_full_id;
    public static final int SMALL_ID = R.id.ad_small_id;
    public static String TAG = "GSYVideoADManager";
    @SuppressLint({"StaticFieldLeak"})
    private static GSYVideoADManager videoManager;

    private GSYVideoADManager() {
        init();
    }

    public static synchronized GSYVideoADManager instance() {
        GSYVideoADManager gSYVideoADManager;
        synchronized (GSYVideoADManager.class) {
            if (videoManager == null) {
                videoManager = new GSYVideoADManager();
            }
            gSYVideoADManager = videoManager;
        }
        return gSYVideoADManager;
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
        if (GSYVideoManager.instance().listener() != null) {
            GSYVideoManager.instance().listener().onVideoResume(z);
        }
    }

    public static boolean isFullState(Activity activity) {
        View findViewById = ((ViewGroup) CommonUtil.scanForActivity(activity).findViewById(16908290)).findViewById(FULLSCREEN_ID);
        return (findViewById != null ? (GSYVideoPlayer) findViewById : null) != null;
    }
}
