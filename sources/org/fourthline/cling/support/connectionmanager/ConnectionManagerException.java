package org.fourthline.cling.support.connectionmanager;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

public class ConnectionManagerException extends ActionException {
    public ConnectionManagerException(int i, String str) {
        super(i, str);
    }

    public ConnectionManagerException(int i, String str, Throwable th) {
        super(i, str, th);
    }

    public ConnectionManagerException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public ConnectionManagerException(ErrorCode errorCode) {
        super(errorCode);
    }

    public ConnectionManagerException(ConnectionManagerErrorCode connectionManagerErrorCode, String str) {
        int code = connectionManagerErrorCode.getCode();
        StringBuilder sb = new StringBuilder();
        sb.append(connectionManagerErrorCode.getDescription());
        sb.append(". ");
        sb.append(str);
        sb.append(".");
        super(code, sb.toString());
    }

    public ConnectionManagerException(ConnectionManagerErrorCode connectionManagerErrorCode) {
        super(connectionManagerErrorCode.getCode(), connectionManagerErrorCode.getDescription());
    }
}
