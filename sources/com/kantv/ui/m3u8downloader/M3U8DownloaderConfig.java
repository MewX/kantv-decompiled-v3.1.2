package com.kantv.ui.m3u8downloader;

import android.content.Context;
import com.kantv.common.log.AILog;
import com.kantv.ui.download.SettingsManager;
import com.kantv.ui.m3u8downloader.utils.SPHelper;
import javax.jmdns.impl.constants.DNSConstants;

public class M3U8DownloaderConfig {
    private static final String TAG_CONN_TIMEOUT = "TAG_CONN_TIMEOUT_M3U8";
    private static final String TAG_DEBUG = "TAG_DEBUG_M3U8";
    private static final String TAG_READ_TIMEOUT = "TAG_READ_TIMEOUT_M3U8";
    private static final String TAG_SAVE_DIR = "TAG_SAVE_DIR_M3U8";
    private static final String TAG_THREAD_COUNT = "TAG_THREAD_COUNT_M3U8";

    public static M3U8DownloaderConfig build(Context context) {
        SPHelper.init(context);
        return new M3U8DownloaderConfig();
    }

    public M3U8DownloaderConfig setSaveDir(String str) {
        SPHelper.putString(TAG_SAVE_DIR, str);
        return this;
    }

    public static String getSaveDir() {
        StringBuilder sb = new StringBuilder();
        String str = "path";
        sb.append(str);
        sb.append(SPHelper.getString(TAG_SAVE_DIR, SettingsManager.DIRPATH));
        AILog.d("getSaveDir", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(SettingsManager.DIRPATH);
        AILog.d("getSaveDir222", sb2.toString());
        return SettingsManager.DIRPATH;
    }

    public M3U8DownloaderConfig setThreadCount(int i) {
        if (i > 5) {
            i = 5;
        }
        if (i <= 0) {
            i = 1;
        }
        SPHelper.putInt(TAG_THREAD_COUNT, i);
        return this;
    }

    public static int getThreadCount() {
        return SPHelper.getInt(TAG_THREAD_COUNT, 3);
    }

    public M3U8DownloaderConfig setConnTimeout(int i) {
        SPHelper.putInt(TAG_CONN_TIMEOUT, i);
        return this;
    }

    public static int getConnTimeout() {
        AILog.d("getConnTimeout", "ddd");
        return SPHelper.getInt(TAG_CONN_TIMEOUT, 10000);
    }

    public M3U8DownloaderConfig setReadTimeout(int i) {
        SPHelper.putInt(TAG_READ_TIMEOUT, i);
        return this;
    }

    public static int getReadTimeout() {
        return SPHelper.getInt(TAG_READ_TIMEOUT, DNSConstants.ANNOUNCED_RENEWAL_TTL_INTERVAL);
    }

    public M3U8DownloaderConfig setDebugMode(boolean z) {
        SPHelper.putBoolean(TAG_DEBUG, z);
        return this;
    }

    public static boolean isDebugMode() {
        return SPHelper.getBoolean(TAG_DEBUG, false);
    }
}
