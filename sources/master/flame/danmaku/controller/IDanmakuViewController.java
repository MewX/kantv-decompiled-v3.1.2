package master.flame.danmaku.controller;

import android.content.Context;

public interface IDanmakuViewController {
    void clear();

    long drawDanmakus();

    Context getContext();

    int getViewHeight();

    int getViewWidth();

    boolean isDanmakuDrawingCacheEnabled();

    boolean isHardwareAccelerated();

    boolean isViewReady();
}
