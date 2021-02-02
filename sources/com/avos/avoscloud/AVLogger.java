package com.avos.avoscloud;

public abstract class AVLogger {
    public static final int LOG_LEVEL_DEBUG = 4;
    public static final int LOG_LEVEL_ERROR = 32;
    public static final int LOG_LEVEL_INFO = 8;
    public static final int LOG_LEVEL_NONE = -1;
    public static final int LOG_LEVEL_VERBOSE = 2;
    public static final int LOG_LEVEL_WARNING = 16;
    boolean enabled;
    int logLevel = -1;

    public abstract int d(String str, String str2);

    public abstract int d(String str, String str2, Throwable th);

    public abstract int e(String str, String str2);

    public abstract int e(String str, String str2, Throwable th);

    public abstract int i(String str, String str2);

    public abstract int i(String str, String str2, Throwable th);

    public boolean showInternalDebugLog() {
        return false;
    }

    public abstract int v(String str, String str2);

    public abstract int v(String str, String str2, Throwable th);

    public abstract int w(String str, String str2);

    public abstract int w(String str, String str2, Throwable th);

    public abstract int w(String str, Throwable th);

    public boolean isDebugEnabled() {
        return this.enabled;
    }

    public void setDebugEnabled(boolean z) {
        this.enabled = z;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    public void setLogLevel(int i) {
        this.logLevel = i;
    }
}
