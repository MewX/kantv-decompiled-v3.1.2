package com.koushikdutta.async.http;

import android.net.Uri;
import android.util.Log;
import com.koushikdutta.async.AsyncSSLException;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;
import java.util.Locale;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;

public class AsyncHttpRequest {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DEFAULT_TIMEOUT = 30000;
    String LOGTAG;
    long executionTime;
    int logLevel;
    private AsyncHttpRequestBody mBody;
    private boolean mFollowRedirect;
    /* access modifiers changed from: private */
    public String mMethod;
    private Headers mRawHeaders;
    int mTimeout;
    String proxyHost;
    int proxyPort;
    Uri uri;

    public void onHandshakeException(AsyncSSLException asyncSSLException) {
    }

    public RequestLine getRequestLine() {
        return new RequestLine() {
            public String getUri() {
                return AsyncHttpRequest.this.getUri().toString();
            }

            public ProtocolVersion getProtocolVersion() {
                return new ProtocolVersion("HTTP", 1, 1);
            }

            public String getMethod() {
                return AsyncHttpRequest.this.mMethod;
            }

            public String toString() {
                String str = "%s %s HTTP/1.1";
                if (AsyncHttpRequest.this.proxyHost != null) {
                    return String.format(Locale.ENGLISH, str, new Object[]{AsyncHttpRequest.this.mMethod, AsyncHttpRequest.this.getUri()});
                }
                String encodedPath = AsyncHttpRequest.this.getUri().getEncodedPath();
                if (encodedPath == null || encodedPath.length() == 0) {
                    encodedPath = "/";
                }
                String encodedQuery = AsyncHttpRequest.this.getUri().getEncodedQuery();
                if (!(encodedQuery == null || encodedQuery.length() == 0)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(encodedPath);
                    sb.append("?");
                    sb.append(encodedQuery);
                    encodedPath = sb.toString();
                }
                return String.format(Locale.ENGLISH, str, new Object[]{AsyncHttpRequest.this.mMethod, encodedPath});
            }
        };
    }

    protected static String getDefaultUserAgent() {
        String property = System.getProperty("http.agent");
        if (property != null) {
            return property;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Java");
        sb.append(System.getProperty("java.version"));
        return sb.toString();
    }

    public String getMethod() {
        return this.mMethod;
    }

    public AsyncHttpRequest setMethod(String str) {
        if (getClass() == AsyncHttpRequest.class) {
            this.mMethod = str;
            return this;
        }
        throw new UnsupportedOperationException("can't change method on a subclass of AsyncHttpRequest");
    }

    public AsyncHttpRequest(Uri uri2, String str) {
        this(uri2, str, null);
    }

    public static void setDefaultHeaders(Headers headers, Uri uri2) {
        if (uri2 != null) {
            String host = uri2.getHost();
            if (uri2.getPort() != -1) {
                StringBuilder sb = new StringBuilder();
                sb.append(host);
                sb.append(":");
                sb.append(uri2.getPort());
                host = sb.toString();
            }
            if (host != null) {
                headers.set(HttpHeaders.HOST, host);
            }
        }
        headers.set("User-Agent", getDefaultUserAgent());
        headers.set("Accept-Encoding", "gzip, deflate");
        headers.set(HttpHeaders.CONNECTION, HttpHeaderValues.KEEP_ALIVE);
        headers.set("Accept", "*/*");
    }

    public AsyncHttpRequest(Uri uri2, String str, Headers headers) {
        this.mRawHeaders = new Headers();
        this.mFollowRedirect = true;
        this.mTimeout = DEFAULT_TIMEOUT;
        this.proxyPort = -1;
        this.mMethod = str;
        this.uri = uri2;
        if (headers == null) {
            this.mRawHeaders = new Headers();
        } else {
            this.mRawHeaders = headers;
        }
        if (headers == null) {
            setDefaultHeaders(this.mRawHeaders, uri2);
        }
    }

    public Uri getUri() {
        return this.uri;
    }

    public Headers getHeaders() {
        return this.mRawHeaders;
    }

    public boolean getFollowRedirect() {
        return this.mFollowRedirect;
    }

    public AsyncHttpRequest setFollowRedirect(boolean z) {
        this.mFollowRedirect = z;
        return this;
    }

    public void setBody(AsyncHttpRequestBody asyncHttpRequestBody) {
        this.mBody = asyncHttpRequestBody;
    }

    public AsyncHttpRequestBody getBody() {
        return this.mBody;
    }

    public int getTimeout() {
        return this.mTimeout;
    }

    public AsyncHttpRequest setTimeout(int i) {
        this.mTimeout = i;
        return this;
    }

    public AsyncHttpRequest setHeader(String str, String str2) {
        getHeaders().set(str, str2);
        return this;
    }

    public AsyncHttpRequest addHeader(String str, String str2) {
        getHeaders().add(str, str2);
        return this;
    }

    public void enableProxy(String str, int i) {
        this.proxyHost = str;
        this.proxyPort = i;
    }

    public void disableProxy() {
        this.proxyHost = null;
        this.proxyPort = -1;
    }

    public String getProxyHost() {
        return this.proxyHost;
    }

    public int getProxyPort() {
        return this.proxyPort;
    }

    public String toString() {
        Headers headers = this.mRawHeaders;
        if (headers == null) {
            return super.toString();
        }
        return headers.toPrefixString(this.uri.toString());
    }

    public void setLogging(String str, int i) {
        this.LOGTAG = str;
        this.logLevel = i;
    }

    public int getLogLevel() {
        return this.logLevel;
    }

    public String getLogTag() {
        return this.LOGTAG;
    }

    private String getLogMessage(String str) {
        long j = 0;
        if (this.executionTime != 0) {
            j = System.currentTimeMillis() - this.executionTime;
        }
        return String.format(Locale.ENGLISH, "(%d ms) %s: %s", new Object[]{Long.valueOf(j), getUri(), str});
    }

    public void logi(String str) {
        String str2 = this.LOGTAG;
        if (str2 != null && this.logLevel <= 4) {
            Log.i(str2, getLogMessage(str));
        }
    }

    public void logv(String str) {
        String str2 = this.LOGTAG;
        if (str2 != null && this.logLevel <= 2) {
            Log.v(str2, getLogMessage(str));
        }
    }

    public void logw(String str) {
        String str2 = this.LOGTAG;
        if (str2 != null && this.logLevel <= 5) {
            Log.w(str2, getLogMessage(str));
        }
    }

    public void logd(String str) {
        String str2 = this.LOGTAG;
        if (str2 != null && this.logLevel <= 3) {
            Log.d(str2, getLogMessage(str));
        }
    }

    public void logd(String str, Exception exc) {
        String str2 = this.LOGTAG;
        if (str2 != null && this.logLevel <= 3) {
            Log.d(str2, getLogMessage(str));
            Log.d(this.LOGTAG, exc.getMessage(), exc);
        }
    }

    public void loge(String str) {
        String str2 = this.LOGTAG;
        if (str2 != null && this.logLevel <= 6) {
            Log.e(str2, getLogMessage(str));
        }
    }

    public void loge(String str, Exception exc) {
        String str2 = this.LOGTAG;
        if (str2 != null && this.logLevel <= 6) {
            Log.e(str2, getLogMessage(str));
            Log.e(this.LOGTAG, exc.getMessage(), exc);
        }
    }
}
