package com.kantv.ui.androidupnpdemo;

public class Config {
    public static final boolean DLAN_DEBUG = true;
    public static final long REQUEST_GET_INFO_INTERVAL = 2000;
    public static String TEST_URL = "http://cdn61.ytbbs.tv/cn/tv/50089/50089-1/play.m3u8?md5=T34aJBZSj4Jok0aAMTDUdw&expires=1516630911&token=50089";
    private static Config mInstance;
    private boolean hasRelTimePosCallback;

    public static Config getInstance() {
        if (mInstance == null) {
            mInstance = new Config();
        }
        return mInstance;
    }

    public boolean getHasRelTimePosCallback() {
        return this.hasRelTimePosCallback;
    }

    public void setHasRelTimePosCallback(boolean z) {
        this.hasRelTimePosCallback = z;
    }
}
