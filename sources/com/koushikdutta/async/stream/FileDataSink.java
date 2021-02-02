package com.koushikdutta.async.stream;

import com.koushikdutta.async.AsyncServer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class FileDataSink extends OutputStreamDataSink {
    File file;

    public FileDataSink(AsyncServer asyncServer, File file2) {
        super(asyncServer);
        this.file = file2;
    }

    public OutputStream getOutputStream() throws IOException {
        OutputStream outputStream = super.getOutputStream();
        if (outputStream != null) {
            return outputStream;
        }
        FileOutputStream fileOutputStream = new FileOutputStream(this.file);
        setOutputStream(fileOutputStream);
        return fileOutputStream;
    }
}
