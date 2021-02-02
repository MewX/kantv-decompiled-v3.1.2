package com.avos.avoscloud.upload;

import com.avos.avoscloud.AVErrorUtils;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.ProgressCallback;
import com.avos.avoscloud.SaveCallback;
import com.avos.avoscloud.utils.AVFileUtil;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

class S3Uploader extends HttpClientUploader {
    private static String DEFAULT_HEADER_CACHE_CONTROL = "Cache-Control";
    private static String DEFAULT_HEADER_CACHE_CONTROL_VALUE = "public, max-age=31536000";
    private static final int DEFAULT_MAX_WRITE_TIMEOUT = 240;
    private static final int DEFAULT_MIN_UPLOAD_RATE = 51200;
    private static final int DEFAULT_MIN_WRITE_TIMEOUT = 30;
    private static int writeTimeout;
    private volatile Call call;
    private int retryTimes = 6;
    private String uploadUrl;

    S3Uploader(AVFile aVFile, String str, SaveCallback saveCallback, ProgressCallback progressCallback) {
        super(aVFile, saveCallback, progressCallback);
        this.uploadUrl = str;
    }

    public AVException doWork() {
        try {
            return executeWithRetry(this.avFile.getData());
        } catch (Exception e) {
            return new AVException(e.getCause());
        }
    }

    private AVException executeWithRetry(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            Builder newBuilder = getOKHttpClient().newBuilder();
            int i = writeTimeout;
            if (i <= 0) {
                i = getWriteTimeoutByLength(bArr.length);
            }
            newBuilder.writeTimeout((long) i, TimeUnit.SECONDS);
            OkHttpClient build = newBuilder.build();
            try {
                String fileMimeType = AVFileUtil.getFileMimeType(this.avFile);
                Request.Builder builder = new Request.Builder();
                builder.url(this.uploadUrl);
                Charset.forName("UTF-8");
                builder.put(RequestBody.create(MediaType.parse(fileMimeType), bArr));
                builder.addHeader("Content-Type", fileMimeType);
                if (!FileUploader.UPLOAD_HEADERS.containsKey(DEFAULT_HEADER_CACHE_CONTROL)) {
                    builder.addHeader(DEFAULT_HEADER_CACHE_CONTROL, DEFAULT_HEADER_CACHE_CONTROL_VALUE);
                }
                for (String str : FileUploader.UPLOAD_HEADERS.keySet()) {
                    builder.addHeader(str, (String) FileUploader.UPLOAD_HEADERS.get(str));
                }
                this.call = build.newCall(builder.build());
                Response execute = this.call.execute();
                if (2 != execute.code() / 100) {
                    avlog.e(AVUtils.stringFromBytes(execute.body().bytes()));
                    if (this.retryTimes > 0) {
                        this.retryTimes--;
                        executeWithRetry(bArr);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("upload file failure:");
                        sb.append(execute.code());
                        return AVErrorUtils.createException(-1, sb.toString());
                    }
                }
            } catch (IOException e) {
                int i2 = this.retryTimes;
                if (i2 <= 0) {
                    return new AVException(e.getCause());
                }
                this.retryTimes = i2 - 1;
                return executeWithRetry(bArr);
            }
        }
        return null;
    }

    private int getWriteTimeoutByLength(int i) {
        int i2 = i / DEFAULT_MIN_UPLOAD_RATE;
        if (i2 < 30) {
            return 30;
        }
        if (i2 > 240) {
            return 240;
        }
        return i2;
    }

    public static void setWriteTimeout(int i) throws AVException {
        if (i <= 0) {
            throw new AVException(new IllegalArgumentException("Timeout too small"));
        } else if (i <= 3600) {
            writeTimeout = i;
        } else {
            throw new AVException(new IllegalArgumentException("Timeout too large"));
        }
    }
}
