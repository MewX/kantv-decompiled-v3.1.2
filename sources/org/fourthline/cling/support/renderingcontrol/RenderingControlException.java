package org.fourthline.cling.support.renderingcontrol;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

public class RenderingControlException extends ActionException {
    public RenderingControlException(int i, String str) {
        super(i, str);
    }

    public RenderingControlException(int i, String str, Throwable th) {
        super(i, str, th);
    }

    public RenderingControlException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public RenderingControlException(ErrorCode errorCode) {
        super(errorCode);
    }

    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode, String str) {
        int code = renderingControlErrorCode.getCode();
        StringBuilder sb = new StringBuilder();
        sb.append(renderingControlErrorCode.getDescription());
        sb.append(". ");
        sb.append(str);
        sb.append(".");
        super(code, sb.toString());
    }

    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode) {
        super(renderingControlErrorCode.getCode(), renderingControlErrorCode.getDescription());
    }
}
