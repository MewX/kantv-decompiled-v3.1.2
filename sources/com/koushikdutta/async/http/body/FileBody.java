package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import java.io.File;

public class FileBody implements AsyncHttpRequestBody<File> {
    public static final String CONTENT_TYPE = "application/binary";
    String contentType = "application/binary";
    File file;

    public FileBody(File file2) {
        this.file = file2;
    }

    public FileBody(File file2, String str) {
        this.file = file2;
        this.contentType = str;
    }

    public void write(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.pump(this.file, dataSink, completedCallback);
    }

    public void parse(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        throw new AssertionError("not implemented");
    }

    public String getContentType() {
        return this.contentType;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public boolean readFullyOnRequest() {
        throw new AssertionError("not implemented");
    }

    public int length() {
        return (int) this.file.length();
    }

    public File get() {
        return this.file;
    }
}
