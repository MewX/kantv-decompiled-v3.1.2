package org.jsoup;

import java.io.IOException;

public class UnsupportedMimeTypeException extends IOException {
    private String mimeType;
    private String url;

    public UnsupportedMimeTypeException(String str, String str2, String str3) {
        super(str);
        this.mimeType = str2;
        this.url = str3;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getUrl() {
        return this.url;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(". Mimetype=");
        sb.append(this.mimeType);
        sb.append(", URL=");
        sb.append(this.url);
        return sb.toString();
    }
}
