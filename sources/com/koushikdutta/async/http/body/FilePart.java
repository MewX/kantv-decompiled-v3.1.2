package com.koushikdutta.async.http.body;

import com.koushikdutta.async.http.BasicNameValuePair;
import com.koushikdutta.async.http.NameValuePair;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class FilePart extends StreamPart {
    File file;

    public FilePart(String str, final File file2) {
        super(str, (long) ((int) file2.length()), new ArrayList<NameValuePair>() {
            {
                add(new BasicNameValuePair("filename", file2.getName()));
            }
        });
        this.file = file2;
    }

    /* access modifiers changed from: protected */
    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this.file);
    }
}
