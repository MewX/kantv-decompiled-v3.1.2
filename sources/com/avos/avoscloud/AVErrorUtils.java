package com.avos.avoscloud;

import org.json.JSONObject;

public class AVErrorUtils {
    public static final int CIRCLE_REFERENCE = 100001;
    public static final int MISSING_OBJECTID = 104;

    public static AVException createException(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new AVException(jSONObject.getInt("code"), jSONObject.getString("error"));
        } catch (Exception unused) {
            return new AVException(999, str);
        }
    }

    public static AVException createException(Throwable th, String str) {
        if (str != null) {
            return createException(str);
        }
        if (th == null) {
            return new AVException(999, "unknown reason");
        }
        if (th instanceof AVException) {
            return (AVException) th;
        }
        return new AVException(th);
    }

    static int errorCode(String str) {
        try {
            return new JSONObject(str).getInt("code");
        } catch (Exception unused) {
            return 0;
        }
    }

    public static AVException createException(int i, String str) {
        return new AVException(i, str);
    }

    public static AVException invalidObjectIdException() {
        return createException(104, "Invalid object id.");
    }

    public static AVException invalidQueryException() {
        return createException(102, "Invalid query.");
    }

    public static AVException sessionMissingException() {
        return createException(206, "No valid session token, make sure signUp or login has been called.");
    }

    public static AVException fileDownloadInConsistentFailureException() {
        return createException((int) AVException.FILE_DOWNLOAD_INCONSISTENT_FAILURE, "Downloaded file is inconsistent with original file");
    }

    static AVException circleException() {
        return new AVException((int) CIRCLE_REFERENCE, "Found a circular dependency when saving.");
    }
}
