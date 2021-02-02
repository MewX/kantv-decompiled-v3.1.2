package com.koushikdutta.async.http.cache;

import android.net.Uri;
import com.koushikdutta.async.http.HttpDate;
import com.koushikdutta.async.http.cache.HeaderParser.CacheControlHandler;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;

final class ResponseHeaders {
    private static final String RECEIVED_MILLIS = "X-Android-Received-Millis";
    private static final String SENT_MILLIS = "X-Android-Sent-Millis";
    private int ageSeconds = -1;
    private String connection;
    private String contentEncoding;
    private long contentLength = -1;
    private String etag;
    private Date expires;
    private final RawHeaders headers;
    /* access modifiers changed from: private */
    public boolean isPublic;
    private Date lastModified;
    /* access modifiers changed from: private */
    public int maxAgeSeconds = -1;
    /* access modifiers changed from: private */
    public boolean mustRevalidate;
    /* access modifiers changed from: private */
    public boolean noCache;
    /* access modifiers changed from: private */
    public boolean noStore;
    private String proxyAuthenticate;
    private long receivedResponseMillis;
    /* access modifiers changed from: private */
    public int sMaxAgeSeconds = -1;
    private long sentRequestMillis;
    private Date servedDate;
    private String transferEncoding;
    private final Uri uri;
    private Set<String> varyFields = Collections.emptySet();
    private String wwwAuthenticate;

    public ResponseHeaders(Uri uri2, RawHeaders rawHeaders) {
        this.uri = uri2;
        this.headers = rawHeaders;
        AnonymousClass1 r9 = new CacheControlHandler() {
            public void handle(String str, String str2) {
                if (str.equalsIgnoreCase(HttpHeaderValues.NO_CACHE)) {
                    ResponseHeaders.this.noCache = true;
                } else if (str.equalsIgnoreCase("no-store")) {
                    ResponseHeaders.this.noStore = true;
                } else if (str.equalsIgnoreCase("max-age")) {
                    ResponseHeaders.this.maxAgeSeconds = HeaderParser.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("s-maxage")) {
                    ResponseHeaders.this.sMaxAgeSeconds = HeaderParser.parseSeconds(str2);
                } else if (str.equalsIgnoreCase("public")) {
                    ResponseHeaders.this.isPublic = true;
                } else if (str.equalsIgnoreCase("must-revalidate")) {
                    ResponseHeaders.this.mustRevalidate = true;
                }
            }
        };
        for (int i = 0; i < rawHeaders.length(); i++) {
            String fieldName = rawHeaders.getFieldName(i);
            String value = rawHeaders.getValue(i);
            if ("Cache-Control".equalsIgnoreCase(fieldName)) {
                HeaderParser.parseCacheControl(value, r9);
            } else if ("Date".equalsIgnoreCase(fieldName)) {
                this.servedDate = HttpDate.parse(value);
            } else if ("Expires".equalsIgnoreCase(fieldName)) {
                this.expires = HttpDate.parse(value);
            } else if ("Last-Modified".equalsIgnoreCase(fieldName)) {
                this.lastModified = HttpDate.parse(value);
            } else if ("ETag".equalsIgnoreCase(fieldName)) {
                this.etag = value;
            } else if (HttpHeaders.PRAGMA.equalsIgnoreCase(fieldName)) {
                if (value.equalsIgnoreCase(HttpHeaderValues.NO_CACHE)) {
                    this.noCache = true;
                }
            } else if (HttpHeaders.AGE.equalsIgnoreCase(fieldName)) {
                this.ageSeconds = HeaderParser.parseSeconds(value);
            } else if (HttpHeaders.VARY.equalsIgnoreCase(fieldName)) {
                if (this.varyFields.isEmpty()) {
                    this.varyFields = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                for (String trim : value.split(",")) {
                    this.varyFields.add(trim.trim().toLowerCase(Locale.US));
                }
            } else if ("Content-Encoding".equalsIgnoreCase(fieldName)) {
                this.contentEncoding = value;
            } else if (HttpHeaders.TRANSFER_ENCODING.equalsIgnoreCase(fieldName)) {
                this.transferEncoding = value;
            } else if ("Content-Length".equalsIgnoreCase(fieldName)) {
                try {
                    this.contentLength = Long.parseLong(value);
                } catch (NumberFormatException unused) {
                }
            } else if (HttpHeaders.CONNECTION.equalsIgnoreCase(fieldName)) {
                this.connection = value;
            } else if (HttpHeaders.PROXY_AUTHENTICATE.equalsIgnoreCase(fieldName)) {
                this.proxyAuthenticate = value;
            } else if (HttpHeaders.WWW_AUTHENTICATE.equalsIgnoreCase(fieldName)) {
                this.wwwAuthenticate = value;
            } else if (SENT_MILLIS.equalsIgnoreCase(fieldName)) {
                this.sentRequestMillis = Long.parseLong(value);
            } else if (RECEIVED_MILLIS.equalsIgnoreCase(fieldName)) {
                this.receivedResponseMillis = Long.parseLong(value);
            }
        }
    }

    public boolean isContentEncodingGzip() {
        return "gzip".equalsIgnoreCase(this.contentEncoding);
    }

    public void stripContentEncoding() {
        this.contentEncoding = null;
        this.headers.removeAll("Content-Encoding");
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

    public Date getServedDate() {
        return this.servedDate;
    }

    public Date getLastModified() {
        return this.lastModified;
    }

    public Date getExpires() {
        return this.expires;
    }

    public boolean isNoCache() {
        return this.noCache;
    }

    public boolean isNoStore() {
        return this.noStore;
    }

    public int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int getSMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public boolean isMustRevalidate() {
        return this.mustRevalidate;
    }

    public String getEtag() {
        return this.etag;
    }

    public Set<String> getVaryFields() {
        return this.varyFields;
    }

    public String getContentEncoding() {
        return this.contentEncoding;
    }

    public long getContentLength() {
        return this.contentLength;
    }

    public String getConnection() {
        return this.connection;
    }

    public String getProxyAuthenticate() {
        return this.proxyAuthenticate;
    }

    public String getWwwAuthenticate() {
        return this.wwwAuthenticate;
    }

    public void setLocalTimestamps(long j, long j2) {
        this.sentRequestMillis = j;
        this.headers.add(SENT_MILLIS, Long.toString(j));
        this.receivedResponseMillis = j2;
        this.headers.add(RECEIVED_MILLIS, Long.toString(j2));
    }

    private long computeAge(long j) {
        Date date = this.servedDate;
        long j2 = 0;
        if (date != null) {
            j2 = Math.max(0, this.receivedResponseMillis - date.getTime());
        }
        if (this.ageSeconds != -1) {
            j2 = Math.max(j2, TimeUnit.SECONDS.toMillis((long) this.ageSeconds));
        }
        long j3 = this.receivedResponseMillis;
        return j2 + (j3 - this.sentRequestMillis) + (j - j3);
    }

    private long computeFreshnessLifetime() {
        if (this.maxAgeSeconds != -1) {
            return TimeUnit.SECONDS.toMillis((long) this.maxAgeSeconds);
        }
        long j = 0;
        if (this.expires != null) {
            Date date = this.servedDate;
            long time = this.expires.getTime() - (date != null ? date.getTime() : this.receivedResponseMillis);
            if (time > 0) {
                j = time;
            }
            return j;
        }
        if (this.lastModified != null && this.uri.getEncodedQuery() == null) {
            Date date2 = this.servedDate;
            long time2 = (date2 != null ? date2.getTime() : this.sentRequestMillis) - this.lastModified.getTime();
            if (time2 > 0) {
                j = time2 / 10;
            }
        }
        return j;
    }

    private boolean isFreshnessLifetimeHeuristic() {
        return this.maxAgeSeconds == -1 && this.expires == null;
    }

    public boolean isCacheable(RequestHeaders requestHeaders) {
        int responseCode = this.headers.getResponseCode();
        if (responseCode != 200 && responseCode != 203 && responseCode != 300 && responseCode != 301 && responseCode != 410) {
            return false;
        }
        if ((!requestHeaders.hasAuthorization() || this.isPublic || this.mustRevalidate || this.sMaxAgeSeconds != -1) && !this.noStore) {
            return true;
        }
        return false;
    }

    public boolean hasVaryAll() {
        return this.varyFields.contains("*");
    }

    public boolean varyMatches(Map<String, List<String>> map, Map<String, List<String>> map2) {
        for (String str : this.varyFields) {
            if (!Objects.equal(map.get(str), map2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public ResponseSource chooseResponseSource(long j, RequestHeaders requestHeaders) {
        if (!isCacheable(requestHeaders)) {
            return ResponseSource.NETWORK;
        }
        if (requestHeaders.isNoCache() || requestHeaders.hasConditions()) {
            return ResponseSource.NETWORK;
        }
        long computeAge = computeAge(j);
        long computeFreshnessLifetime = computeFreshnessLifetime();
        if (requestHeaders.getMaxAgeSeconds() != -1) {
            computeFreshnessLifetime = Math.min(computeFreshnessLifetime, TimeUnit.SECONDS.toMillis((long) requestHeaders.getMaxAgeSeconds()));
        }
        long j2 = 0;
        long millis = requestHeaders.getMinFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis((long) requestHeaders.getMinFreshSeconds()) : 0;
        if (!this.mustRevalidate && requestHeaders.getMaxStaleSeconds() != -1) {
            j2 = TimeUnit.SECONDS.toMillis((long) requestHeaders.getMaxStaleSeconds());
        }
        if (!this.noCache) {
            long j3 = millis + computeAge;
            if (j3 < j2 + computeFreshnessLifetime) {
                String str = HttpHeaders.WARNING;
                if (j3 >= computeFreshnessLifetime) {
                    this.headers.add(str, "110 HttpURLConnection \"Response is stale\"");
                }
                if (computeAge > 86400000 && isFreshnessLifetimeHeuristic()) {
                    this.headers.add(str, "113 HttpURLConnection \"Heuristic expiration\"");
                }
                return ResponseSource.CACHE;
            }
        }
        String str2 = this.etag;
        if (str2 != null) {
            requestHeaders.setIfNoneMatch(str2);
        } else {
            Date date = this.lastModified;
            if (date != null) {
                requestHeaders.setIfModifiedSince(date);
            } else {
                Date date2 = this.servedDate;
                if (date2 != null) {
                    requestHeaders.setIfModifiedSince(date2);
                }
            }
        }
        return requestHeaders.hasConditions() ? ResponseSource.CONDITIONAL_CACHE : ResponseSource.NETWORK;
    }

    public boolean validate(ResponseHeaders responseHeaders) {
        if (responseHeaders.headers.getResponseCode() == 304) {
            return true;
        }
        if (this.lastModified != null) {
            Date date = responseHeaders.lastModified;
            if (date != null && date.getTime() < this.lastModified.getTime()) {
                return true;
            }
        }
        return false;
    }

    public ResponseHeaders combine(ResponseHeaders responseHeaders) {
        RawHeaders rawHeaders = new RawHeaders();
        for (int i = 0; i < this.headers.length(); i++) {
            String fieldName = this.headers.getFieldName(i);
            String value = this.headers.getValue(i);
            if ((!fieldName.equals(HttpHeaders.WARNING) || !value.startsWith("1")) && (!isEndToEnd(fieldName) || responseHeaders.headers.get(fieldName) == null)) {
                rawHeaders.add(fieldName, value);
            }
        }
        for (int i2 = 0; i2 < responseHeaders.headers.length(); i2++) {
            String fieldName2 = responseHeaders.headers.getFieldName(i2);
            if (isEndToEnd(fieldName2)) {
                rawHeaders.add(fieldName2, responseHeaders.headers.getValue(i2));
            }
        }
        return new ResponseHeaders(this.uri, rawHeaders);
    }

    private static boolean isEndToEnd(String str) {
        return !str.equalsIgnoreCase(HttpHeaders.CONNECTION) && !str.equalsIgnoreCase(HttpHeaders.KEEP_ALIVE) && !str.equalsIgnoreCase(HttpHeaders.PROXY_AUTHENTICATE) && !str.equalsIgnoreCase("Proxy-Authorization") && !str.equalsIgnoreCase("TE") && !str.equalsIgnoreCase("Trailers") && !str.equalsIgnoreCase(HttpHeaders.TRANSFER_ENCODING) && !str.equalsIgnoreCase("Upgrade");
    }
}
