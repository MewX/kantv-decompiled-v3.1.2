package com.avos.avoscloud;

import com.avos.avoscloud.AVQuery.CachePolicy;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import org.apache.http.Header;

public class GetHttpResponseHandler extends AsyncHttpResponseHandler {
    /* access modifiers changed from: private */
    public String absoluteURLString;
    private CachePolicy policy;

    private boolean isNotModifiedStatus(int i) {
        return i == 304;
    }

    private boolean isUnAuthorize(int i) {
        return i == 401;
    }

    public GetHttpResponseHandler(GenericObjectCallback genericObjectCallback) {
        super(genericObjectCallback);
        this.policy = CachePolicy.IGNORE_CACHE;
    }

    public GetHttpResponseHandler(GenericObjectCallback genericObjectCallback, CachePolicy cachePolicy, String str) {
        this(genericObjectCallback);
        this.policy = cachePolicy;
        this.absoluteURLString = str;
    }

    private void tryLastModifyCache(String str) {
        if (getCallback() != null) {
            if (str == null) {
                log.d("null last-modified value");
            } else if (PaasClient.getLastModify(this.absoluteURLString) == null) {
                PaasClient.updateLastModify(this.absoluteURLString, str);
            }
            AVCacheManager.sharedInstance().get(this.absoluteURLString, Long.MAX_VALUE, str, new GenericObjectCallback() {
                public void onSuccess(String str, AVException aVException) {
                    GetHttpResponseHandler.this.getCallback().onSuccess(str, null);
                }

                public void onFailure(Throwable th, String str) {
                    PaasClient.removeLastModifyForUrl(GetHttpResponseHandler.this.absoluteURLString);
                    GetHttpResponseHandler.this.getCallback().onFailure(th, str);
                }
            });
        }
    }

    public void onSuccess(int i, Header[] headerArr, byte[] bArr) {
        String stringFromBytes = AVUtils.stringFromBytes(bArr);
        if (AVOSCloud.isDebugLogEnabled()) {
            avlog.d(stringFromBytes);
        }
        if (isNotModifiedStatus(i)) {
            if (AVOSCloud.showInternalDebugLog()) {
                avlog.i("Last modify matched.");
            }
            tryLastModifyCache(PaasClient.lastModifyFromHeaders(headerArr));
        } else if (!AVUtils.checkResponseType(i, stringFromBytes, PaasClient.extractContentType(headerArr), getCallback())) {
            int errorCode = AVErrorUtils.errorCode(stringFromBytes);
            if (errorCode > 0) {
                if (getCallback() != null) {
                    getCallback().onFailure(AVErrorUtils.createException(errorCode, stringFromBytes), stringFromBytes);
                }
                return;
            }
            if (this.policy != CachePolicy.IGNORE_CACHE && !AVUtils.isBlankString(this.absoluteURLString)) {
                AVCacheManager.sharedInstance().save(this.absoluteURLString, stringFromBytes, null);
            }
            if (!AVUtils.isBlankString(this.absoluteURLString) && PaasClient.isLastModifyEnabled()) {
                String lastModifyFromHeaders = PaasClient.lastModifyFromHeaders(headerArr);
                if (AVCacheManager.sharedInstance().save(this.absoluteURLString, stringFromBytes, lastModifyFromHeaders)) {
                    PaasClient.updateLastModify(this.absoluteURLString, lastModifyFromHeaders);
                }
            }
            if (getCallback() != null) {
                getCallback().onSuccess(stringFromBytes, null);
            }
            ArchiveRequestTaskController.schedule();
        }
    }

    public void onFailure(int i, Header[] headerArr, byte[] bArr, Throwable th) {
        String stringFromBytes = AVUtils.stringFromBytes(bArr);
        String str = "\nerror:";
        if (isUnAuthorize(i)) {
            StringBuilder sb = new StringBuilder();
            sb.append(stringFromBytes);
            sb.append(str);
            sb.append(th);
            sb.append(" for request:");
            sb.append(this.absoluteURLString);
            avlog.e(sb.toString());
        }
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(stringFromBytes);
            sb2.append(str);
            sb2.append(th);
            avlog.e(sb2.toString());
        }
        if (!AVUtils.checkResponseType(i, stringFromBytes, PaasClient.extractContentType(headerArr), getCallback()) && getCallback() != null) {
            getCallback().onFailure(i, th, stringFromBytes);
        }
    }
}
