package org.fourthline.cling.support.contentdirectory;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

public class ContentDirectoryException extends ActionException {
    public ContentDirectoryException(int i, String str) {
        super(i, str);
    }

    public ContentDirectoryException(int i, String str, Throwable th) {
        super(i, str, th);
    }

    public ContentDirectoryException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public ContentDirectoryException(ErrorCode errorCode) {
        super(errorCode);
    }

    public ContentDirectoryException(ContentDirectoryErrorCode contentDirectoryErrorCode, String str) {
        int code = contentDirectoryErrorCode.getCode();
        StringBuilder sb = new StringBuilder();
        sb.append(contentDirectoryErrorCode.getDescription());
        sb.append(". ");
        sb.append(str);
        sb.append(".");
        super(code, sb.toString());
    }

    public ContentDirectoryException(ContentDirectoryErrorCode contentDirectoryErrorCode) {
        super(contentDirectoryErrorCode.getCode(), contentDirectoryErrorCode.getDescription());
    }
}
