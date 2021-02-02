package org.nanohttpd.protocols.http.tempfiles;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.nanohttpd.protocols.http.NanoHTTPD;

public class DefaultTempFile implements ITempFile {
    private final File file;
    private final OutputStream fstream = new FileOutputStream(this.file);

    public DefaultTempFile(File file2) throws IOException {
        this.file = File.createTempFile("NanoHTTPD-", "", file2);
    }

    public void delete() throws Exception {
        NanoHTTPD.safeClose(this.fstream);
        if (!this.file.delete()) {
            StringBuilder sb = new StringBuilder();
            sb.append("could not delete temporary file: ");
            sb.append(this.file.getAbsolutePath());
            throw new Exception(sb.toString());
        }
    }

    public String getName() {
        return this.file.getAbsolutePath();
    }

    public OutputStream open() throws Exception {
        return this.fstream;
    }
}
