package com.koushikdutta.async;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectableChannel;

abstract class ChannelWrapper implements ReadableByteChannel, ScatteringByteChannel {
    private AbstractSelectableChannel mChannel;

    public abstract int getLocalPort();

    public abstract Object getSocket();

    public boolean isChunked() {
        return false;
    }

    public abstract boolean isConnected();

    public abstract SelectionKey register(Selector selector) throws ClosedChannelException;

    public abstract void shutdownInput();

    public abstract void shutdownOutput();

    public abstract int write(ByteBuffer byteBuffer) throws IOException;

    public abstract int write(ByteBuffer[] byteBufferArr) throws IOException;

    ChannelWrapper(AbstractSelectableChannel abstractSelectableChannel) throws IOException {
        abstractSelectableChannel.configureBlocking(false);
        this.mChannel = abstractSelectableChannel;
    }

    public SelectionKey register(Selector selector, int i) throws ClosedChannelException {
        return this.mChannel.register(selector, i);
    }

    public boolean isOpen() {
        return this.mChannel.isOpen();
    }

    public void close() throws IOException {
        this.mChannel.close();
    }
}
