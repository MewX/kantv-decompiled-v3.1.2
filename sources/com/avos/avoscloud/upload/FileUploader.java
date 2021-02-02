package com.avos.avoscloud.upload;

import android.util.SparseArray;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVCallback;
import com.avos.avoscloud.AVErrorUtils;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.GenericObjectCallback;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.PaasClient;
import com.avos.avoscloud.ProgressCallback;
import com.avos.avoscloud.SaveCallback;
import com.avos.avoscloud.upload.Uploader.UploadCallback;
import com.avos.avoscloud.utils.AVFileUtil;
import com.avos.avospush.session.ConversationControlPacket.ConversationControlOp;
import java.util.HashMap;

public class FileUploader extends HttpClientUploader {
    static final int PROGRESS_COMPLETE = 100;
    static final int PROGRESS_GET_TOKEN = 10;
    static final int PROGRESS_UPLOAD_FILE = 90;
    static HashMap<String, String> UPLOAD_HEADERS = new HashMap<>();
    protected static final int defaultFileKeyLength = 40;
    private String bucket;
    private UploadCallback callback = null;
    private String provider;
    private String token;
    private String uploadUrl;

    public interface FileUploadProgressCallback {
        void onProgress(int i);
    }

    protected static class ProgressCalculator {
        SparseArray<Integer> blockProgress = new SparseArray<>();
        FileUploadProgressCallback callback;
        int fileBlockCount = 0;

        public ProgressCalculator(int i, FileUploadProgressCallback fileUploadProgressCallback) {
            this.callback = fileUploadProgressCallback;
            this.fileBlockCount = i;
        }

        public synchronized void publishProgress(int i, int i2) {
            this.blockProgress.put(i, Integer.valueOf(i2));
            if (this.callback != null) {
                int i3 = 0;
                for (int i4 = 0; i4 < this.blockProgress.size(); i4++) {
                    i3 += ((Integer) this.blockProgress.valueAt(i4)).intValue();
                }
                this.callback.onProgress(((i3 * 80) / (this.fileBlockCount * 100)) + 10);
            }
        }
    }

    public FileUploader(AVFile aVFile, SaveCallback saveCallback, ProgressCallback progressCallback, UploadCallback uploadCallback) {
        super(aVFile, saveCallback, progressCallback);
        this.callback = uploadCallback;
    }

    public AVException doWork() {
        String parseFileKey = AVUtils.parseFileKey(this.avFile.getName());
        if (AVUtils.isBlankString(this.uploadUrl)) {
            AVException fetchUploadBucket = fetchUploadBucket("fileTokens", parseFileKey, true, new AVCallback<String>() {
                /* access modifiers changed from: protected */
                public boolean mustRunOnUIThread() {
                    return false;
                }

                /* access modifiers changed from: protected */
                public void internalDone0(String str, AVException aVException) {
                    if (aVException == null) {
                        AVException access$000 = FileUploader.this.handleGetBucketResponse(str);
                        if (access$000 != null) {
                            log.e("failed to parse response of fileTokens.", (Exception) access$000);
                            return;
                        }
                        return;
                    }
                    log.e("failed to invoke fileTokens.", (Exception) aVException);
                }
            });
            if (fetchUploadBucket != null) {
                return fetchUploadBucket;
            }
        }
        publishProgress(10);
        Uploader uploaderImplementation = getUploaderImplementation(parseFileKey);
        if (uploaderImplementation == null) {
            return new AVException(new Throwable("Uploader can not be instantiated."));
        }
        AVException doWork = uploaderImplementation.doWork();
        if (doWork == null) {
            UploadCallback uploadCallback = this.callback;
            if (uploadCallback != null) {
                uploadCallback.finishedWithResults(this.finalObjectId, this.finalUrl);
            }
            publishProgress(100);
            completeFileUpload(true);
            return null;
        }
        completeFileUpload(false);
        return doWork;
    }

    private Uploader getUploaderImplementation(String str) {
        if (AVUtils.isBlankString(this.provider)) {
            return null;
        }
        String str2 = this.provider;
        char c = 65535;
        int hashCode = str2.hashCode();
        if (hashCode != -965116828) {
            if (hashCode == 3616 && str2.equals("s3")) {
                c = 1;
            }
        } else if (str2.equals("qcloud")) {
            c = 0;
        }
        if (c == 0) {
            QCloudUploader qCloudUploader = new QCloudUploader(this.avFile, str, this.token, this.uploadUrl, this.saveCallback, this.progressCallback);
            return qCloudUploader;
        } else if (c == 1) {
            return new S3Uploader(this.avFile, this.uploadUrl, this.saveCallback, this.progressCallback);
        } else {
            QiniuSlicingUploader qiniuSlicingUploader = new QiniuSlicingUploader(this.avFile, this.token, str, this.saveCallback, this.progressCallback);
            return qiniuSlicingUploader;
        }
    }

    private AVException fetchUploadBucket(String str, String str2, boolean z, final AVCallback<String> aVCallback) {
        final AVException[] aVExceptionArr = new AVException[1];
        PaasClient.storageInstance().postObject(str, getGetBucketParameters(str2), z, new GenericObjectCallback() {
            public void onSuccess(String str, AVException aVException) {
                aVCallback.internalDone(str, aVException);
                aVExceptionArr[0] = aVException;
            }

            public void onFailure(Throwable th, String str) {
                aVCallback.internalDone(null, AVErrorUtils.createException(th, str));
                aVExceptionArr[0] = AVErrorUtils.createException(th, str);
            }
        });
        if (aVExceptionArr[0] != null) {
            return aVExceptionArr[0];
        }
        return null;
    }

    /* access modifiers changed from: private */
    public AVException handleGetBucketResponse(String str) {
        if (!AVUtils.isBlankContent(str)) {
            try {
                JSONObject parseObject = JSON.parseObject(str);
                this.bucket = parseObject.getString("bucket");
                this.finalObjectId = parseObject.getString("objectId");
                this.uploadUrl = parseObject.getString("upload_url");
                this.provider = parseObject.getString("provider");
                this.token = parseObject.getString("token");
                this.finalUrl = parseObject.getString("url");
            } catch (JSONException e) {
                return new AVException(e);
            }
        }
        return null;
    }

    private String getGetBucketParameters(String str) {
        String name = this.avFile.getName();
        String fileMimeType = AVFileUtil.getFileMimeType(this.avFile);
        HashMap hashMap = new HashMap(3);
        hashMap.put("key", str);
        hashMap.put("name", name);
        hashMap.put("mime_type", fileMimeType);
        hashMap.put("metaData", this.avFile.getMetaData());
        hashMap.put(AVUtils.typeTag, AVFile.className());
        if (this.avFile.getACL() != null) {
            hashMap.putAll(AVUtils.getParsedMap(this.avFile.getACL().getACLMap()));
        }
        return AVUtils.restfulServerData(hashMap);
    }

    private void completeFileUpload(boolean z) {
        if (!AVUtils.isBlankString(this.token)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ConversationControlOp.MEMBER_COUNT_QUERY_RESULT, (Object) Boolean.valueOf(z));
                jSONObject.put("token", (Object) this.token);
                PaasClient.storageInstance().postObject("fileCallback", jSONObject.toJSONString(), false, new GenericObjectCallback() {
                });
            } catch (Exception unused) {
            }
        }
    }

    public static void setUploadHeader(String str, String str2) {
        UPLOAD_HEADERS.put(str, str2);
    }
}
