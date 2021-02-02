package com.avos.avoscloud.java_websocket;

import com.avos.avoscloud.java_websocket.WebSocket.READYSTATE;
import com.avos.avoscloud.java_websocket.WebSocket.Role;
import com.avos.avoscloud.java_websocket.drafts.Draft;
import com.avos.avoscloud.java_websocket.drafts.Draft.CloseHandshakeType;
import com.avos.avoscloud.java_websocket.drafts.Draft.HandshakeState;
import com.avos.avoscloud.java_websocket.drafts.Draft_10;
import com.avos.avoscloud.java_websocket.drafts.Draft_17;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import com.avos.avoscloud.java_websocket.drafts.Draft_76;
import com.avos.avoscloud.java_websocket.exceptions.IncompleteHandshakeException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.exceptions.WebsocketNotConnectedException;
import com.avos.avoscloud.java_websocket.framing.CloseFrame;
import com.avos.avoscloud.java_websocket.framing.CloseFrameBuilder;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.Handshakedata;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import com.avos.avoscloud.java_websocket.server.WebSocketServer.WebSocketWorker;
import com.avos.avoscloud.java_websocket.util.Charsetfunctions;
import java.io.IOException;
import java.io.PrintStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class WebSocketImpl implements WebSocket {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static boolean DEBUG = false;
    public static int RCVBUF = 16384;
    public static final List<Draft> defaultdraftlist = new ArrayList(4);
    public ByteChannel channel;
    private Integer closecode;
    private Boolean closedremotely;
    private String closemessage;
    private Opcode current_continuous_frame_opcode;
    private Draft draft;
    private volatile boolean flushandclosestate;
    private ClientHandshake handshakerequest;
    public final BlockingQueue<ByteBuffer> inQueue;
    public SelectionKey key;
    private List<Draft> knownDrafts;
    public final BlockingQueue<ByteBuffer> outQueue;
    private READYSTATE readystate;
    private String resourceDescriptor;
    private Role role;
    private ByteBuffer tmpHandshakeBytes;
    public volatile WebSocketWorker workerThread;
    private final WebSocketListener wsl;

    static {
        defaultdraftlist.add(new Draft_17());
        defaultdraftlist.add(new Draft_10());
        defaultdraftlist.add(new Draft_76());
        defaultdraftlist.add(new Draft_75());
    }

    public WebSocketImpl(WebSocketListener webSocketListener, List<Draft> list) {
        this(webSocketListener, (Draft) null);
        this.role = Role.SERVER;
        if (list == null || list.isEmpty()) {
            this.knownDrafts = defaultdraftlist;
        } else {
            this.knownDrafts = list;
        }
    }

    public WebSocketImpl(WebSocketListener webSocketListener, Draft draft2) {
        this.flushandclosestate = false;
        this.readystate = READYSTATE.NOT_YET_CONNECTED;
        this.draft = null;
        this.current_continuous_frame_opcode = null;
        this.tmpHandshakeBytes = ByteBuffer.allocate(0);
        this.handshakerequest = null;
        this.closemessage = null;
        this.closecode = null;
        this.closedremotely = null;
        this.resourceDescriptor = null;
        if (webSocketListener == null || (draft2 == null && this.role == Role.SERVER)) {
            throw new IllegalArgumentException("parameters must not be null");
        }
        this.outQueue = new LinkedBlockingQueue();
        this.inQueue = new LinkedBlockingQueue();
        this.wsl = webSocketListener;
        this.role = Role.CLIENT;
        if (draft2 != null) {
            this.draft = draft2.copyInstance();
        }
    }

    @Deprecated
    public WebSocketImpl(WebSocketListener webSocketListener, Draft draft2, Socket socket) {
        this(webSocketListener, draft2);
    }

    @Deprecated
    public WebSocketImpl(WebSocketListener webSocketListener, List<Draft> list, Socket socket) {
        this(webSocketListener, list);
    }

    public void decode(ByteBuffer byteBuffer) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("process(");
            sb.append(byteBuffer.remaining());
            sb.append("): {");
            sb.append(byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining()));
            sb.append("}");
            printStream.println(sb.toString());
        }
        if (this.readystate != READYSTATE.NOT_YET_CONNECTED) {
            decodeFrames(byteBuffer);
        } else if (!decodeHandshake(byteBuffer)) {
        } else {
            if (byteBuffer.hasRemaining()) {
                decodeFrames(byteBuffer);
            } else if (this.tmpHandshakeBytes.hasRemaining()) {
                decodeFrames(this.tmpHandshakeBytes);
            }
        }
    }

    private boolean decodeHandshake(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2;
        if (this.tmpHandshakeBytes.capacity() == 0) {
            byteBuffer2 = byteBuffer;
        } else {
            if (this.tmpHandshakeBytes.remaining() < byteBuffer.remaining()) {
                ByteBuffer allocate = ByteBuffer.allocate(this.tmpHandshakeBytes.capacity() + byteBuffer.remaining());
                this.tmpHandshakeBytes.flip();
                allocate.put(this.tmpHandshakeBytes);
                this.tmpHandshakeBytes = allocate;
            }
            this.tmpHandshakeBytes.put(byteBuffer);
            this.tmpHandshakeBytes.flip();
            byteBuffer2 = this.tmpHandshakeBytes;
        }
        byteBuffer2.mark();
        try {
            if (this.draft == null && isFlashEdgeCase(byteBuffer2) == HandshakeState.MATCHED) {
                try {
                    write(ByteBuffer.wrap(Charsetfunctions.utf8Bytes(this.wsl.getFlashPolicy(this))));
                    close(-3, "");
                } catch (InvalidDataException unused) {
                    close(1006, "remote peer closed connection before flashpolicy could be transmitted", true);
                }
                return false;
            }
            try {
                String str = "wrong http function";
                if (this.role != Role.SERVER) {
                    if (this.role == Role.CLIENT) {
                        this.draft.setParseMode(this.role);
                        Handshakedata translateHandshake = this.draft.translateHandshake(byteBuffer2);
                        if (!(translateHandshake instanceof ServerHandshake)) {
                            flushAndClose(1002, str, false);
                            return false;
                        }
                        ServerHandshake serverHandshake = (ServerHandshake) translateHandshake;
                        if (this.draft.acceptHandshakeAsClient(this.handshakerequest, serverHandshake) == HandshakeState.MATCHED) {
                            try {
                                this.wsl.onWebsocketHandshakeReceivedAsClient(this, this.handshakerequest, serverHandshake);
                                open(serverHandshake);
                                return true;
                            } catch (InvalidDataException e) {
                                flushAndClose(e.getCloseCode(), e.getMessage(), false);
                                return false;
                            } catch (RuntimeException e2) {
                                this.wsl.onWebsocketError(this, e2);
                                flushAndClose(-1, e2.getMessage(), false);
                                return false;
                            }
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append("draft ");
                            sb.append(this.draft);
                            sb.append(" refuses handshake");
                            close(1002, sb.toString());
                        }
                    }
                    return false;
                } else if (this.draft == null) {
                    for (Draft copyInstance : this.knownDrafts) {
                        Draft copyInstance2 = copyInstance.copyInstance();
                        try {
                            copyInstance2.setParseMode(this.role);
                            byteBuffer2.reset();
                            Handshakedata translateHandshake2 = copyInstance2.translateHandshake(byteBuffer2);
                            if (!(translateHandshake2 instanceof ClientHandshake)) {
                                flushAndClose(1002, str, false);
                                return false;
                            }
                            ClientHandshake clientHandshake = (ClientHandshake) translateHandshake2;
                            if (copyInstance2.acceptHandshakeAsServer(clientHandshake) == HandshakeState.MATCHED) {
                                this.resourceDescriptor = clientHandshake.getResourceDescriptor();
                                try {
                                    write(copyInstance2.createHandshake(copyInstance2.postProcessHandshakeResponseAsServer(clientHandshake, this.wsl.onWebsocketHandshakeReceivedAsServer(this, copyInstance2, clientHandshake)), this.role));
                                    this.draft = copyInstance2;
                                    open(clientHandshake);
                                    return true;
                                } catch (InvalidDataException e3) {
                                    flushAndClose(e3.getCloseCode(), e3.getMessage(), false);
                                    return false;
                                } catch (RuntimeException e4) {
                                    this.wsl.onWebsocketError(this, e4);
                                    flushAndClose(-1, e4.getMessage(), false);
                                    return false;
                                }
                            } else {
                                continue;
                            }
                        } catch (InvalidHandshakeException unused2) {
                        }
                    }
                    if (this.draft == null) {
                        close(1002, "no draft matches");
                    }
                    return false;
                } else {
                    Handshakedata translateHandshake3 = this.draft.translateHandshake(byteBuffer2);
                    if (!(translateHandshake3 instanceof ClientHandshake)) {
                        flushAndClose(1002, str, false);
                        return false;
                    }
                    ClientHandshake clientHandshake2 = (ClientHandshake) translateHandshake3;
                    if (this.draft.acceptHandshakeAsServer(clientHandshake2) == HandshakeState.MATCHED) {
                        open(clientHandshake2);
                        return true;
                    }
                    close(1002, "the handshake did finaly not match");
                    return false;
                }
            } catch (InvalidHandshakeException e5) {
                close((InvalidDataException) e5);
            }
        } catch (IncompleteHandshakeException e6) {
            if (this.tmpHandshakeBytes.capacity() == 0) {
                byteBuffer2.reset();
                int preferedSize = e6.getPreferedSize();
                if (preferedSize == 0) {
                    preferedSize = byteBuffer2.capacity() + 16;
                }
                this.tmpHandshakeBytes = ByteBuffer.allocate(preferedSize);
                this.tmpHandshakeBytes.put(byteBuffer);
            } else {
                ByteBuffer byteBuffer3 = this.tmpHandshakeBytes;
                byteBuffer3.position(byteBuffer3.limit());
                ByteBuffer byteBuffer4 = this.tmpHandshakeBytes;
                byteBuffer4.limit(byteBuffer4.capacity());
            }
        }
    }

    private void decodeFrames(ByteBuffer byteBuffer) {
        try {
            for (Framedata framedata : this.draft.translateFrame(byteBuffer)) {
                if (DEBUG) {
                    PrintStream printStream = System.out;
                    StringBuilder sb = new StringBuilder();
                    sb.append("matched frame: ");
                    sb.append(framedata);
                    printStream.println(sb.toString());
                }
                Opcode opcode = framedata.getOpcode();
                boolean isFin = framedata.isFin();
                if (opcode == Opcode.CLOSING) {
                    int i = CloseFrame.NOCODE;
                    String str = "";
                    if (framedata instanceof CloseFrame) {
                        CloseFrame closeFrame = (CloseFrame) framedata;
                        i = closeFrame.getCloseCode();
                        str = closeFrame.getMessage();
                    }
                    if (this.readystate == READYSTATE.CLOSING) {
                        closeConnection(i, str, true);
                    } else if (this.draft.getCloseHandshakeType() == CloseHandshakeType.TWOWAY) {
                        close(i, str, true);
                    } else {
                        flushAndClose(i, str, false);
                    }
                } else if (opcode == Opcode.PING) {
                    this.wsl.onWebsocketPing(this, framedata);
                } else if (opcode == Opcode.PONG) {
                    this.wsl.onWebsocketPong(this, framedata);
                } else {
                    if (isFin) {
                        if (opcode != Opcode.CONTINUOUS) {
                            if (this.current_continuous_frame_opcode != null) {
                                throw new InvalidDataException(1002, "Continuous frame sequence not completed.");
                            } else if (opcode == Opcode.TEXT) {
                                try {
                                    this.wsl.onWebsocketMessage((WebSocket) this, Charsetfunctions.stringUtf8(framedata.getPayloadData()));
                                } catch (RuntimeException e) {
                                    this.wsl.onWebsocketError(this, e);
                                }
                            } else if (opcode == Opcode.BINARY) {
                                try {
                                    this.wsl.onWebsocketMessage((WebSocket) this, framedata.getPayloadData());
                                } catch (RuntimeException e2) {
                                    this.wsl.onWebsocketError(this, e2);
                                }
                            } else {
                                throw new InvalidDataException(1002, "non control or continious frame expected");
                            }
                        }
                    }
                    if (opcode == Opcode.CONTINUOUS) {
                        String str2 = "Continuous frame sequence was not started.";
                        if (isFin) {
                            if (this.current_continuous_frame_opcode != null) {
                                this.current_continuous_frame_opcode = null;
                            } else {
                                throw new InvalidDataException(1002, str2);
                            }
                        } else if (this.current_continuous_frame_opcode == null) {
                            throw new InvalidDataException(1002, str2);
                        }
                    } else if (this.current_continuous_frame_opcode == null) {
                        this.current_continuous_frame_opcode = opcode;
                    } else {
                        throw new InvalidDataException(1002, "Previous continuous frame sequence not completed.");
                    }
                    try {
                        this.wsl.onWebsocketMessageFragment(this, framedata);
                    } catch (RuntimeException e3) {
                        this.wsl.onWebsocketError(this, e3);
                    }
                }
            }
        } catch (InvalidDataException e4) {
            this.wsl.onWebsocketError(this, e4);
            close(e4);
        }
    }

    private void close(int i, String str, boolean z) {
        if (!(this.readystate == READYSTATE.CLOSING || this.readystate == READYSTATE.CLOSED)) {
            if (this.readystate == READYSTATE.OPEN) {
                if (i == 1006) {
                    this.readystate = READYSTATE.CLOSING;
                    flushAndClose(i, str, false);
                    return;
                }
                if (this.draft.getCloseHandshakeType() != CloseHandshakeType.NONE) {
                    if (!z) {
                        try {
                            this.wsl.onWebsocketCloseInitiated(this, i, str);
                        } catch (RuntimeException e) {
                            try {
                                this.wsl.onWebsocketError(this, e);
                            } catch (InvalidDataException e2) {
                                this.wsl.onWebsocketError(this, e2);
                                flushAndClose(1006, "generated frame is invalid", false);
                            }
                        }
                    }
                    sendFrame(new CloseFrameBuilder(i, str));
                }
                flushAndClose(i, str, z);
            } else if (i == -3) {
                flushAndClose(-3, str, true);
            } else {
                flushAndClose(-1, str, false);
            }
            if (i == 1002) {
                flushAndClose(i, str, z);
            }
            this.readystate = READYSTATE.CLOSING;
            this.tmpHandshakeBytes = null;
        }
    }

    public void close(int i, String str) {
        close(i, str, false);
    }

    /* access modifiers changed from: protected */
    public synchronized void closeConnection(int i, String str, boolean z) {
        if (this.readystate != READYSTATE.CLOSED) {
            if (this.key != null) {
                this.key.cancel();
            }
            if (this.channel != null) {
                try {
                    this.channel.close();
                } catch (IOException e) {
                    this.wsl.onWebsocketError(this, e);
                }
            }
            if (this.draft != null) {
                this.draft.reset();
            }
            this.handshakerequest = null;
            this.readystate = READYSTATE.CLOSED;
            this.outQueue.clear();
            try {
                this.wsl.onWebsocketClose(this, i, str, z);
            } catch (RuntimeException e2) {
                this.wsl.onWebsocketError(this, e2);
            }
        } else {
            return;
        }
        return;
    }

    /* access modifiers changed from: protected */
    public void closeConnection(int i, boolean z) {
        closeConnection(i, "", z);
    }

    public void closeConnection() {
        if (this.closedremotely != null) {
            closeConnection(this.closecode.intValue(), this.closemessage, this.closedremotely.booleanValue());
            return;
        }
        throw new IllegalStateException("this method must be used in conjuction with flushAndClose");
    }

    public void closeConnection(int i, String str) {
        closeConnection(i, str, false);
    }

    /* access modifiers changed from: protected */
    public synchronized void flushAndClose(int i, String str, boolean z) {
        if (!this.flushandclosestate) {
            this.closecode = Integer.valueOf(i);
            this.closemessage = str;
            this.closedremotely = Boolean.valueOf(z);
            this.flushandclosestate = true;
            this.wsl.onWriteDemand(this);
            try {
                this.wsl.onWebsocketClosing(this, i, str, z);
            } catch (RuntimeException e) {
                this.wsl.onWebsocketError(this, e);
            }
            if (this.draft != null) {
                this.draft.reset();
            }
            this.handshakerequest = null;
        }
    }

    public void eot() {
        if (getReadyState() != READYSTATE.CLOSED) {
            if (getReadyState() == READYSTATE.NOT_YET_CONNECTED) {
                closeConnection(-1, true);
            } else if (this.flushandclosestate) {
                closeConnection(this.closecode.intValue(), this.closemessage, this.closedremotely.booleanValue());
            } else if (this.draft.getCloseHandshakeType() == CloseHandshakeType.NONE) {
                closeConnection(1000, true);
            } else if (this.draft.getCloseHandshakeType() != CloseHandshakeType.ONEWAY) {
                closeConnection(1006, true);
            } else if (this.role == Role.SERVER) {
                closeConnection(1006, true);
            } else {
                closeConnection(1000, true);
            }
        }
    }

    public void close(int i) {
        close(i, "", false);
    }

    public void close(InvalidDataException invalidDataException) {
        close(invalidDataException.getCloseCode(), invalidDataException.getMessage(), false);
    }

    public void send(String str) throws WebsocketNotConnectedException {
        if (str != null) {
            send((Collection<Framedata>) this.draft.createFrames(str, this.role == Role.CLIENT));
            return;
        }
        throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
    }

    public void send(ByteBuffer byteBuffer) throws IllegalArgumentException, WebsocketNotConnectedException {
        if (byteBuffer != null) {
            send((Collection<Framedata>) this.draft.createFrames(byteBuffer, this.role == Role.CLIENT));
            return;
        }
        throw new IllegalArgumentException("Cannot send 'null' data to a WebSocketImpl.");
    }

    public void send(byte[] bArr) throws IllegalArgumentException, WebsocketNotConnectedException {
        send(ByteBuffer.wrap(bArr));
    }

    private void send(Collection<Framedata> collection) {
        if (isOpen()) {
            for (Framedata sendFrame : collection) {
                sendFrame(sendFrame);
            }
            return;
        }
        throw new WebsocketNotConnectedException();
    }

    public void sendFragmentedFrame(Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        send((Collection<Framedata>) this.draft.continuousFrame(opcode, byteBuffer, z));
    }

    public void sendFrame(Framedata framedata) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("send frame: ");
            sb.append(framedata);
            printStream.println(sb.toString());
        }
        write(this.draft.createBinaryFrame(framedata));
    }

    public boolean hasBufferedData() {
        return !this.outQueue.isEmpty();
    }

    private HandshakeState isFlashEdgeCase(ByteBuffer byteBuffer) throws IncompleteHandshakeException {
        byteBuffer.mark();
        if (byteBuffer.limit() > Draft.FLASH_POLICY_REQUEST.length) {
            return HandshakeState.NOT_MATCHED;
        }
        if (byteBuffer.limit() >= Draft.FLASH_POLICY_REQUEST.length) {
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                if (Draft.FLASH_POLICY_REQUEST[i] != byteBuffer.get()) {
                    byteBuffer.reset();
                    return HandshakeState.NOT_MATCHED;
                }
                i++;
            }
            return HandshakeState.MATCHED;
        }
        throw new IncompleteHandshakeException(Draft.FLASH_POLICY_REQUEST.length);
    }

    public void startHandshake(ClientHandshakeBuilder clientHandshakeBuilder) throws InvalidHandshakeException {
        this.handshakerequest = this.draft.postProcessHandshakeRequestAsClient(clientHandshakeBuilder);
        this.resourceDescriptor = clientHandshakeBuilder.getResourceDescriptor();
        try {
            this.wsl.onWebsocketHandshakeSentAsClient(this, this.handshakerequest);
            write(this.draft.createHandshake(this.handshakerequest, this.role));
        } catch (InvalidDataException unused) {
            throw new InvalidHandshakeException("Handshake data rejected by client.");
        } catch (RuntimeException e) {
            this.wsl.onWebsocketError(this, e);
            StringBuilder sb = new StringBuilder();
            sb.append("rejected because of");
            sb.append(e);
            throw new InvalidHandshakeException(sb.toString());
        }
    }

    private void write(ByteBuffer byteBuffer) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("write(");
            sb.append(byteBuffer.remaining());
            sb.append("): {");
            sb.append(byteBuffer.remaining() > 1000 ? "too big to display" : new String(byteBuffer.array()));
            sb.append("}");
            printStream.println(sb.toString());
        }
        this.outQueue.add(byteBuffer);
        this.wsl.onWriteDemand(this);
    }

    private void write(List<ByteBuffer> list) {
        for (ByteBuffer write : list) {
            write(write);
        }
    }

    private void open(Handshakedata handshakedata) {
        if (DEBUG) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("open using draft: ");
            sb.append(this.draft.getClass().getSimpleName());
            printStream.println(sb.toString());
        }
        this.readystate = READYSTATE.OPEN;
        try {
            this.wsl.onWebsocketOpen(this, handshakedata);
        } catch (RuntimeException e) {
            this.wsl.onWebsocketError(this, e);
        }
    }

    public boolean isConnecting() {
        return this.readystate == READYSTATE.CONNECTING;
    }

    public boolean isOpen() {
        return this.readystate == READYSTATE.OPEN;
    }

    public boolean isClosing() {
        return this.readystate == READYSTATE.CLOSING;
    }

    public boolean isFlushAndClose() {
        return this.flushandclosestate;
    }

    public boolean isClosed() {
        return this.readystate == READYSTATE.CLOSED;
    }

    public READYSTATE getReadyState() {
        return this.readystate;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        return super.toString();
    }

    public InetSocketAddress getRemoteSocketAddress() {
        return this.wsl.getRemoteSocketAddress(this);
    }

    public InetSocketAddress getLocalSocketAddress() {
        return this.wsl.getLocalSocketAddress(this);
    }

    public Draft getDraft() {
        return this.draft;
    }

    public void close() {
        close(1000);
    }

    public String getResourceDescriptor() {
        return this.resourceDescriptor;
    }
}
