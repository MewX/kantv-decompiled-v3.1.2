package org.fourthline.cling.model.action;

import org.fourthline.cling.model.types.ErrorCode;

public class ActionException extends Exception {
    private int errorCode;

    public ActionException(int i, String str) {
        super(str);
        this.errorCode = i;
    }

    public ActionException(int i, String str, Throwable th) {
        super(str, th);
        this.errorCode = i;
    }

    public ActionException(ErrorCode errorCode2) {
        this(errorCode2.getCode(), errorCode2.getDescription());
    }

    public ActionException(ErrorCode errorCode2, String str) {
        this(errorCode2, str, true);
    }

    public ActionException(ErrorCode errorCode2, String str, boolean z) {
        int code = errorCode2.getCode();
        if (z) {
            StringBuilder sb = new StringBuilder();
            sb.append(errorCode2.getDescription());
            sb.append(". ");
            sb.append(str);
            sb.append(".");
            str = sb.toString();
        }
        this(code, str);
    }

    public ActionException(ErrorCode errorCode2, String str, Throwable th) {
        int code = errorCode2.getCode();
        StringBuilder sb = new StringBuilder();
        sb.append(errorCode2.getDescription());
        sb.append(". ");
        sb.append(str);
        sb.append(".");
        this(code, sb.toString(), th);
    }

    public int getErrorCode() {
        return this.errorCode;
    }
}
