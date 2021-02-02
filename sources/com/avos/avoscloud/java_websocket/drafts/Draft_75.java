package com.avos.avoscloud.java_websocket.drafts;

import com.avos.avoscloud.java_websocket.drafts.Draft.CloseHandshakeType;
import com.avos.avoscloud.java_websocket.drafts.Draft.HandshakeState;
import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidFrameException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.exceptions.LimitExedeedException;
import com.avos.avoscloud.java_websocket.exceptions.NotSendableException;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.framing.FramedataImpl1;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.HandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshakeBuilder;
import com.avos.avoscloud.java_websocket.util.Charsetfunctions;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.eclipse.jetty.http.HttpHeaders;

public class Draft_75 extends Draft {
    public static final byte CR = 13;
    public static final byte END_OF_FRAME = -1;
    public static final byte LF = 10;
    public static final byte START_OF_FRAME = 0;
    protected ByteBuffer currentFrame;
    protected boolean readingState = false;
    protected List<Framedata> readyframes = new LinkedList();
    private final Random reuseableRandom = new Random();

    public HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) {
        return (!clientHandshake.getFieldValue("WebSocket-Origin").equals(serverHandshake.getFieldValue("Origin")) || !basicAccept(serverHandshake)) ? HandshakeState.NOT_MATCHED : HandshakeState.MATCHED;
    }

    public HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) {
        if (!clientHandshake.hasFieldValue("Origin") || !basicAccept(clientHandshake)) {
            return HandshakeState.NOT_MATCHED;
        }
        return HandshakeState.MATCHED;
    }

    public ByteBuffer createBinaryFrame(Framedata framedata) {
        if (framedata.getOpcode() == Opcode.TEXT) {
            ByteBuffer payloadData = framedata.getPayloadData();
            ByteBuffer allocate = ByteBuffer.allocate(payloadData.remaining() + 2);
            allocate.put(0);
            payloadData.mark();
            allocate.put(payloadData);
            payloadData.reset();
            allocate.put(-1);
            allocate.flip();
            return allocate;
        }
        throw new RuntimeException("only text frames supported");
    }

    public List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z) {
        throw new RuntimeException("not yet implemented");
    }

    public List<Framedata> createFrames(String str, boolean z) {
        FramedataImpl1 framedataImpl1 = new FramedataImpl1();
        try {
            framedataImpl1.setPayload(ByteBuffer.wrap(Charsetfunctions.utf8Bytes(str)));
            framedataImpl1.setFin(true);
            framedataImpl1.setOptcode(Opcode.TEXT);
            framedataImpl1.setTransferemasked(z);
            return Collections.singletonList(framedataImpl1);
        } catch (InvalidDataException e) {
            throw new NotSendableException((Throwable) e);
        }
    }

    public ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder clientHandshakeBuilder) throws InvalidHandshakeException {
        String str = "Upgrade";
        clientHandshakeBuilder.put(str, "WebSocket");
        clientHandshakeBuilder.put(HttpHeaders.CONNECTION, str);
        String str2 = "Origin";
        if (!clientHandshakeBuilder.hasFieldValue(str2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("random");
            sb.append(this.reuseableRandom.nextInt());
            clientHandshakeBuilder.put(str2, sb.toString());
        }
        return clientHandshakeBuilder;
    }

    public HandshakeBuilder postProcessHandshakeResponseAsServer(ClientHandshake clientHandshake, ServerHandshakeBuilder serverHandshakeBuilder) throws InvalidHandshakeException {
        serverHandshakeBuilder.setHttpStatusMessage("Web Socket Protocol Handshake");
        serverHandshakeBuilder.put("Upgrade", "WebSocket");
        String str = HttpHeaders.CONNECTION;
        serverHandshakeBuilder.put(str, clientHandshake.getFieldValue(str));
        serverHandshakeBuilder.put("WebSocket-Origin", clientHandshake.getFieldValue("Origin"));
        StringBuilder sb = new StringBuilder();
        sb.append("ws://");
        sb.append(clientHandshake.getFieldValue(HttpHeaders.HOST));
        sb.append(clientHandshake.getResourceDescriptor());
        serverHandshakeBuilder.put("WebSocket-Location", sb.toString());
        return serverHandshakeBuilder;
    }

    /* access modifiers changed from: protected */
    public List<Framedata> translateRegularFrame(ByteBuffer byteBuffer) throws InvalidDataException {
        while (byteBuffer.hasRemaining()) {
            byte b = byteBuffer.get();
            if (b == 0) {
                if (!this.readingState) {
                    this.readingState = true;
                } else {
                    throw new InvalidFrameException("unexpected START_OF_FRAME");
                }
            } else if (b == -1) {
                if (this.readingState) {
                    ByteBuffer byteBuffer2 = this.currentFrame;
                    if (byteBuffer2 != null) {
                        byteBuffer2.flip();
                        FramedataImpl1 framedataImpl1 = new FramedataImpl1();
                        framedataImpl1.setPayload(this.currentFrame);
                        framedataImpl1.setFin(true);
                        framedataImpl1.setOptcode(Opcode.TEXT);
                        this.readyframes.add(framedataImpl1);
                        this.currentFrame = null;
                        byteBuffer.mark();
                    }
                    this.readingState = false;
                } else {
                    throw new InvalidFrameException("unexpected END_OF_FRAME");
                }
            } else if (!this.readingState) {
                return null;
            } else {
                ByteBuffer byteBuffer3 = this.currentFrame;
                if (byteBuffer3 == null) {
                    this.currentFrame = createBuffer();
                } else if (!byteBuffer3.hasRemaining()) {
                    this.currentFrame = increaseBuffer(this.currentFrame);
                }
                this.currentFrame.put(b);
            }
        }
        List<Framedata> list = this.readyframes;
        this.readyframes = new LinkedList();
        return list;
    }

    public List<Framedata> translateFrame(ByteBuffer byteBuffer) throws InvalidDataException {
        List<Framedata> translateRegularFrame = translateRegularFrame(byteBuffer);
        if (translateRegularFrame != null) {
            return translateRegularFrame;
        }
        throw new InvalidDataException(1002);
    }

    public void reset() {
        this.readingState = false;
        this.currentFrame = null;
    }

    public CloseHandshakeType getCloseHandshakeType() {
        return CloseHandshakeType.NONE;
    }

    public ByteBuffer createBuffer() {
        return ByteBuffer.allocate(INITIAL_FAMESIZE);
    }

    public ByteBuffer increaseBuffer(ByteBuffer byteBuffer) throws LimitExedeedException, InvalidDataException {
        byteBuffer.flip();
        ByteBuffer allocate = ByteBuffer.allocate(checkAlloc(byteBuffer.capacity() * 2));
        allocate.put(byteBuffer);
        return allocate;
    }

    public Draft copyInstance() {
        return new Draft_75();
    }
}
