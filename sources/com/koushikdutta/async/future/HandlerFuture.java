package com.koushikdutta.async.future;

import android.os.Handler;
import android.os.Looper;

public class HandlerFuture<T> extends SimpleFuture<T> {
    Handler handler;

    public HandlerFuture() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        this.handler = new Handler(myLooper);
    }

    public SimpleFuture<T> setCallback(final FutureCallback<T> futureCallback) {
        return super.setCallback((FutureCallback) new FutureCallback<T>() {
            public void onCompleted(final Exception exc, final T t) {
                if (Looper.myLooper() == HandlerFuture.this.handler.getLooper()) {
                    futureCallback.onCompleted(exc, t);
                } else {
                    HandlerFuture.this.handler.post(new Runnable() {
                        public void run() {
                            AnonymousClass1.this.onCompleted(exc, t);
                        }
                    });
                }
            }
        });
    }
}
