package com.avos.avoscloud.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import javax.net.ssl.SSLException;

public interface WrappedByteChannel extends ByteChannel {
    boolean isBlocking();

    boolean isNeedRead();

    boolean isNeedWrite();

    int readMore(ByteBuffer byteBuffer) throws SSLException, IOException;

    void writeMore() throws IOException;
}
