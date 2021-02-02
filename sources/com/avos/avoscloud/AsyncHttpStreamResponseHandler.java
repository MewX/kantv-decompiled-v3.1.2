package com.avos.avoscloud;

import java.io.IOException;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Headers;
import okhttp3.Response;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public abstract class AsyncHttpStreamResponseHandler implements Callback {
    protected GenericObjectCallback callback;

    public abstract void onFailure(int i, Header[] headerArr, Throwable th);

    public abstract void onSuccess(int i, Header[] headerArr, InputStream inputStream);

    public AsyncHttpStreamResponseHandler(GenericObjectCallback genericObjectCallback) {
        this.callback = genericObjectCallback;
    }

    public AsyncHttpStreamResponseHandler() {
    }

    /* access modifiers changed from: protected */
    public GenericObjectCallback getCallback() {
        return this.callback;
    }

    /* access modifiers changed from: protected */
    public void setCallback(GenericObjectCallback genericObjectCallback) {
        this.callback = genericObjectCallback;
    }

    public void onFailure(Call call, IOException iOException) {
        onFailure(0, getHeaders(call.request().headers()), iOException);
    }

    public void onResponse(Call call, Response response) throws IOException {
        onSuccess(response.code(), getHeaders(response.headers()), response.body().byteStream());
    }

    static Header[] getHeaders(Headers headers) {
        if (headers == null || headers.size() <= 0) {
            return null;
        }
        Header[] headerArr = new Header[headers.size()];
        for (int i = 0; i < headers.size(); i++) {
            String name = headers.name(i);
            headerArr[i] = new BasicHeader(name, headers.get(name));
        }
        return headerArr;
    }
}
