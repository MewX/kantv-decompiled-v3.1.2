package com.avos.avoscloud;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.OkHttpClient.Builder;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
import okio.Source;

public class AVHttpClient {
    public static final MediaType JSON = MediaType.parse("application/json");
    private static AVHttpClient avHttpClient;
    private OkHttpClient okHttpClient;

    private static class ProgressInterceptor implements Interceptor {
        private ProgressListener progressListener;

        public ProgressInterceptor(ProgressListener progressListener2) {
            this.progressListener = progressListener2;
        }

        public Response intercept(Chain chain) throws IOException {
            Response proceed = chain.proceed(chain.request());
            return proceed.newBuilder().body(new ProgressResponseBody(proceed.body(), this.progressListener)).build();
        }
    }

    interface ProgressListener {
        void update(long j, long j2, boolean z);
    }

    private static class ProgressResponseBody extends ResponseBody {
        private BufferedSource bufferedSource;
        /* access modifiers changed from: private */
        public final ProgressListener progressListener;
        /* access modifiers changed from: private */
        public final ResponseBody responseBody;

        ProgressResponseBody(ResponseBody responseBody2, ProgressListener progressListener2) {
            this.responseBody = responseBody2;
            this.progressListener = progressListener2;
        }

        public MediaType contentType() {
            return this.responseBody.contentType();
        }

        public long contentLength() {
            return this.responseBody.contentLength();
        }

        public BufferedSource source() {
            if (this.bufferedSource == null) {
                this.bufferedSource = Okio.buffer(source(this.responseBody.source()));
            }
            return this.bufferedSource;
        }

        private Source source(Source source) {
            return new ForwardingSource(source) {
                long totalBytesRead = 0;

                public long read(Buffer buffer, long j) throws IOException {
                    long read = super.read(buffer, j);
                    this.totalBytesRead += read != -1 ? read : 0;
                    ProgressResponseBody.this.progressListener.update(this.totalBytesRead, ProgressResponseBody.this.responseBody.contentLength(), read == -1);
                    return read;
                }
            };
        }
    }

    private static class RequestStatisticInterceptor implements Interceptor {
        private RequestStatisticInterceptor() {
        }

        public Response intercept(Chain chain) throws IOException {
            Request request = chain.request();
            long currentTimeMillis = System.currentTimeMillis();
            boolean z = !AVUtils.isBlankString(request.header(PaasClient.REQUEST_STATIS_HEADER));
            try {
                Response proceed = chain.proceed(request);
                if (z) {
                    RequestStatisticsUtil.getInstance().recordRequestTime(proceed.code(), false, System.currentTimeMillis() - currentTimeMillis);
                }
                return proceed;
            } catch (IOException e) {
                if (z) {
                    RequestStatisticsUtil.getInstance().recordRequestTime(0, e instanceof SocketTimeoutException, System.currentTimeMillis() - currentTimeMillis);
                }
                throw e;
            }
        }
    }

    private AVHttpClient(OkHttpClient okHttpClient2, int i, ProgressInterceptor progressInterceptor) {
        Builder builder;
        if (okHttpClient2 != null) {
            builder = okHttpClient2.newBuilder();
        } else {
            builder = new Builder();
            builder.dns(DNSAmendNetwork.getInstance());
            builder.addInterceptor(new RequestStatisticInterceptor());
        }
        builder.connectTimeout((long) i, TimeUnit.MILLISECONDS);
        if (progressInterceptor != null) {
            builder.addNetworkInterceptor(progressInterceptor);
        }
        this.okHttpClient = builder.build();
    }

    public static synchronized AVHttpClient clientInstance() {
        AVHttpClient aVHttpClient;
        synchronized (AVHttpClient.class) {
            if (avHttpClient == null) {
                avHttpClient = new AVHttpClient(null, AVOSCloud.getNetworkTimeout(), null);
            }
            aVHttpClient = avHttpClient;
        }
        return aVHttpClient;
    }

    public static synchronized AVHttpClient progressClientInstance(ProgressListener progressListener) {
        AVHttpClient aVHttpClient;
        synchronized (AVHttpClient.class) {
            if (avHttpClient == null) {
                avHttpClient = new AVHttpClient(null, AVOSCloud.getNetworkTimeout(), null);
            }
            aVHttpClient = new AVHttpClient(avHttpClient.okHttpClient, AVOSCloud.getNetworkTimeout(), new ProgressInterceptor(progressListener));
        }
        return aVHttpClient;
    }

    public static synchronized AVHttpClient newClientInstance(int i) {
        AVHttpClient aVHttpClient;
        synchronized (AVHttpClient.class) {
            if (avHttpClient == null) {
                avHttpClient = new AVHttpClient(null, AVOSCloud.getNetworkTimeout(), null);
            }
            aVHttpClient = new AVHttpClient(avHttpClient.okHttpClient, i, null);
        }
        return aVHttpClient;
    }

    public synchronized Builder getOkHttpClientBuilder() {
        return this.okHttpClient.newBuilder();
    }

    public void execute(Request request, boolean z, Callback callback) {
        Call call = getCall(request);
        if (z) {
            try {
                callback.onResponse(call, call.execute());
            } catch (IOException e) {
                callback.onFailure(call, e);
            }
        } else {
            call.enqueue(callback);
        }
    }

    private synchronized Call getCall(Request request) {
        return this.okHttpClient.newCall(request);
    }
}
