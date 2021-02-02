package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.AVException;

public class AVIMException extends AVException {
    int appCode;

    public AVIMException(int i, int i2, String str) {
        super(i, str);
        this.appCode = i2;
    }

    public AVIMException(int i, String str) {
        super(i, str);
    }

    public AVIMException(int i, String str, Throwable th) {
        super(str, th);
        this.appCode = i;
    }

    public AVIMException(String str, Throwable th) {
        super(str, th);
    }

    public AVIMException(int i, Throwable th) {
        super(th);
        this.appCode = i;
    }

    public AVIMException(Throwable th) {
        super(th);
        if (th instanceof AVIMException) {
            this.appCode = ((AVIMException) th).getAppCode();
        }
    }

    public AVIMException(int i, AVException aVException) {
        super(aVException.getMessage(), aVException.getCause());
        this.code = aVException.getCode();
        this.appCode = i;
    }

    public int getAppCode() {
        return this.appCode;
    }

    /* access modifiers changed from: 0000 */
    public void setAppCode(int i) {
        this.appCode = i;
    }

    public static AVIMException wrapperAVException(Throwable th) {
        if (th == null) {
            return null;
        }
        return new AVIMException(th);
    }
}
