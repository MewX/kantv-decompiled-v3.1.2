package com.koushikdutta.async.http.server;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.DataCallback.NullDataCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.body.AsyncHttpRequestBody;

public class UnknownRequestBody implements AsyncHttpRequestBody<Void> {
    DataEmitter emitter;
    int length = -1;
    private String mContentType;

    public Void get() {
        return null;
    }

    public boolean readFullyOnRequest() {
        return false;
    }

    public UnknownRequestBody(String str) {
        this.mContentType = str;
    }

    public UnknownRequestBody(DataEmitter dataEmitter, String str, int i) {
        this.mContentType = str;
        this.emitter = dataEmitter;
        this.length = i;
    }

    public void write(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.pump(this.emitter, dataSink, completedCallback);
        if (this.emitter.isPaused()) {
            this.emitter.resume();
        }
    }

    public String getContentType() {
        return this.mContentType;
    }

    public int length() {
        return this.length;
    }

    @Deprecated
    public void setCallbacks(DataCallback dataCallback, CompletedCallback completedCallback) {
        this.emitter.setEndCallback(completedCallback);
        this.emitter.setDataCallback(dataCallback);
    }

    public DataEmitter getEmitter() {
        return this.emitter;
    }

    public void parse(DataEmitter dataEmitter, CompletedCallback completedCallback) {
        this.emitter = dataEmitter;
        dataEmitter.setEndCallback(completedCallback);
        dataEmitter.setDataCallback(new NullDataCallback());
    }
}
