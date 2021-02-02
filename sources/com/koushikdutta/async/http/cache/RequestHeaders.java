package com.koushikdutta.async.http.cache;

import android.net.Uri;
import com.koushikdutta.async.http.HttpDate;
import com.koushikdutta.async.http.cache.HeaderParser.CacheControlHandler;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;

final class RequestHeaders {
    private String acceptEncoding;
    private String connection;
    private int contentLength = -1;
    private String contentType;
    private boolean hasAuthorization;
    private final RawHeaders headers;
    private String host;
    private String ifModifiedSince;
    private String ifNoneMatch;
    /* access modifiers changed from: private */
    public int maxAgeSeconds = -1;
    /* access modifiers changed from: private */
    public int maxStaleSeconds = -1;
    /* access modifiers changed from: private */
    public int minFreshSeconds = -1;
    /* access modifiers changed from: private */
    public boolean noCache;
    /* access modifiers changed from: private */
    public boolean onlyIfCached;
    private String proxyAuthorization;
    private String transferEncoding;
    private final Uri uri;
    private String userAgent;

    public RequestHeaders(Uri uri2, RawHeaders rawHeaders) {
        this.uri = uri2;
        this.headers = rawHeaders;
        AnonymousClass1 r6 = new CacheControlHandler() {
            public void handle(String str, String str2) {
                if (str.equalsIgnoreCase(HttpHeaderValues.NO_CACHE)) {
                    RequestHeaders.this.noCache = true;
                } else if (str.equalsIgnoreCase("max-age")) {
                    RequestHeaders.this.maxAgeSeconds = HeaderParser.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("max-stale")) {
                    RequestHeaders.this.maxStaleSeconds = HeaderParser.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("min-fresh")) {
                    RequestHeaders.this.minFreshSeconds = HeaderParser.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("only-if-cached")) {
                    RequestHeaders.this.onlyIfCached = true;
                }
            }
        };
        for (int i = 0; i < rawHeaders.length(); i++) {
            String fieldName = rawHeaders.getFieldName(i);
            String value = rawHeaders.getValue(i);
            if ("Cache-Control".equalsIgnoreCase(fieldName)) {
                HeaderParser.parseCacheControl(value, r6);
            } else if (HttpHeaders.PRAGMA.equalsIgnoreCase(fieldName)) {
                if (value.equalsIgnoreCase(HttpHeaderValues.NO_CACHE)) {
                    this.noCache = true;
                }
            } else if ("If-None-Match".equalsIgnoreCase(fieldName)) {
                this.ifNoneMatch = value;
            } else if (HttpHeaders.IF_MODIFIED_SINCE.equalsIgnoreCase(fieldName)) {
                this.ifModifiedSince = value;
            } else if ("Authorization".equalsIgnoreCase(fieldName)) {
                this.hasAuthorization = true;
            } else if ("Content-Length".equalsIgnoreCase(fieldName)) {
                try {
                    this.contentLength = Integer.parseInt(value);
                } catch (NumberFormatException unused) {
                }
            } else if (HttpHeaders.TRANSFER_ENCODING.equalsIgnoreCase(fieldName)) {
                this.transferEncoding = value;
            } else if ("User-Agent".equalsIgnoreCase(fieldName)) {
                this.userAgent = value;
            } else if (HttpHeaders.HOST.equalsIgnoreCase(fieldName)) {
                this.host = value;
            } else if (HttpHeaders.CONNECTION.equalsIgnoreCase(fieldName)) {
                this.connection = value;
            } else if ("Accept-Encoding".equalsIgnoreCase(fieldName)) {
                this.acceptEncoding = value;
            } else if ("Content-Type".equalsIgnoreCase(fieldName)) {
                this.contentType = value;
            } else if ("Proxy-Authorization".equalsIgnoreCase(fieldName)) {
                this.proxyAuthorization = value;
            }
        }
    }

    public boolean isChunked() {
        return HttpHeaderValues.CHUNKED.equalsIgnoreCase(this.transferEncoding);
    }

    public boolean hasConnectionClose() {
        return "close".equalsIgnoreCase(this.connection);
    }

    public Uri getUri() {
        return this.uri;
    }

    public RawHeaders getHeaders() {
        return this.headers;
    }

    public boolean isNoCache() {
        return this.noCache;
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int getMaxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public int getMinFreshSeconds() {
        return this.minFreshSeconds;
    }

    public boolean isOnlyIfCached() {
        return this.onlyIfCached;
    }

    public boolean hasAuthorization() {
        return this.hasAuthorization;
    }

    public int getContentLength() {
        return this.contentLength;
    }

    public String getTransferEncoding() {
        return this.transferEncoding;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String getHost() {
        return this.host;
    }

    public String getConnection() {
        return this.connection;
    }

    public String getAcceptEncoding() {
        return this.acceptEncoding;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getIfModifiedSince() {
        return this.ifModifiedSince;
    }

    public String getIfNoneMatch() {
        return this.ifNoneMatch;
    }

    public String getProxyAuthorization() {
        return this.proxyAuthorization;
    }

    public void setChunked() {
        String str = this.transferEncoding;
        String str2 = HttpHeaders.TRANSFER_ENCODING;
        if (str != null) {
            this.headers.removeAll(str2);
        }
        RawHeaders rawHeaders = this.headers;
        String str3 = HttpHeaderValues.CHUNKED;
        rawHeaders.add(str2, str3);
        this.transferEncoding = str3;
    }

    public void setContentLength(int i) {
        String str = "Content-Length";
        if (this.contentLength != -1) {
            this.headers.removeAll(str);
        }
        if (i != -1) {
            this.headers.add(str, Integer.toString(i));
        }
        this.contentLength = i;
    }

    public void setUserAgent(String str) {
        String str2 = "User-Agent";
        if (this.userAgent != null) {
            this.headers.removeAll(str2);
        }
        this.headers.add(str2, str);
        this.userAgent = str;
    }

    public void setHost(String str) {
        String str2 = this.host;
        String str3 = HttpHeaders.HOST;
        if (str2 != null) {
            this.headers.removeAll(str3);
        }
        this.headers.add(str3, str);
        this.host = str;
    }

    public void setConnection(String str) {
        String str2 = this.connection;
        String str3 = HttpHeaders.CONNECTION;
        if (str2 != null) {
            this.headers.removeAll(str3);
        }
        this.headers.add(str3, str);
        this.connection = str;
    }

    public void setAcceptEncoding(String str) {
        String str2 = "Accept-Encoding";
        if (this.acceptEncoding != null) {
            this.headers.removeAll(str2);
        }
        this.headers.add(str2, str);
        this.acceptEncoding = str;
    }

    public void setContentType(String str) {
        String str2 = "Content-Type";
        if (this.contentType != null) {
            this.headers.removeAll(str2);
        }
        this.headers.add(str2, str);
        this.contentType = str;
    }

    public void setIfModifiedSince(Date date) {
        String str = this.ifModifiedSince;
        String str2 = HttpHeaders.IF_MODIFIED_SINCE;
        if (str != null) {
            this.headers.removeAll(str2);
        }
        String format = HttpDate.format(date);
        this.headers.add(str2, format);
        this.ifModifiedSince = format;
    }

    public void setIfNoneMatch(String str) {
        String str2 = "If-None-Match";
        if (this.ifNoneMatch != null) {
            this.headers.removeAll(str2);
        }
        this.headers.add(str2, str);
        this.ifNoneMatch = str;
    }

    public boolean hasConditions() {
        return (this.ifModifiedSince == null && this.ifNoneMatch == null) ? false : true;
    }

    public void addCookies(Map<String, List<String>> map) {
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (HttpHeaders.COOKIE.equalsIgnoreCase(str) || "Cookie2".equalsIgnoreCase(str)) {
                this.headers.addAll(str, (List) entry.getValue());
            }
        }
    }
}
