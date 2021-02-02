package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.parser.JSONObjectParser;
import org.json.JSONObject;

public class JSONObjectBody implements AsyncHttpRequestBody<JSONObject> {
    public static final String CONTENT_TYPE = "application/json";
    JSONObject json;
    byte[] mBodyBytes;

    public String getContentType() {
        return "application/json";
    }

    public boolean readFullyOnRequest() {
        return true;
    }

    public JSONObjectBody() {
    }

    public JSONObjectBody(JSONObject jSONObject) {
        this();
        this.json = jSONObject;
    }

    public void parse(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        new JSONObjectParser().parse(dataEmitter).setCallback(new FutureCallback<JSONObject>() {
            public void onCompleted(Exception exc, JSONObject jSONObject) {
                JSONObjectBody.this.json = jSONObject;
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

    public JSONObject get() {
        return this.json;
    }
}
