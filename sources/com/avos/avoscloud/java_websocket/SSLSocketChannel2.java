package com.avos.avoscloud.java_websocket;

import java.io.IOException;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLEngineResult.HandshakeStatus;
import javax.net.ssl.SSLEngineResult.Status;
import javax.net.ssl.SSLSession;

public class SSLSocketChannel2 implements ByteChannel, WrappedByteChannel {
    protected static ByteBuffer emptybuffer = ByteBuffer.allocate(0);
    protected SSLEngineResult engineResult;
    protected ExecutorService exec;
    protected ByteBuffer inCrypt;
    protected ByteBuffer inData;
    private Status lastReadEngineStatus = Status.BUFFER_UNDERFLOW;
    protected ByteBuffer outCrypt;
    protected SelectionKey selectionKey;
    protected SocketChannel socketChannel;
    protected SSLEngine sslEngine;
    protected List<Future<?>> tasks;

    public SSLSocketChannel2(SocketChannel socketChannel2, SSLEngine sSLEngine, ExecutorService executorService, SelectionKey selectionKey2) throws IOException {
        if (socketChannel2 == null || sSLEngine == null || executorService == null) {
            throw new IllegalArgumentException("parameter must not be null");
        }
        this.socketChannel = socketChannel2;
        this.sslEngine = sSLEngine;
        this.exec = executorService;
        this.tasks = new ArrayList(3);
        if (selectionKey2 != null) {
            selectionKey2.interestOps(selectionKey2.interestOps() | 4);
            this.selectionKey = selectionKey2;
        }
        createBuffers(sSLEngine.getSession());
        handshake();
    }

    private void handshake() throws IOException {
        this.sslEngine.beginHandshake();
        handleHandshakeStatus(this.sslEngine.getHandshakeStatus());
    }

    private void handleHandshakeStatus(HandshakeStatus handshakeStatus) throws IOException {
        if (handshakeStatus == HandshakeStatus.NEED_TASK) {
            consumeDelegatedTasks();
        }
        if (!this.tasks.isEmpty()) {
            Iterator it = this.tasks.iterator();
            while (it.hasNext()) {
                Future future = (Future) it.next();
                if (future.isDone()) {
                    it.remove();
                } else {
                    if (isBlocking()) {
                        consumeFutureUninterruptible(future);
                    }
                    return;
                }
            }
        }
        if (handshakeStatus == HandshakeStatus.NEED_WRAP) {
            write(emptybuffer);
        }
        if (handshakeStatus == HandshakeStatus.NEED_UNWRAP) {
            read(null);
        }
        if (handshakeStatus == HandshakeStatus.FINISHED) {
            createBuffers(this.sslEngine.getSession());
        }
    }

    private void consumeFutureUninterruptible(Future<?> future) {
        boolean z = false;
        while (true) {
            try {
                future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            try {
                Thread.currentThread().interrupt();
            } catch (ExecutionException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void consumeDelegatedTasks() {
        while (true) {
            Runnable delegatedTask = this.sslEngine.getDelegatedTask();
            if (delegatedTask != null) {
                this.tasks.add(this.exec.submit(delegatedTask));
            } else {
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void createBuffers(SSLSession sSLSession) {
        int applicationBufferSize = sSLSession.getApplicationBufferSize();
        int packetBufferSize = sSLSession.getPacketBufferSize();
        ByteBuffer byteBuffer = this.inData;
        if (byteBuffer == null) {
            this.inData = ByteBuffer.allocate(applicationBufferSize);
            this.outCrypt = ByteBuffer.allocate(packetBufferSize);
            this.inCrypt = ByteBuffer.allocate(packetBufferSize);
        } else {
            if (byteBuffer.capacity() != applicationBufferSize) {
                this.inData = ByteBuffer.allocate(applicationBufferSize);
            }
            if (this.outCrypt.capacity() != packetBufferSize) {
                this.outCrypt = ByteBuffer.allocate(packetBufferSize);
            }
            if (this.inCrypt.capacity() != packetBufferSize) {
                this.inCrypt = ByteBuffer.allocate(packetBufferSize);
            }
        }
        this.inData.rewind();
        this.inData.flip();
        this.inCrypt.rewind();
        this.inCrypt.flip();
        this.outCrypt.rewind();
        this.outCrypt.flip();
    }

    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            this.outCrypt.compact();
            this.engineResult = this.sslEngine.wrap(byteBuffer, this.outCrypt);
            this.outCrypt.flip();
        }
        int write = this.outCrypt.hasRemaining() ? this.socketChannel.write(this.outCrypt) : 0;
        if (byteBuffer == null) {
            return write;
        }
        if (this.engineResult.getStatus() == Status.BUFFER_OVERFLOW) {
            ByteBuffer allocate = ByteBuffer.allocate(this.sslEngine.getSession().getPacketBufferSize() + this.outCrypt.position());
            this.outCrypt.compact();
            this.outCrypt.flip();
            allocate.put(this.outCrypt);
            this.outCrypt = allocate;
            this.outCrypt.flip();
            return write + write(byteBuffer);
        }
        handleHandshakeStatus(this.engineResult.getHandshakeStatus());
        return write;
    }

    public int read(ByteBuffer byteBuffer) throws IOException {
        int i = 0;
        if (byteBuffer != null && !byteBuffer.hasRemaining()) {
            return 0;
        }
        if (byteBuffer != null) {
            if (this.inData.hasRemaining()) {
                i = 0 + transferTo(this.inData, byteBuffer);
            }
            if (!byteBuffer.hasRemaining()) {
                return i;
            }
            this.inData.clear();
        }
        if (!this.inCrypt.hasRemaining()) {
            this.inCrypt.clear();
        } else {
            this.inCrypt.compact();
        }
        if (((isBlocking() && this.inCrypt.position() == 0) || this.lastReadEngineStatus == Status.BUFFER_UNDERFLOW) && this.socketChannel.read(this.inCrypt) == -1) {
            return -1;
        }
        this.inCrypt.flip();
        unwrap();
        if (byteBuffer != null) {
            i += transferTo(this.inData, byteBuffer);
            handleHandshakeStatus(this.engineResult.getHandshakeStatus());
            if (i == 0 && isBlocking()) {
                return read(byteBuffer);
            }
        } else {
            handleHandshakeStatus(this.engineResult.getHandshakeStatus());
        }
        return i;
    }

    private synchronized void unwrap() throws IOException {
        this.engineResult = this.sslEngine.unwrap(this.inCrypt, this.inData);
        this.lastReadEngineStatus = this.engineResult.getStatus();
        this.inData.flip();
        if (this.lastReadEngineStatus == Status.BUFFER_OVERFLOW) {
            ByteBuffer allocate = ByteBuffer.allocate(this.sslEngine.getSession().getApplicationBufferSize() + this.inData.position());
            allocate.put(this.inData);
            this.inData = allocate;
            unwrap();
        }
    }

    public void close() throws IOException {
        this.sslEngine.closeOutbound();
        this.sslEngine.getSession().invalidate();
        if (this.socketChannel.isOpen()) {
            write(emptybuffer);
        }
        this.socketChannel.close();
    }

    public Socket socket() {
        return this.socketChannel.socket();
    }

    public boolean isOpen() {
        return this.socketChannel.isOpen();
    }

    public boolean isNeedWrite() {
        return this.outCrypt.hasRemaining();
    }

    public void writeMore() throws IOException {
        write(null);
    }

    public boolean isNeedRead() {
        return this.inData.hasRemaining() || (this.inCrypt.hasRemaining() && this.lastReadEngineStatus != Status.BUFFER_UNDERFLOW);
    }

    public int readMore(ByteBuffer byteBuffer) throws IOException {
        return read(byteBuffer);
    }

    private int transferTo(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int remaining = byteBuffer.remaining();
        int remaining2 = byteBuffer2.remaining();
        if (remaining > remaining2) {
            int min = Math.min(remaining, remaining2);
            for (int i = 0; i < min; i++) {
                byteBuffer2.put(byteBuffer.get());
            }
            return min;
        }
        byteBuffer2.put(byteBuffer);
        return remaining;
    }

    public boolean isBlocking() {
        return this.socketChannel.isBlocking();
    }
}
