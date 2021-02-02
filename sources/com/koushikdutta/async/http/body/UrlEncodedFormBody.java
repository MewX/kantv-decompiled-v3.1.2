package com.koushikdutta.async.http.body;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.NameValuePair;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

public class UrlEncodedFormBody implements AsyncHttpRequestBody<Multimap> {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private byte[] mBodyBytes;
    /* access modifiers changed from: private */
    public Multimap mParameters;

    public String getContentType() {
        return "application/x-www-form-urlencoded; charset=utf-8";
    }

    public boolean readFullyOnRequest() {
        return true;
    }

    public UrlEncodedFormBody(Multimap multimap) {
        this.mParameters = multimap;
    }

    public UrlEncodedFormBody(List<NameValuePair> list) {
        this.mParameters = new Multimap(list);
    }

    private void buildData() {
        StringBuilder sb = new StringBuilder();
        try {
            Iterator it = this.mParameters.iterator();
            boolean z = true;
            while (true) {
                String str = "UTF-8";
                if (it.hasNext()) {
                    NameValuePair nameValuePair = (NameValuePair) it.next();
                    if (nameValuePair.getValue() != null) {
                        if (!z) {
                            sb.append('&');
                        }
                        z = false;
                        sb.append(URLEncoder.encode(nameValuePair.getName(), str));
                        sb.append('=');
                        sb.append(URLEncoder.encode(nameValuePair.getValue(), str));
                    }
                } else {
                    this.mBodyBytes = sb.toString().getBytes(str);
                    return;
                }
            }
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public void write(AsyncHttpRequest asyncHttpRequest, DataSink dataSink, CompletedCallback completedCallback) {
        if (this.mBodyBytes == null) {
            buildData();
        }
        Util.writeAll(dataSink, this.mBodyBytes, completedCallback);
    }

    public void parse(DataEmitter dataEmitter, final CompletedCallback completedCallback) {
        final ByteBufferList byteBufferList = new ByteBufferList();
        dataEmitter.setDataCallback(new DataCallback() {
            public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                byteBufferList.get(byteBufferList);
            }
        });
        dataEmitter.setEndCallback(new CompletedCallback() {
            public void onCompleted(Exception exc) {
                if (exc != null) {
                    completedCallback.onCompleted(exc);
                    return;
                }
                try {
                    UrlEncodedFormBody.this.mParameters = Multimap.parseUrlEncoded(byteBufferList.readString());
                    completedCallback.onCompleted(null);
                } catch (Exception e) {
                    completedCallback.onCompleted(e);
                }
            }
        });
    }

    public UrlEncodedFormBody() {
    }

    public int length() {
        if (this.mBodyBytes == null) {
            buildData();
        }
        return this.mBodyBytes.length;
    }

    public Multimap get() {
        return this.mParameters;
    }
}
