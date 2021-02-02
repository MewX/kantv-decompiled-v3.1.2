package com.avos.avoscloud.java_websocket.client;

import com.avos.avoscloud.java_websocket.WebSocket;
import com.avos.avoscloud.java_websocket.WebSocket.READYSTATE;
import com.avos.avoscloud.java_websocket.WebSocketAdapter;
import com.avos.avoscloud.java_websocket.WebSocketImpl;
import com.avos.avoscloud.java_websocket.WebSocketListener;
import com.avos.avoscloud.java_websocket.drafts.Draft;
import com.avos.avoscloud.java_websocket.drafts.Draft_17;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.handshake.HandshakeImpl1Client;
import com.avos.avoscloud.java_websocket.handshake.Handshakedata;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.channels.NotYetConnectedException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.CountDownLatch;
import org.eclipse.jetty.http.HttpHeaders;

public abstract class WebSocketClient extends WebSocketAdapter implements Runnable, WebSocket {
    private CountDownLatch closeLatch;
    private CountDownLatch connectLatch;
    private int connectTimeout;
    private Draft draft;
    private transient WebSocketImpl engine;
    private Map<String, String> headers;
    private InputStream istream;
    private OutputStream ostream;
    private Proxy proxy;
    private Thread readThread;
    private Socket socket;
    protected URI uri;
    private Thread writeThread;

    private static class WebsocketWriteThread implements Runnable {
        WebSocketImpl engine;
        OutputStream ostream;

        public WebsocketWriteThread(WebSocketImpl webSocketImpl, OutputStream outputStream) {
            this.engine = webSocketImpl;
            this.ostream = outputStream;
        }

        public void run() {
            Thread.currentThread().setName("WebsocketWriteThread");
            while (!Thread.interrupted()) {
                try {
                    ByteBuffer byteBuffer = (ByteBuffer) this.engine.outQueue.take();
                    this.ostream.write(byteBuffer.array(), 0, byteBuffer.limit());
                    this.ostream.flush();
                } catch (IOException unused) {
                    this.engine.eot();
                    return;
                } catch (InterruptedException unused2) {
                    return;
                }
            }
        }
    }

    public abstract void onClose(int i, String str, boolean z);

    public void onCloseInitiated(int i, String str) {
    }

    public void onClosing(int i, String str, boolean z) {
    }

    public abstract void onError(Exception exc);

    public void onFragment(Framedata framedata) {
    }

    public abstract void onMessage(String str);

    public void onMessage(ByteBuffer byteBuffer) {
    }

    public abstract void onOpen(ServerHandshake serverHandshake);

    public final void onWriteDemand(WebSocket webSocket) {
    }

    public WebSocketClient(URI uri2) {
        this(uri2, new Draft_17());
    }

    public WebSocketClient(URI uri2, Draft draft2) {
        this(uri2, draft2, null, 0);
    }

    public WebSocketClient(URI uri2, Draft draft2, Map<String, String> map, int i) {
        this.uri = null;
        this.engine = null;
        this.socket = null;
        this.proxy = Proxy.NO_PROXY;
        this.connectLatch = new CountDownLatch(1);
        this.closeLatch = new CountDownLatch(1);
        this.connectTimeout = 0;
        if (uri2 == null) {
            throw new IllegalArgumentException();
        } else if (draft2 != null) {
            this.uri = uri2;
            this.draft = draft2;
            this.headers = map;
            this.connectTimeout = i;
            this.engine = new WebSocketImpl((WebSocketListener) this, draft2);
        } else {
            throw new IllegalArgumentException("null as draft is permitted for `WebSocketServer` only!");
        }
    }

    public URI getURI() {
        return this.uri;
    }

    public Draft getDraft() {
        return this.draft;
    }

    public void connect() {
        if (!isOpen() && !isConnecting()) {
            Thread thread = this.writeThread;
            if (thread != null) {
                thread.interrupt();
                this.readThread.interrupt();
                this.draft = this.draft.copyInstance();
                this.engine = new WebSocketImpl((WebSocketListener) this, this.draft);
            }
            new Thread(this).start();
        }
    }

    public boolean connectBlocking() throws InterruptedException {
        connect();
        this.connectLatch.await();
        return this.engine.isOpen();
    }

    public void close() {
        if (this.writeThread != null) {
            this.engine.close(1000);
        }
    }

    public void closeBlocking() throws InterruptedException {
        close();
        this.closeLatch.await();
    }

    public void send(String str) throws NotYetConnectedException {
        this.engine.send(str);
    }

    public void send(byte[] bArr) throws NotYetConnectedException {
        this.engine.send(bArr);
    }

    public void run() {
        try {
            if (this.socket == null || this.socket.isClosed()) {
                this.socket = new Socket(this.proxy);
            }
            if (!this.socket.isBound()) {
                this.socket.connect(new InetSocketAddress(this.uri.getHost(), getPort()), this.connectTimeout);
            }
            this.istream = this.socket.getInputStream();
            this.ostream = this.socket.getOutputStream();
            sendHandshake();
            this.writeThread = new Thread(new WebSocketWriteThread(this.engine, this.ostream));
            this.writeThread.start();
            this.readThread = new Thread(new WebSocketReadThread(this, this.engine, this.istream));
            this.readThread.start();
        } catch (Exception e) {
            onWebsocketError(this.engine, e);
            this.engine.closeConnection(-1, e.getMessage());
        }
    }

    private int getPort() {
        int port = this.uri.getPort();
        if (port != -1) {
            return port;
        }
        String scheme = this.uri.getScheme();
        if (scheme.equals("wss")) {
            return WebSocket.DEFAULT_WSS_PORT;
        }
        if (scheme.equals("ws")) {
            return 80;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("unkonow scheme");
        sb.append(scheme);
        throw new RuntimeException(sb.toString());
    }

    private void sendHandshake() throws InvalidHandshakeException {
        String str;
        String path = this.uri.getPath();
        String query = this.uri.getQuery();
        if (path == null || path.length() == 0) {
            path = "/";
        }
        if (query != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(path);
            sb.append("?");
            sb.append(query);
            path = sb.toString();
        }
        int port = getPort();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.uri.getHost());
        if (port != 80) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(":");
            sb3.append(port);
            str = sb3.toString();
        } else {
            str = "";
        }
        sb2.append(str);
        String sb4 = sb2.toString();
        HandshakeImpl1Client handshakeImpl1Client = new HandshakeImpl1Client();
        handshakeImpl1Client.setResourceDescriptor(path);
        handshakeImpl1Client.put(HttpHeaders.HOST, sb4);
        Map<String, String> map = this.headers;
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                handshakeImpl1Client.put((String) entry.getKey(), (String) entry.getValue());
            }
        }
        this.engine.startHandshake(handshakeImpl1Client);
    }

    public READYSTATE getReadyState() {
        return this.engine.getReadyState();
    }

    public final void onWebsocketMessage(WebSocket webSocket, String str) {
        onMessage(str);
    }

    public final void onWebsocketMessage(WebSocket webSocket, ByteBuffer byteBuffer) {
        onMessage(byteBuffer);
    }

    public void onWebsocketMessageFragment(WebSocket webSocket, Framedata framedata) {
        onFragment(framedata);
    }

    public final void onWebsocketOpen(WebSocket webSocket, Handshakedata handshakedata) {
        this.connectLatch.countDown();
        onOpen((ServerHandshake) handshakedata);
    }

    public final void onWebsocketClose(WebSocket webSocket, int i, String str, boolean z) {
        this.connectLatch.countDown();
        this.closeLatch.countDown();
        Thread thread = this.writeThread;
        if (thread != null) {
            thread.interrupt();
        }
        try {
            if (this.socket != null) {
                this.socket.close();
            }
        } catch (IOException e) {
            onWebsocketError(this, e);
        }
        onClose(i, str, z);
    }

    public final void onWebsocketError(WebSocket webSocket, Exception exc) {
        onError(exc);
    }

    public void onWebsocketCloseInitiated(WebSocket webSocket, int i, String str) {
        onCloseInitiated(i, str);
    }

    public void onWebsocketClosing(WebSocket webSocket, int i, String str, boolean z) {
        onClosing(i, str, z);
    }

    public WebSocket getConnection() {
        return this.engine;
    }

    public InetSocketAddress getLocalSocketAddress(WebSocket webSocket) {
        Socket socket2 = this.socket;
        if (socket2 != null) {
            return (InetSocketAddress) socket2.getLocalSocketAddress();
        }
        return null;
    }

    public InetSocketAddress getRemoteSocketAddress(WebSocket webSocket) {
        Socket socket2 = this.socket;
        if (socket2 != null) {
            return (InetSocketAddress) socket2.getRemoteSocketAddress();
        }
        return null;
    }

    public void setProxy(Proxy proxy2) {
        if (proxy2 != null) {
            this.proxy = proxy2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public void setSocket(Socket socket2) {
        if (this.socket == null) {
            this.socket = socket2;
            return;
        }
        throw new IllegalStateException("socket has already been set");
    }

    public void sendFragmentedFrame(Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        this.engine.sendFragmentedFrame(opcode, byteBuffer, z);
    }

    public boolean isOpen() {
        return this.engine.isOpen();
    }

    public boolean isFlushAndClose() {
        return this.engine.isFlushAndClose();
    }

    public boolean isClosed() {
        return this.engine.isClosed();
    }

    public boolean isClosing() {
        return this.engine.isClosing();
    }

    public boolean isConnecting() {
        return this.engine.isConnecting();
    }

    public boolean hasBufferedData() {
        return this.engine.hasBufferedData();
    }

    public void close(int i) {
        this.engine.close();
    }

    public void close(int i, String str) {
        this.engine.close(i, str);
    }

    public void closeConnection(int i, String str) {
        this.engine.closeConnection(i, str);
    }

    public void send(ByteBuffer byteBuffer) throws IllegalArgumentException, NotYetConnectedException {
        this.engine.send(byteBuffer);
    }

    public void sendFrame(Framedata framedata) {
        this.engine.sendFrame(framedata);
    }

    public InetSocketAddress getLocalSocketAddress() {
        return this.engine.getLocalSocketAddress();
    }

    public InetSocketAddress getRemoteSocketAddress() {
        return this.engine.getRemoteSocketAddress();
    }

    public String getResourceDescriptor() {
        return this.uri.getPath();
    }
}
