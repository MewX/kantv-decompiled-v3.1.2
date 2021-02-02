package com.avos.avoscloud.upload;

import com.alibaba.fastjson.JSON;
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
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.LinkedList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.zip.CRC32;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.Request.Builder;
import okhttp3.RequestBody;
import okhttp3.Response;

class QiniuUploader extends HttpClientUploader {
    static final int BLOCK_SIZE = 4194304;
    static final int NONWIFI_CHUNK_SIZE = 65536;
    static final String QINIU_BRICK_UPLOAD_EP = "http://upload.qiniu.com/bput/%s/%d";
    static final String QINIU_CREATE_BLOCK_EP = "http://upload.qiniu.com/mkblk/%d";
    static final String QINIU_HOST = "http://upload.qiniu.com";
    static final String QINIU_MKFILE_EP = "http://upload.qiniu.com/mkfile/%d/key/%s";
    static final int WIFI_CHUNK_SIZE = 262144;
    static final ExecutorService fileUploadExecutor = Executors.newFixedThreadPool(10);
    private int blockCount;
    private String fileKey;
    private volatile Call mergeFileRequestCall;
    private ProgressCalculator progressCalculator;
    private volatile Future[] tasks;
    private String token;
    int uploadChunkSize = 262144;
    private String[] uploadFileCtx;

    private static class FileBlockUploadTask implements Runnable {
        private int blockOffset;
        private byte[] bytes;
        CountDownLatch latch;
        QiniuUploader parent;
        ProgressCalculator progressCalculator;
        final int uploadChunkSize;
        String[] uploadFileCtx;

        public FileBlockUploadTask(byte[] bArr, int i, CountDownLatch countDownLatch, int i2, ProgressCalculator progressCalculator2, String[] strArr, QiniuUploader qiniuUploader) {
            this.bytes = bArr;
            this.blockOffset = i;
            this.latch = countDownLatch;
            this.uploadChunkSize = i2;
            this.progressCalculator = progressCalculator2;
            this.uploadFileCtx = strArr;
            this.parent = qiniuUploader;
        }

        public void run() {
            QiniuBlockResponseData createBlockInQiniu = createBlockInQiniu(this.blockOffset, getCurrentBlockSize(this.bytes, this.blockOffset), 6, this.bytes);
            if (createBlockInQiniu != null) {
                createBlockInQiniu = putFileBlocksToQiniu(this.blockOffset, this.bytes, createBlockInQiniu, 6);
            }
            if (createBlockInQiniu != null) {
                this.uploadFileCtx[this.blockOffset] = createBlockInQiniu.ctx;
                this.progressCalculator.publishProgress(this.blockOffset, 100);
            } else {
                AVExceptionHolder.add(new AVException(-1, "Upload File failure"));
                for (long count = this.latch.getCount(); count > 0; count--) {
                    this.latch.countDown();
                }
            }
            this.latch.countDown();
        }

        private QiniuBlockResponseData createBlockInQiniu(int i, int i2, int i3, byte[] bArr) {
            try {
                if (AVOSCloud.isDebugLogEnabled()) {
                    avlog.d("try to mkblk");
                }
                String format = String.format(QiniuUploader.QINIU_CREATE_BLOCK_EP, new Object[]{Integer.valueOf(i2)});
                Builder builder = new Builder();
                builder.url(format);
                return (QiniuBlockResponseData) QiniuUploader.parseQiniuResponse(HttpClientUploader.getOKHttpClient().newCall(this.parent.addAuthHeader(builder.post(RequestBody.create(MediaType.parse(AVFile.DEFAULTMIMETYPE), bArr, 4194304 * i, getNextChunkSize(i, bArr)))).build()).execute(), QiniuBlockResponseData.class);
            } catch (Exception e) {
                e.printStackTrace();
                int i4 = i3 - 1;
                if (i3 > 0) {
                    return createBlockInQiniu(i, i2, i4, bArr);
                }
                log.e("Exception during file upload", e);
                return null;
            }
        }

        private QiniuBlockResponseData putFileBlocksToQiniu(int i, byte[] bArr, QiniuBlockResponseData qiniuBlockResponseData, int i2) {
            int currentBlockSize = getCurrentBlockSize(bArr, i);
            this.progressCalculator.publishProgress(i, (qiniuBlockResponseData.offset * 100) / 4194304);
            int i3 = currentBlockSize - qiniuBlockResponseData.offset;
            if (i3 <= 0 || qiniuBlockResponseData.offset <= 0) {
                return qiniuBlockResponseData;
            }
            try {
                String format = String.format(QiniuUploader.QINIU_BRICK_UPLOAD_EP, new Object[]{qiniuBlockResponseData.ctx, Integer.valueOf(qiniuBlockResponseData.offset)});
                Builder builder = new Builder();
                builder.url(format);
                builder.addHeader("Content-Type", "application/octet-stream");
                if (i3 > this.uploadChunkSize) {
                    i3 = this.uploadChunkSize;
                }
                int i4 = 4194304 * i;
                QiniuBlockResponseData qiniuBlockResponseData2 = (QiniuBlockResponseData) QiniuUploader.parseQiniuResponse(HttpClientUploader.getOKHttpClient().newCall(this.parent.addAuthHeader(builder.post(RequestBody.create(MediaType.parse(AVFile.DEFAULTMIMETYPE), bArr, qiniuBlockResponseData.offset + i4, i3))).build()).execute(), QiniuBlockResponseData.class);
                validateCrc32Value(qiniuBlockResponseData2, bArr, i4 + qiniuBlockResponseData.offset, i3);
                if (qiniuBlockResponseData2 != null) {
                    return qiniuBlockResponseData2.offset < currentBlockSize ? putFileBlocksToQiniu(i, bArr, qiniuBlockResponseData2, 6) : qiniuBlockResponseData2;
                }
            } catch (Exception e) {
                e.printStackTrace();
                int i5 = i2 - 1;
                if (i2 > 0) {
                    return putFileBlocksToQiniu(i, bArr, qiniuBlockResponseData, i5);
                }
                log.e("Exception during file upload", e);
            }
            return null;
        }

        private void validateCrc32Value(QiniuBlockResponseData qiniuBlockResponseData, byte[] bArr, int i, int i2) throws AVException {
            CRC32 crc32 = new CRC32();
            crc32.update(bArr, i, i2);
            long value = crc32.getValue();
            if (qiniuBlockResponseData != null && qiniuBlockResponseData.crc32 != value) {
                throw new AVException(-1, "CRC32 validation failure for chunk upload");
            }
        }

        private int getCurrentBlockSize(byte[] bArr, int i) {
            int i2 = i * 4194304;
            if (bArr.length - i2 > 4194304) {
                return 4194304;
            }
            return bArr.length - i2;
        }

        private int getNextChunkSize(int i, byte[] bArr) {
            int i2 = i * 4194304;
            int length = bArr.length - i2;
            int i3 = this.uploadChunkSize;
            return length > i3 ? i3 : bArr.length - i2;
        }
    }

    private static class QiniuBlockResponseData {
        public String checksum;
        public long crc32;
        public String ctx;
        public String host;
        public int offset;

        private QiniuBlockResponseData() {
        }
    }

    private static class QiniuMKFileResponseData {
        public String hash;
        public String key;

        private QiniuMKFileResponseData() {
        }
    }

    QiniuUploader(AVFile aVFile, String str, String str2, SaveCallback saveCallback, ProgressCallback progressCallback) {
        super(aVFile, saveCallback, progressCallback);
        this.token = str;
        this.fileKey = str2;
    }

    public AVException doWork() {
        if (!AVUtils.isWifi(AVOSCloud.applicationContext)) {
            this.uploadChunkSize = 65536;
        }
        if (AVOSCloud.isDebugLogEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append("uploading with chunk size:");
            sb.append(this.uploadChunkSize);
            avlog.d(sb.toString());
        }
        return uploadWithBlocks();
    }

    /* access modifiers changed from: private */
    public Builder addAuthHeader(Builder builder) throws Exception {
        if (this.token != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("UpToken ");
            sb.append(this.token);
            builder.addHeader("Authorization", sb.toString());
        }
        return builder;
    }

    private AVException uploadWithBlocks() {
        Future[] futureArr;
        try {
            byte[] data = this.avFile.getData();
            this.blockCount = (data.length / 4194304) + (data.length % 4194304 > 0 ? 1 : 0);
            this.uploadFileCtx = new String[this.blockCount];
            CountDownLatch countDownLatch = new CountDownLatch(this.blockCount);
            this.progressCalculator = new ProgressCalculator(this.blockCount, new FileUploadProgressCallback() {
                public void onProgress(int i) {
                    QiniuUploader.this.publishProgress(i);
                }
            });
            this.tasks = new Future[this.blockCount];
            synchronized (this.tasks) {
                for (int i = 0; i < this.blockCount; i++) {
                    Future[] futureArr2 = this.tasks;
                    FileBlockUploadTask fileBlockUploadTask = r1;
                    ExecutorService executorService = fileUploadExecutor;
                    FileBlockUploadTask fileBlockUploadTask2 = new FileBlockUploadTask(data, i, countDownLatch, this.uploadChunkSize, this.progressCalculator, this.uploadFileCtx, this);
                    futureArr2[i] = executorService.submit(fileBlockUploadTask);
                }
            }
            countDownLatch.await();
            if (AVExceptionHolder.exists()) {
                for (Future future : this.tasks) {
                    if (!future.isDone()) {
                        future.cancel(true);
                    }
                }
                throw AVExceptionHolder.remove();
            }
            QiniuMKFileResponseData makeFile = makeFile(data.length, this.fileKey, 6);
            if (isCancelled() || (makeFile != null && makeFile.key.equals(this.fileKey))) {
                return null;
            }
            return AVErrorUtils.createException(-1, "upload file failure");
        } catch (Exception e) {
            e.printStackTrace();
            return new AVException(e);
        }
    }

    private QiniuMKFileResponseData makeFile(int i, String str, int i2) throws Exception {
        try {
            String format = String.format(QINIU_MKFILE_EP, new Object[]{Integer.valueOf(i), AVUtils.base64Encode(str)});
            LinkedList linkedList = new LinkedList();
            Collections.addAll(linkedList, this.uploadFileCtx);
            String joinCollection = AVUtils.joinCollection(linkedList, ",");
            Builder builder = new Builder();
            builder.url(format);
            this.mergeFileRequestCall = getOKHttpClient().newCall(addAuthHeader(builder.post(RequestBody.create(MediaType.parse(MimeTypes.BASE_TYPE_TEXT), joinCollection))).build());
            return (QiniuMKFileResponseData) parseQiniuResponse(this.mergeFileRequestCall.execute(), QiniuMKFileResponseData.class);
        } catch (Exception e) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                return makeFile(i, str, i3);
            }
            log.e("Exception during file upload", e);
            return null;
        }
    }

    /* access modifiers changed from: private */
    public static <T> T parseQiniuResponse(Response response, Class<T> cls) throws Exception {
        int code = response.code();
        String message = response.message();
        String header = response.header("X-Log");
        if (code != 401) {
            String stringFromBytes = AVUtils.stringFromBytes(response.body().bytes());
            try {
                if (code / 100 == 2) {
                    return JSON.parseObject(stringFromBytes, cls);
                }
            } catch (Exception unused) {
            }
            if (stringFromBytes.length() > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(code);
                sb.append(":");
                sb.append(stringFromBytes);
                throw new Exception(sb.toString());
            } else if (!AVUtils.isBlankString(header)) {
                throw new Exception(header);
            } else {
                throw new Exception(message);
            }
        } else {
            throw new Exception("unauthorized to create Qiniu Block");
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
        if (this.mergeFileRequestCall != null) {
            this.mergeFileRequestCall.cancel();
        }
    }
}
