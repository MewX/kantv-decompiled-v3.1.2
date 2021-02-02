package org.nanohttpd.protocols.http.tempfiles;

import java.io.OutputStream;

public interface ITempFile {
    void delete() throws Exception;

    String getName();

    OutputStream open() throws Exception;
}
