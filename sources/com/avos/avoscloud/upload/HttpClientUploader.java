package com.avos.avoscloud.upload;

import android.os.Build.VERSION;
import com.avos.avoscloud.AVErrorUtils;
import com.avos.avoscloud.AVException;
import com.avos.avoscloud.AVFile;
import com.avos.avoscloud.AVHttpClient;
import com.avos.avoscloud.AVOSCloud;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.LogUtil.avlog;
import com.avos.avoscloud.ProgressCallback;
import com.avos.avoscloud.SaveCallback;
import java.io.IOException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import okhttp3.Request;
import okhttp3.Response;

public abstract class HttpClientUploader implements Uploader {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    protected static final int DEFAULT_RETRY_TIMES = 6;
    private static final long KEEP_ALIVE_TIME = 1;
    private static final int MAX_POOL_SIZE;
    private static OkHttpClient client;
    static ThreadPoolExecutor executor;
    protected AVFile avFile = null;
    /* access modifiers changed from: private */
    public volatile boolean cancelled = false;
    protected String finalObjectId;
    protected String finalUrl;
    private volatile Future future;
    ProgressCallback progressCallback;
    SaveCallback saveCallback;

    public HttpClientUploader(AVFile aVFile, SaveCallback saveCallback2, ProgressCallback progressCallback2) {
        String str = "";
        this.finalUrl = str;
        this.finalObjectId = str;
        this.avFile = aVFile;
        this.saveCallback = saveCallback2;
        this.progressCallback = progressCallback2;
        this.cancelled = false;
    }

    static {
        int i = CPU_COUNT;
        CORE_POOL_SIZE = i + 1;
        MAX_POOL_SIZE = (i * 2) + 1;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(CORE_POOL_SIZE, MAX_POOL_SIZE, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());
        executor = threadPoolExecutor;
        if (VERSION.SDK_INT >= 9) {
            executor.allowCoreThreadTimeOut(true);
        }
    }

    protected static synchronized OkHttpClient getOKHttpClient() {
        OkHttpClient okHttpClient;
        synchronized (HttpClientUploader.class) {
            if (client == null) {
                Builder okHttpClientBuilder = AVHttpClient.clientInstance().getOkHttpClientBuilder();
                okHttpClientBuilder.readTimeout(30, TimeUnit.SECONDS);
                okHttpClientBuilder.retryOnConnectionFailure(true);
                client = okHttpClientBuilder.build();
            }
            okHttpClient = client;
        }
        return okHttpClient;
    }

    /* access modifiers changed from: protected */
    public Response executeWithRetry(Request request, int i) throws AVException {
        if (i <= 0 || isCancelled()) {
            throw new AVException(-1, "Upload File failure");
        }
        try {
            Response execute = getOKHttpClient().newCall(request).execute();
            if (execute.code() / 100 == 2) {
                return execute;
            }
            if (AVOSCloud.showInternalDebugLog()) {
                avlog.d(AVUtils.stringFromBytes(execute.body().bytes()));
            }
            return executeWithRetry(request, i - 1);
        } catch (IOException unused) {
            return executeWithRetry(request, i - 1);
        }
    }

    public void publishProgress(int i) {
        ProgressCallback progressCallback2 = this.progressCallback;
        if (progressCallback2 != null) {
            progressCallback2.internalDone(Integer.valueOf(i), null);
        }
    }

    public void execute() {
        this.future = executor.submit(new Runnable() {
            public void run() {
                AVException doWork = HttpClientUploader.this.doWork();
                if (!HttpClientUploader.this.cancelled) {
                    if (HttpClientUploader.this.saveCallback != null) {
                        HttpClientUploader.this.saveCallback.internalDone(doWork);
                    }
                } else if (HttpClientUploader.this.saveCallback != null) {
                    HttpClientUploader.this.saveCallback.internalDone(AVErrorUtils.createException(999, "Uploading file task is canceled."));
                }
            }
        });
    }

    public String getFinalUrl() {
        return this.finalUrl;
    }

    public void setFinalUrl(String str) {
        this.finalUrl = str;
    }

    public String getFinalObjectId() {
        return this.finalObjectId;
    }

    public void setFinalObjectId(String str) {
        this.finalObjectId = str;
    }

    public boolean cancel(boolean z) {
        if (this.cancelled) {
            return false;
        }
        this.cancelled = true;
        if (z) {
            interruptImmediately();
        } else if (this.future != null) {
            this.future.cancel(false);
        }
        return true;
    }

    public void interruptImmediately() {
        if (this.future != null) {
            this.future.cancel(true);
        }
    }

    public boolean isCancelled() {
        return this.cancelled;
    }
}
