package okhttp3.internal.http;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.Interceptor.Chain;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.Transmitter;

public final class RealInterceptorChain implements Chain {
    private final Call call;
    private int calls;
    private final int connectTimeout;
    @Nullable
    private final Exchange exchange;
    private final int index;
    private final List<Interceptor> interceptors;
    private final int readTimeout;
    private final Request request;
    private final Transmitter transmitter;
    private final int writeTimeout;

    public RealInterceptorChain(List<Interceptor> list, Transmitter transmitter2, @Nullable Exchange exchange2, int i, Request request2, Call call2, int i2, int i3, int i4) {
        this.interceptors = list;
        this.transmitter = transmitter2;
        this.exchange = exchange2;
        this.index = i;
        this.request = request2;
        this.call = call2;
        this.connectTimeout = i2;
        this.readTimeout = i3;
        this.writeTimeout = i4;
    }

    @Nullable
    public Connection connection() {
        Exchange exchange2 = this.exchange;
        if (exchange2 != null) {
            return exchange2.connection();
        }
        return null;
    }

    public int connectTimeoutMillis() {
        return this.connectTimeout;
    }

    public Chain withConnectTimeout(int i, TimeUnit timeUnit) {
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this.interceptors, this.transmitter, this.exchange, this.index, this.request, this.call, Util.checkDuration("timeout", (long) i, timeUnit), this.readTimeout, this.writeTimeout);
        return realInterceptorChain;
    }

    public int readTimeoutMillis() {
        return this.readTimeout;
    }

    public Chain withReadTimeout(int i, TimeUnit timeUnit) {
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this.interceptors, this.transmitter, this.exchange, this.index, this.request, this.call, this.connectTimeout, Util.checkDuration("timeout", (long) i, timeUnit), this.writeTimeout);
        return realInterceptorChain;
    }

    public int writeTimeoutMillis() {
        return this.writeTimeout;
    }

    public Chain withWriteTimeout(int i, TimeUnit timeUnit) {
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this.interceptors, this.transmitter, this.exchange, this.index, this.request, this.call, this.connectTimeout, this.readTimeout, Util.checkDuration("timeout", (long) i, timeUnit));
        return realInterceptorChain;
    }

    public Transmitter transmitter() {
        return this.transmitter;
    }

    public Exchange exchange() {
        Exchange exchange2 = this.exchange;
        if (exchange2 != null) {
            return exchange2;
        }
        throw new IllegalStateException();
    }

    public Call call() {
        return this.call;
    }

    public Request request() {
        return this.request;
    }

    public Response proceed(Request request2) throws IOException {
        return proceed(request2, this.transmitter, this.exchange);
    }

    public Response proceed(Request request2, Transmitter transmitter2, @Nullable Exchange exchange2) throws IOException {
        if (this.index < this.interceptors.size()) {
            this.calls++;
            Exchange exchange3 = this.exchange;
            String str = "network interceptor ";
            if (exchange3 == null || exchange3.connection().supportsUrl(request2.url())) {
                String str2 = " must call proceed() exactly once";
                if (this.exchange == null || this.calls <= 1) {
                    RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this.interceptors, transmitter2, exchange2, this.index + 1, request2, this.call, this.connectTimeout, this.readTimeout, this.writeTimeout);
                    Interceptor interceptor = (Interceptor) this.interceptors.get(this.index);
                    Response intercept = interceptor.intercept(realInterceptorChain);
                    if (exchange2 == null || this.index + 1 >= this.interceptors.size() || realInterceptorChain.calls == 1) {
                        String str3 = "interceptor ";
                        if (intercept == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(str3);
                            sb.append(interceptor);
                            sb.append(" returned null");
                            throw new NullPointerException(sb.toString());
                        } else if (intercept.body() != null) {
                            return intercept;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(str3);
                            sb2.append(interceptor);
                            sb2.append(" returned a response with no body");
                            throw new IllegalStateException(sb2.toString());
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(str);
                        sb3.append(interceptor);
                        sb3.append(str2);
                        throw new IllegalStateException(sb3.toString());
                    }
                } else {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(str);
                    sb4.append(this.interceptors.get(this.index - 1));
                    sb4.append(str2);
                    throw new IllegalStateException(sb4.toString());
                }
            } else {
                StringBuilder sb5 = new StringBuilder();
                sb5.append(str);
                sb5.append(this.interceptors.get(this.index - 1));
                sb5.append(" must retain the same host and port");
                throw new IllegalStateException(sb5.toString());
            }
        } else {
            throw new AssertionError();
        }
    }
}
