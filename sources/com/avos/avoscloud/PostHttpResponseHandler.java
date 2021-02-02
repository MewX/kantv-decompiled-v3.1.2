package com.avos.avoscloud;

import com.avos.avoscloud.LogUtil.avlog;
import org.apache.http.Header;

class PostHttpResponseHandler extends AsyncHttpResponseHandler {
    PostHttpResponseHandler(GenericObjectCallback genericObjectCallback) {
        super(genericObjectCallback);
    }

    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        String stringFromBytes = AVUtils.stringFromBytes(bArr);
        if (AVOSCloud.isDebugLogEnabled()) {
            avlog.d(stringFromBytes);
        }
        if (!AVUtils.checkResponseType(i, stringFromBytes, PaasClient.extractContentType(headerArr), getCallback())) {
            int errorCode = AVErrorUtils.errorCode(stringFromBytes);
            if (errorCode > 0) {
                if (getCallback() != null) {
                    getCallback().onFailure(AVErrorUtils.createException(errorCode, stringFromBytes), stringFromBytes);
                }
                return;
            }
            if (getCallback() != null) {
                getCallback().onSuccess(stringFromBytes, null);
            }
            ArchiveRequestTaskController.schedule();
        }
    }

    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        String stringFromBytes = AVUtils.stringFromBytes(bArr);
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(stringFromBytes);
            sb.append("\nerror:");
            sb.append(th);
            avlog.e(sb.toString());
        }
        if (!AVUtils.checkResponseType(i, stringFromBytes, PaasClient.extractContentType(headerArr), getCallback()) && getCallback() != null) {
            getCallback().onFailure(i, th, stringFromBytes);
        }
    }
}
