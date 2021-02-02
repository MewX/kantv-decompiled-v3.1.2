package com.koushikdutta.async.http;

import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.GetSocketData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnBodyDataOnRequestSentData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnExchangeHeaderData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnHeadersReceivedDataOnRequestSentData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnRequestData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnRequestSentData;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnResponseCompleteDataOnRequestSentData;

public class SimpleMiddleware implements AsyncHttpClientMiddleware {
    public boolean exchangeHeaders(OnExchangeHeaderData onExchangeHeaderData) {
        return false;
    }

    public Cancellable getSocket(GetSocketData getSocketData) {
        return null;
    }

    public void onBodyDecoder(OnBodyDataOnRequestSentData onBodyDataOnRequestSentData) {
    }

    public void onHeadersReceived(OnHeadersReceivedDataOnRequestSentData onHeadersReceivedDataOnRequestSentData) {
    }

    public void onRequest(OnRequestData onRequestData) {
    }

    public void onRequestSent(OnRequestSentData onRequestSentData) {
    }

    public void onResponseComplete(OnResponseCompleteDataOnRequestSentData onResponseCompleteDataOnRequestSentData) {
    }
}
