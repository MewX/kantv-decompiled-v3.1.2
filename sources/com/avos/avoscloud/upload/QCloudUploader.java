package com.avos.avoscloud.upload;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.avos.avoscloud.AVErrorUtils;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVExceptionHolder;
import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.LogUtil.log;
import com.avos.avoscloud.ProgressCallback;
import com.avos.avoscloud.SaveCallback;
import com.avos.avoscloud.upload.FileUploader.FileUploadProgressCallback;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import okhttp3.MediaType;
import okhttp3.MultipartBody.Builder;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

class QCloudUploader extends HttpClientUploader {
    private static final String APPLICATION_OCTET_STREAM = "application/octet-stream";
    private static final int DEFAULT_SLICE_LEN = 524288;
    private static final String FILE_CONTENT = "filecontent";
    private static final String HEADER_AUTHORIZATION = "Authorization";
    private static final String HEADER_CONTENT_TYPE = "Content-Type";
    private static final String MULTIPART_FORM_DATA = "multipart/form-data";
    private static final String OP_UPLOAD = "upload";
    private static final String OP_UPLOAD_SLICE = "upload_slice";
    private static final String PARAM_ACCESS_URL = "access_url";
    private static final String PARAM_FILE_SIZE = "filesize";
    private static final String PARAM_OFFSET = "offset";
    private static final String PARAM_OP = "op";
    private static final String PARAM_SESSION = "session";
    private static final String PARAM_SHA = "sha";
    private static final String PARAM_SLICE_SIZE = "slice_size";
    private static final int RETRY_TIMES = 5;
    boolean SHOULD_UPLOAD_SLICE_PARALL = false;
    private String fileKey;
    private String fileSha;
    private volatile Future[] tasks;
    private String token;
    private String uploadUrl;

    public static class SliceUploadTask implements Runnable {
        byte[] data;
        String key;
        CountDownLatch latch;
        QCloudUploader parent;
        ProgressCalculator progress;
        String session;
        int sliceOffset;
        String token;
        String url;

        public SliceUploadTask(QCloudUploader qCloudUploader, String str, String str2, String str3, byte[] bArr, int i, String str4, ProgressCalculator progressCalculator, CountDownLatch countDownLatch) {
            this.data = bArr;
            this.sliceOffset = i;
            this.progress = progressCalculator;
            this.session = str4;
            this.latch = countDownLatch;
            this.key = str;
            this.token = str2;
            this.url = str3;
            this.parent = qCloudUploader;
        }

        public void run() {
            upload();
        }

        public String upload() {
            String str = "multipart/form-data";
            try {
                Builder builder = new Builder();
                builder.addFormDataPart(QCloudUploader.FILE_CONTENT, this.key, RequestBody.create(MediaType.parse(QCloudUploader.APPLICATION_OCTET_STREAM), this.data, this.sliceOffset * 524288, QCloudUploader.getCurrentSliceLength(this.sliceOffset, this.data.length)));
                builder.addFormDataPart(QCloudUploader.PARAM_OP, QCloudUploader.OP_UPLOAD_SLICE);
                builder.addFormDataPart("offset", String.valueOf(this.sliceOffset * 524288));
                builder.addFormDataPart("session", this.session);
                MediaType parse = MediaType.parse(str);
                if (parse != null) {
                    builder.setType(parse);
                }
                Request.Builder builder2 = new Request.Builder();
                builder2.url(this.url);
                builder2.header("Authorization", this.token);
                builder2.header("Content-Type", str);
                builder2.post(builder.build());
                Response executeWithRetry = this.parent.executeWithRetry(builder2.build(), 5);
                if (executeWithRetry != null) {
                    byte[] bytes = executeWithRetry.body().bytes();
                    if (this.progress != null) {
                        this.progress.publishProgress(this.sliceOffset, 100);
                    }
                    return AVUtils.stringFromBytes(bytes);
                }
            } catch (Exception e) {
                AVExceptionHolder.add(new AVException(e));
                CountDownLatch countDownLatch = this.latch;
                if (countDownLatch != null) {
                    for (long count = countDownLatch.getCount(); count > 0; count--) {
                        this.latch.countDown();
                    }
                }
            }
            return null;
        }
    }

    /* access modifiers changed from: private */
    public static int getCurrentSliceLength(int i, int i2) {
        int i3 = i2 - (i * 524288);
        if (i3 >= 524288) {
            return 524288;
        }
        return i3;
    }

    QCloudUploader(AVFile aVFile, String str, String str2, String str3, SaveCallback saveCallback, ProgressCallback progressCallback) {
        super(aVFile, saveCallback, progressCallback);
        this.uploadUrl = str3;
        this.token = str2;
        this.fileKey = str;
    }

    public AVException doWork() {
        Future[] futureArr;
        Future[] futureArr2;
        try {
            byte[] data = this.avFile.getData();
            int length = (data.length / 524288) + (data.length % 524288 == 0 ? 0 : 1);
            if (length > 1) {
                JSONObject uploadControlSlice = uploadControlSlice(this.token, this.uploadUrl, data);
                if (uploadControlSlice == null) {
                    return new AVException(new RuntimeException("Exception during file upload"));
                }
                if (uploadControlSlice.containsKey(PARAM_ACCESS_URL)) {
                    return null;
                }
                String string = uploadControlSlice.getString("session");
                ProgressCalculator progressCalculator = new ProgressCalculator(length, new FileUploadProgressCallback() {
                    public void onProgress(int i) {
                        QCloudUploader.this.publishProgress(i);
                    }
                });
                if (this.SHOULD_UPLOAD_SLICE_PARALL) {
                    CountDownLatch countDownLatch = new CountDownLatch(length);
                    this.tasks = new Future[length];
                    Future[] futureArr3 = this.tasks;
                    synchronized (futureArr3) {
                        int i = 0;
                        while (i < length) {
                            try {
                                int i2 = i - 1;
                                r1 = r1;
                                SliceUploadTask sliceUploadTask = r1;
                                ThreadPoolExecutor threadPoolExecutor = executor;
                                Future[] futureArr4 = this.tasks;
                                int i3 = i;
                                futureArr2 = futureArr3;
                                CountDownLatch countDownLatch2 = countDownLatch;
                                ProgressCalculator progressCalculator2 = progressCalculator;
                                SliceUploadTask sliceUploadTask2 = new SliceUploadTask(this, this.fileKey, this.token, this.uploadUrl, data, i, string, progressCalculator, countDownLatch2);
                                futureArr4[i2] = threadPoolExecutor.submit(sliceUploadTask);
                                i = i3 + 1;
                                futureArr3 = futureArr2;
                                countDownLatch = countDownLatch2;
                                progressCalculator = progressCalculator2;
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        CountDownLatch countDownLatch3 = countDownLatch;
                        countDownLatch3.await();
                    }
                } else {
                    ProgressCalculator progressCalculator3 = progressCalculator;
                    for (int i4 = 0; i4 < length && !AVExceptionHolder.exists(); i4++) {
                        SliceUploadTask sliceUploadTask3 = new SliceUploadTask(this, this.fileKey, this.token, this.uploadUrl, data, i4, string, progressCalculator3, null);
                        sliceUploadTask3.upload();
                    }
                }
                if (AVExceptionHolder.exists()) {
                    if (this.tasks != null) {
                        for (Future future : this.tasks) {
                            if (!future.isDone()) {
                                future.cancel(true);
                            }
                        }
                    }
                    throw AVExceptionHolder.remove();
                }
            } else {
                uploadFile();
            }
            return null;
        } catch (Exception e) {
            return new AVException(e);
        }
    }

    private void uploadFile() throws AVException {
        String str = "multipart/form-data";
        try {
            if (AVOSCloud.showInternalDebugLog()) {
                log.d("upload as whole file");
            }
            byte[] data = this.avFile.getData();
            this.fileSha = AVUtils.SHA1(data);
            Builder builder = new Builder();
            builder.addFormDataPart(FILE_CONTENT, this.fileKey, RequestBody.create(MediaType.parse(APPLICATION_OCTET_STREAM), data, 0, getCurrentSliceLength(0, data.length)));
            builder.addFormDataPart(PARAM_OP, OP_UPLOAD);
            builder.addFormDataPart(PARAM_SHA, this.fileSha);
            MediaType parse = MediaType.parse(str);
            if (parse != null) {
                builder.setType(parse);
            }
            Request.Builder builder2 = new Request.Builder();
            builder2.url(this.uploadUrl);
            builder2.header("Authorization", this.token);
            builder2.header("Content-Type", str);
            for (String str2 : FileUploader.UPLOAD_HEADERS.keySet()) {
                builder2.header(str2, (String) FileUploader.UPLOAD_HEADERS.get(str2));
            }
            builder2.post(builder.build());
            Response executeWithRetry = executeWithRetry(builder2.build(), 5);
            if (executeWithRetry.code() != 200) {
                throw AVErrorUtils.createException(-1, AVUtils.stringFromBytes(executeWithRetry.body().bytes()));
            }
        } catch (Exception e) {
            String str3 = "Exception during file upload";
            if (AVOSCloud.isDebugLogEnabled()) {
                avlog.e(str3, e);
            }
            throw AVErrorUtils.createException((Throwable) e, str3);
        }
    }

    private static JSONObject parseSliceUploadResponse(String str) {
        if (!AVUtils.isBlankContent(str)) {
            try {
                return JSON.parseObject(str).getJSONObject("data");
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Parsing json data error, ");
                sb.append(str);
                avlog.e(sb.toString(), e);
            }
        }
        return null;
    }

    private JSONObject uploadControlSlice(String str, String str2, byte[] bArr) throws AVException {
        String str3 = "multipart/form-data";
        Builder builder = new Builder();
        try {
            builder.addFormDataPart(PARAM_SHA, AVUtils.SHA1(bArr));
            builder.addFormDataPart(PARAM_OP, OP_UPLOAD_SLICE);
            builder.addFormDataPart(PARAM_FILE_SIZE, String.valueOf(bArr.length));
            builder.addFormDataPart(PARAM_SLICE_SIZE, String.valueOf(524288));
            MediaType parse = MediaType.parse(str3);
            if (parse != null) {
                builder.setType(parse);
            }
            Request.Builder builder2 = new Request.Builder();
            builder2.url(str2);
            builder2.header("Authorization", str);
            builder2.header("Content-Type", str3);
            builder2.post(builder.build());
            Response executeWithRetry = executeWithRetry(builder2.build(), 5);
            if (executeWithRetry != null) {
                return parseSliceUploadResponse(AVUtils.stringFromBytes(executeWithRetry.body().bytes()));
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            throw new AVException(-1, "Upload file failure");
        }
    }

    public void interruptImmediately() {
        super.interruptImmediately();
        if (this.tasks != null && this.tasks.length > 0) {
            synchronized (this.tasks) {
                for (Future future : this.tasks) {
                    if (future != null && !future.isDone() && !future.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }
        }
    }
}
