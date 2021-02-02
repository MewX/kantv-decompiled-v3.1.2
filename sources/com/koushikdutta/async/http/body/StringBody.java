package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.StringParser;

public class StringBody implements AsyncHttpRequestBody<String> {
    public static final String CONTENT_TYPE = "text/plain";
    byte[] mBodyBytes;
    String string;

    public String getContentType() {
        return "text/plain";
    }

    public boolean readFullyOnRequest() {
        return true;
    }

    public StringBody() {
    }

    public StringBody(String str) {
        this();
        this.string = str;
    }

    public void parse(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new StringParser().parse(dataEmitter).setCallback(new FutureCallback<String>() {
            public void onCompleted(Exception exc, String str) {
                StringBody.this.string = str;
                completedCallback.onCompleted(exc);
            }
        });
    }

    public void write(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        if (this.mBodyBytes == null) {
            this.mBodyBytes = this.string.getBytes();
        }
        Util.writeAll(dataSink, this.mBodyBytes, completedCallback);
    }

    public int length() {
        if (this.mBodyBytes == null) {
            this.mBodyBytes = this.string.getBytes();
        }
        return this.mBodyBytes.length;
    }

    public String toString() {
        return this.string;
    }

    public String get() {
        return toString();
    }
}
