package org.nanohttpd.protocols.http.tempfiles;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import org.nanohttpd.protocols.http.NanoHTTPD;

public class DefaultTempFileManager implements ITempFileManager {
    private final List<ITempFile> tempFiles;
    private final File tmpdir = new File(System.getProperty("java.io.tmpdir"));

    public DefaultTempFileManager() {
        if (!this.tmpdir.exists()) {
            this.tmpdir.mkdirs();
        }
        this.tempFiles = new ArrayList();
    }

    public void clear() {
        for (ITempFile delete : this.tempFiles) {
            try {
                delete.delete();
            } catch (Exception e) {
                NanoHTTPD.LOG.log(Level.WARNING, "could not delete file ", e);
            }
        }
        this.tempFiles.clear();
    }

    public ITempFile createTempFile(String str) throws Exception {
        DefaultTempFile defaultTempFile = new DefaultTempFile(this.tmpdir);
        this.tempFiles.add(defaultTempFile);
        return defaultTempFile;
    }
}
