package com.koushikdutta.async;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;

class ServerSocketChannelWrapper extends ChannelWrapper {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    ServerSocketChannel mChannel;

    public boolean isConnected() {
        return false;
    }

    public void shutdownInput() {
    }

    public void shutdownOutput() {
    }

    public int getLocalPort() {
        return this.mChannel.socket().getLocalPort();
    }

    ServerSocketChannelWrapper(ServerSocketChannel serverSocketChannel) throws IOException {
        super(serverSocketChannel);
        this.mChannel = serverSocketChannel;
    }

    public int read(ByteBuffer byteBuffer) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    public int write(ByteBuffer byteBuffer) throws IOException {
        throw new IOException("Can't write ServerSocketChannel");
    }

    public SelectionKey register(Selector selector) throws ClosedChannelException {
        return this.mChannel.register(selector, 16);
    }

    public int write(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't write ServerSocketChannel");
    }

    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    public long read(ByteBuffer[] byteBufferArr, int i, int i2) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    public Object getSocket() {
        return this.mChannel.socket();
    }
}
