package com.koushikdutta.async.http.body;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public class StringPart extends StreamPart {
    String value;

    public StringPart(String str, String str2) {
        super(str, (long) str2.getBytes().length, null);
        this.value = str2;
    }

    /* access modifiers changed from: protected */
    public InputStream getInputStream() throws IOException {
        return new ByteArrayInputStream(this.value.getBytes());
    }
}
