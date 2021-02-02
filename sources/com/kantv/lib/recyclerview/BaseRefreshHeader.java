package com.kantv.lib.recyclerview;

interface BaseRefreshHeader {
    public static final int STATE_DONE = 3;
    public static final int STATE_NORMAL = 0;
    public static final int STATE_REFRESHING = 2;
    public static final int STATE_RELEASE_TO_REFRESH = 1;

    int getVisiableHeight();

    void onMove(float f);

    void refreshComplate();

    boolean releaseAction();
}
