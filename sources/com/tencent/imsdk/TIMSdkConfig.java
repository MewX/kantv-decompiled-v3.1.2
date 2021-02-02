package com.tencent.imsdk;

import android.text.TextUtils;
import androidx.annotation.NonNull;

public class TIMSdkConfig {
    private String appidAt3rd = "0";
    private boolean isLogPrintEnabled = true;
    private int logCallbackLevel = 4;
    private int logLevel = 4;
    private TIMLogListener logListener;
    private String logPath = "";
    private int sdkAppId;

    public TIMSdkConfig(int i) {
        this.sdkAppId = i;
    }

    public int getSdkAppId() {
        return this.sdkAppId;
    }

    public String getAppidAt3rd() {
        return this.appidAt3rd;
    }

    public TIMSdkConfig setAppidAt3rd(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        this.appidAt3rd = str;
        return this;
    }

    public String getLogPath() {
        return this.logPath;
    }

    public TIMSdkConfig setLogPath(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        this.logPath = str;
        return this;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    public TIMSdkConfig setLogLevel(int i) {
        this.logLevel = i;
        return this;
    }

    public int getLogCallbackLevel() {
        return this.logCallbackLevel;
    }

    public TIMSdkConfig setLogCallbackLevel(int i) {
        this.logCallbackLevel = i;
        return this;
    }

    public TIMLogListener getLogListener() {
        return this.logListener;
    }

    public TIMSdkConfig setLogListener(TIMLogListener tIMLogListener) {
        this.logListener = tIMLogListener;
        return this;
    }

    public boolean isLogPrintEnabled() {
        return this.isLogPrintEnabled;
    }

    public TIMSdkConfig enableLogPrint(boolean z) {
        this.isLogPrintEnabled = z;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("sdkAppid=");
        sb.append(this.sdkAppId);
        sb.append(";appid=");
        sb.append(this.appidAt3rd);
        sb.append(";logPath=");
        sb.append(this.logPath);
        sb.append(";callbackLevel=");
        sb.append(this.logCallbackLevel);
        sb.append(";logLevel=");
        sb.append(this.logLevel);
        sb.append(";logPrintEnabled=");
        sb.append(this.isLogPrintEnabled);
        return sb.toString();
    }
}
