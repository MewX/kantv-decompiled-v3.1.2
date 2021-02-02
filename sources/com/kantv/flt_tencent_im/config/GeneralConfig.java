package com.kantv.flt_tencent_im.config;

public class GeneralConfig {
    public static final int DEFAULT_AUDIO_RECORD_MAX_TIME = 60;
    public static final int DEFAULT_VIDEO_RECORD_MAX_TIME = 15;
    private static final String TAG = "GeneralConfig";
    private String appCacheDir;
    private int audioRecordMaxTime = 60;
    private boolean enableLogPrint = true;
    private int logLevel = 3;
    private boolean showRead = false;
    private int videoRecordMaxTime = 15;

    public boolean isLogPrint() {
        return this.enableLogPrint;
    }

    public void enableLogPrint(boolean z) {
        this.enableLogPrint = z;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    public void setLogLevel(int i) {
        this.logLevel = i;
    }

    public String getAppCacheDir() {
        return this.appCacheDir;
    }

    public GeneralConfig setAppCacheDir(String str) {
        this.appCacheDir = str;
        return this;
    }

    public int getAudioRecordMaxTime() {
        return this.audioRecordMaxTime;
    }

    public GeneralConfig setAudioRecordMaxTime(int i) {
        this.audioRecordMaxTime = i;
        return this;
    }

    public int getVideoRecordMaxTime() {
        return this.videoRecordMaxTime;
    }

    public GeneralConfig setVideoRecordMaxTime(int i) {
        this.videoRecordMaxTime = i;
        return this;
    }

    public boolean isShowRead() {
        return this.showRead;
    }

    public void setShowRead(boolean z) {
        this.showRead = z;
    }
}
