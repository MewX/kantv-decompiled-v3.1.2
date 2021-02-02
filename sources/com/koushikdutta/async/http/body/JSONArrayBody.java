package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.JSONArrayParser;
import org.json.JSONArray;

public class JSONArrayBody implements AsyncHttpRequestBody<JSONArray> {
    public static final String CONTENT_TYPE = "application/json";
    JSONArray json;
    byte[] mBodyBytes;

    public String getContentType() {
        return "application/json";
    }

    public boolean readFullyOnRequest() {
        return true;
    }

    public JSONArrayBody() {
    }

    public JSONArrayBody(JSONArray jSONArray) {
        this();
        this.json = jSONArray;
    }

    public void parse(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new JSONArrayParser().parse(dataEmitter).setCallback(new FutureCallback<JSONArray>() {
            public void onCompleted(Exception exc, JSONArray jSONArray) {
                JSONArrayBody.this.json = jSONArray;
                completedCallback.onCompleted(exc);
            }
        });
    }

    public void write(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        Util.writeAll(dataSink, this.mBodyBytes, completedCallback);
    }

    public int length() {
        this.mBodyBytes = this.json.toString().getBytes();
        return this.mBodyBytes.length;
    }

    public JSONArray get() {
        return this.json;
    }
}
