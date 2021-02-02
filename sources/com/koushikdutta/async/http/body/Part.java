package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.NameValuePair;
import java.io.File;
import java.util.List;
import java.util.Locale;

public class Part {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final String CONTENT_DISPOSITION = "Content-Disposition";
    private long length = -1;
    Multimap mContentDisposition;
    Headers mHeaders;

    public void write(DataSink dataSink, CompletedCallback completedCallback) {
    }

    public Part(Headers headers) {
        this.mHeaders = headers;
        this.mContentDisposition = Multimap.parseSemicolonDelimited(this.mHeaders.get(CONTENT_DISPOSITION));
    }

    public String getName() {
        return this.mContentDisposition.getString("name");
    }

    public Part(String str, long j, List<NameValuePair> list) {
        this.length = j;
        this.mHeaders = new Headers();
        StringBuilder sb = new StringBuilder(String.format(Locale.ENGLISH, "form-data; name=\"%s\"", new Object[]{str}));
        if (list != null) {
            for (NameValuePair nameValuePair : list) {
                sb.append(String.format(Locale.ENGLISH, "; %s=\"%s\"", new Object[]{nameValuePair.getName(), nameValuePair.getValue()}));
            }
        }
        Headers headers = this.mHeaders;
        String sb2 = sb.toString();
        String str2 = CONTENT_DISPOSITION;
        headers.set(str2, sb2);
        this.mContentDisposition = Multimap.parseSemicolonDelimited(this.mHeaders.get(str2));
    }

    public Headers getRawHeaders() {
        return this.mHeaders;
    }

    public String getContentType() {
        return this.mHeaders.get("Content-Type");
    }

    public void setContentType(String str) {
        this.mHeaders.set("Content-Type", str);
    }

    public String getFilename() {
        String string = this.mContentDisposition.getString("filename");
        if (string == null) {
            return null;
        }
        return new File(string).getName();
    }

    public boolean isFile() {
        return this.mContentDisposition.containsKey("filename");
    }

    public long length() {
        return this.length;
    }
}
