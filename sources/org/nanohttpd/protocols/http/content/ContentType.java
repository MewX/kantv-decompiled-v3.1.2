package org.nanohttpd.protocols.http.content;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ContentType {
    private static final String ASCII_ENCODING = "US-ASCII";
    private static final Pattern BOUNDARY_PATTERN = Pattern.compile(BOUNDARY_REGEX, 2);
    private static final String BOUNDARY_REGEX = "[ |\t]*(boundary)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?";
    private static final Pattern CHARSET_PATTERN = Pattern.compile(CHARSET_REGEX, 2);
    private static final String CHARSET_REGEX = "[ |\t]*(charset)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?";
    private static final String CONTENT_REGEX = "[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)";
    private static final Pattern MIME_PATTERN = Pattern.compile(CONTENT_REGEX, 2);
    private static final String MULTIPART_FORM_DATA_HEADER = "multipart/form-data";
    private final String boundary;
    private final String contentType;
    private final String contentTypeHeader;
    private final String encoding;

    public ContentType(String str) {
        this.contentTypeHeader = str;
        String str2 = "";
        if (str != null) {
            this.contentType = getDetailFromContentHeader(str, MIME_PATTERN, str2, 1);
            this.encoding = getDetailFromContentHeader(str, CHARSET_PATTERN, null, 2);
        } else {
            this.contentType = str2;
            this.encoding = "UTF-8";
        }
        if ("multipart/form-data".equalsIgnoreCase(this.contentType)) {
            this.boundary = getDetailFromContentHeader(str, BOUNDARY_PATTERN, null, 2);
        } else {
            this.boundary = null;
        }
    }

    private String getDetailFromContentHeader(String str, Pattern pattern, String str2, int i) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(i) : str2;
    }

    public String getContentTypeHeader() {
        return this.contentTypeHeader;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getEncoding() {
        String str = this.encoding;
        return str == null ? "US-ASCII" : str;
    }

    public String getBoundary() {
        return this.boundary;
    }

    public boolean isMultipart() {
        return "multipart/form-data".equalsIgnoreCase(this.contentType);
    }

    public ContentType tryUTF8() {
        if (this.encoding != null) {
            return this;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.contentTypeHeader);
        sb.append("; charset=UTF-8");
        return new ContentType(sb.toString());
    }
}
