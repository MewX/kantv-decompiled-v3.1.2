package com.koushikdutta.async;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

class SocketChannelWrapper extends ChannelWrapper {
    SocketChannel mChannel;

    public int getLocalPort() {
        return this.mChannel.socket().getLocalPort();
    }

    SocketChannelWrapper(SocketChannel socketChannel) throws IOException {
        super(socketChannel);
        this.mChannel = socketChannel;
    }

    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.mChannel.read(byteBuffer);
    }

    public boolean isConnected() {
        return this.mChannel.isConnected();
    }

    public int write(ByteBuffer byteBuffer) throws IOException {
        return this.mChannel.write(byteBuffer);
    }

    public int write(ByteBuffer[] byteBufferArr) throws IOException {
        return (int) this.mChannel.write(byteBufferArr);
    }

    public SelectionKey register(Selector selector) throws ClosedChannelException {
        return register(selector, 8);
    }

    public void shutdownOutput() {
        try {
            this.mChannel.socket().shutdownOutput();
        } catch (Exception unused) {
        }
    }

    public void shutdownInput() {
        try {
            this.mChannel.socket().shutdownInput();
        } catch (Exception unused) {
        }
    }

    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        return this.mChannel.read(byteBufferArr);
    }

    public long read(ByteBuffer[] byteBufferArr, int i, int i2) throws IOException {
        return this.mChannel.read(byteBufferArr, i, i2);
    }

    public Object getSocket() {
        return this.mChannel.socket();
    }
}
