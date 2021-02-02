package com.avos.avoscloud.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SocketChannel;
import javax.net.ssl.SSLException;

public class AbstractWrappedByteChannel implements WrappedByteChannel {
    private final ByteChannel channel;

    public AbstractWrappedByteChannel(ByteChannel byteChannel) {
        this.channel = byteChannel;
    }

    public AbstractWrappedByteChannel(WrappedByteChannel wrappedByteChannel) {
        this.channel = wrappedByteChannel;
    }

    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.channel.read(byteBuffer);
    }

    public boolean isOpen() {
        return this.channel.isOpen();
    }

    public void close() throws IOException {
        this.channel.close();
    }

    public int write(ByteBuffer byteBuffer) throws IOException {
        return this.channel.write(byteBuffer);
    }

    public boolean isNeedWrite() {
        ByteChannel byteChannel = this.channel;
        if (byteChannel instanceof WrappedByteChannel) {
            return ((WrappedByteChannel) byteChannel).isNeedWrite();
        }
        return false;
    }

    public void writeMore() throws IOException {
        ByteChannel byteChannel = this.channel;
        if (byteChannel instanceof WrappedByteChannel) {
            ((WrappedByteChannel) byteChannel).writeMore();
        }
    }

    public boolean isNeedRead() {
        ByteChannel byteChannel = this.channel;
        if (byteChannel instanceof WrappedByteChannel) {
            return ((WrappedByteChannel) byteChannel).isNeedRead();
        }
        return false;
    }

    public int readMore(ByteBuffer byteBuffer) throws SSLException {
        int i = 0;
        try {
            if (this.channel instanceof WrappedByteChannel) {
                i = ((WrappedByteChannel) this.channel).readMore(byteBuffer);
            }
            return i;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean isBlocking() {
        ByteChannel byteChannel = this.channel;
        if (byteChannel instanceof SocketChannel) {
            return ((SocketChannel) byteChannel).isBlocking();
        }
        if (byteChannel instanceof WrappedByteChannel) {
            return ((WrappedByteChannel) byteChannel).isBlocking();
        }
        return false;
    }
}
