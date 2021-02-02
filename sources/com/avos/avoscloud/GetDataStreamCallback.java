package com.avos.avoscloud;

import java.io.InputStream;

public abstract class GetDataStreamCallback extends AVCallback<InputStream> {
    public abstract void done(InputStream inputStream, AVException aVException);

    /* access modifiers changed from: protected */
    public final void internalDone0(InputStream inputStream, AVException aVException) {
        done(inputStream, aVException);
    }
}
