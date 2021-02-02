package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import java.io.InputStream;

public class StreamBody implements AsyncHttpRequestBody<InputStream> {
    public static final String CONTENT_TYPE = "application/binary";
    String contentType = "application/binary";
    int length;
    InputStream stream;

    public StreamBody(InputStream inputStream, int i) {
        this.stream = inputStream;
        this.length = i;
    }

    public void write(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        InputStream inputStream = this.stream;
        int i = this.length;
        Util.pump(inputStream, i < 0 ? 2147483647L : (long) i, dataSink, completedCallback);
    }

    public void parse(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        throw new AssertionError("not implemented");
    }

    public String getContentType() {
        return this.contentType;
    }

    public StreamBody setContentType(String str) {
        this.contentType = str;
        return this;
    }

    public boolean readFullyOnRequest() {
        throw new AssertionError("not implemented");
    }

    public int length() {
        return this.length;
    }

    public InputStream get() {
        return this.stream;
    }
}
