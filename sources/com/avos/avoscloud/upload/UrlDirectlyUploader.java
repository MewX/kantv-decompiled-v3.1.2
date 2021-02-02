package com.avos.avoscloud.upload;

import com.avos.avoscloud.AVErrorUtils;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.AVPowerfulUtils;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.GenericObjectCallback;
import com.avos.avoscloud.PaasClient;
import com.avos.avoscloud.ProgressCallback;
import com.avos.avoscloud.SaveCallback;
import com.avos.avoscloud.upload.Uploader.UploadCallback;
import com.avos.avoscloud.utils.AVFileUtil;
import java.util.HashMap;
import org.json.JSONObject;

public class UrlDirectlyUploader extends HttpClientUploader {
    /* access modifiers changed from: private */
    public UploadCallback callback = null;

    public UrlDirectlyUploader(AVFile aVFile, SaveCallback saveCallback, ProgressCallback progressCallback, UploadCallback uploadCallback) {
        super(aVFile, saveCallback, progressCallback);
        this.callback = uploadCallback;
    }

    public AVException doWork() {
        final AVException[] aVExceptionArr = new AVException[1];
        PaasClient.storageInstance().postObject(AVPowerfulUtils.getEndpoint(this.avFile, true), getFileRequestParameters(), true, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                if (aVException == null) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (UrlDirectlyUploader.this.callback != null) {
                            UrlDirectlyUploader.this.callback.finishedWithResults(jSONObject.getString("objectId"), UrlDirectlyUploader.this.avFile.getUrl());
                        }
                        UrlDirectlyUploader.this.publishProgress(100);
                    } catch (Exception e) {
                        aVExceptionArr[0] = new AVException(e);
                    }
                } else {
                    aVExceptionArr[0] = AVErrorUtils.createException((Throwable) aVException, str);
                }
            }

            public void onFailure(Throwable th, String str) {
                aVExceptionArr[0] = AVErrorUtils.createException(th, str);
            }
        });
        return aVExceptionArr[0];
    }

    private String getFileRequestParameters() {
        String fileMimeType = AVFileUtil.getFileMimeType(this.avFile);
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.avFile.getName());
        hashMap.put("mime_type", fileMimeType);
        hashMap.put("metaData", this.avFile.getMetaData());
        hashMap.put(AVUtils.typeTag, AVFile.className());
        hashMap.put("url", this.avFile.getUrl());
        if (this.avFile.getACL() != null) {
            hashMap.putAll(AVUtils.getParsedMap(this.avFile.getACL().getACLMap()));
        }
        return AVUtils.restfulServerData(hashMap);
    }
}
