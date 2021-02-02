package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

class DatagramChannelWrapper extends ChannelWrapper {
    InetSocketAddress address;
    DatagramChannel mChannel;

    public boolean isChunked() {
        return true;
    }

    public void shutdownInput() {
    }

    public void shutdownOutput() {
    }

    public int getLocalPort() {
        return this.mChannel.socket().getLocalPort();
    }

    public InetSocketAddress getRemoteAddress() {
        return this.address;
    }

    public void disconnect() throws IOException {
        this.mChannel.disconnect();
    }

    DatagramChannelWrapper(DatagramChannel datagramChannel) throws IOException {
        super(datagramChannel);
        this.mChannel = datagramChannel;
    }

    public int read(ByteBuffer byteBuffer) throws IOException {
        if (!isConnected()) {
            int position = byteBuffer.position();
            this.address = (InetSocketAddress) this.mChannel.receive(byteBuffer);
            if (this.address == null) {
                return -1;
            }
            return byteBuffer.position() - position;
        }
        this.address = null;
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

    public SelectionKey register(Selector selector, int i) throws ClosedChannelException {
        return this.mChannel.register(selector, i);
    }

    public SelectionKey register(Selector selector) throws ClosedChannelException {
        return register(selector, 1);
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
