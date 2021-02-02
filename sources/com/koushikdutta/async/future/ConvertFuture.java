package com.koushikdutta.async.future;

public abstract class ConvertFuture<T, F> extends TransformFuture<T, F> {
    /* access modifiers changed from: protected */
    public abstract Future<T> convert(F f) throws Exception;

    /* access modifiers changed from: protected */
    public final void transform(F f) throws Exception {
        setComplete(convert(f));
    }
}
