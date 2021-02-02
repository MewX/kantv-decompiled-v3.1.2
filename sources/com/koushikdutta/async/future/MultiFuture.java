package com.koushikdutta.async.future;

import java.util.ArrayList;
import java.util.Iterator;

public class MultiFuture<T> extends SimpleFuture<T> {
    final FutureCallback<T> callback = new FutureCallback<T>() {
        public void onCompleted(Exception exc, T t) {
            ArrayList<FutureCallback<T>> arrayList;
            synchronized (MultiFuture.this) {
                arrayList = MultiFuture.this.callbacks;
                MultiFuture.this.callbacks = null;
            }
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((FutureCallback) it.next()).onCompleted(exc, t);
                }
            }
        }
    };
    ArrayList<FutureCallback<T>> callbacks;

    public MultiFuture<T> setCallback(FutureCallback<T> futureCallback) {
        synchronized (this) {
            if (this.callbacks == null) {
                this.callbacks = new ArrayList<>();
            }
            this.callbacks.add(futureCallback);
        }
        super.setCallback((FutureCallback) this.callback);
        return this;
    }
}
