package com.avos.avoscloud.java_websocket.drafts;

import com.avos.avoscloud.java_websocket.WebSocket.Role;
import com.avos.avoscloud.java_websocket.drafts.Draft.CloseHandshakeType;
import com.avos.avoscloud.java_websocket.drafts.Draft.HandshakeState;
import com.avos.avoscloud.java_websocket.exceptions.IncompleteHandshakeException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidFrameException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.framing.CloseFrameBuilder;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.HandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.Handshakedata;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshakeBuilder;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.eclipse.jetty.http.HttpHeaders;

public class Draft_76 extends Draft_75 {
    private static final byte[] closehandshake = {-1, 0};
    private boolean failed = false;
    private final Random reuseableRandom = new Random();

    public static byte[] createChallenge(String str, String str2, byte[] bArr) throws InvalidHandshakeException {
        byte[] part = getPart(str);
        byte[] part2 = getPart(str2);
        try {
            return MessageDigest.getInstance("MD5").digest(new byte[]{part[0], part[1], part[2], part[3], part2[0], part2[1], part2[2], part2[3], bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]});
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    private static String generateKey() {
        Random random = new Random();
        long nextInt = (long) (random.nextInt(12) + 1);
        int nextInt2 = random.nextInt(12) + 1;
        String l = Long.toString(((long) (random.nextInt(Math.abs(new Long(4294967295L / nextInt).intValue())) + 1)) * nextInt);
        for (int i = 0; i < nextInt2; i++) {
            int abs = Math.abs(random.nextInt(l.length()));
            char nextInt3 = (char) (random.nextInt(95) + 33);
            if (nextInt3 >= '0' && nextInt3 <= '9') {
                nextInt3 = (char) (nextInt3 - 15);
            }
            l = new StringBuilder(l).insert(abs, nextInt3).toString();
        }
        for (int i2 = 0; ((long) i2) < nextInt; i2++) {
            l = new StringBuilder(l).insert(Math.abs(random.nextInt(l.length() - 1) + 1), " ").toString();
        }
        return l;
    }

    private static byte[] getPart(String str) throws InvalidHandshakeException {
        try {
            long parseLong = Long.parseLong(str.replaceAll("[^0-9]", ""));
            long length = (long) (str.split(" ").length - 1);
            if (length != 0) {
                long longValue = new Long(parseLong / length).longValue();
                return new byte[]{(byte) ((int) (longValue >> 24)), (byte) ((int) ((longValue << 8) >> 24)), (byte) ((int) ((longValue << 16) >> 24)), (byte) ((int) ((longValue << 24) >> 24))};
            }
            throw new InvalidHandshakeException("invalid Sec-WebSocket-Key (/key2/)");
        } catch (NumberFormatException unused) {
            throw new InvalidHandshakeException("invalid Sec-WebSocket-Key (/key1/ or /key2/)");
        }
    }

    public HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) {
        if (this.failed) {
            return HandshakeState.NOT_MATCHED;
        }
        try {
            if (serverHandshake.getFieldValue("Sec-WebSocket-Origin").equals(clientHandshake.getFieldValue("Origin"))) {
                if (basicAccept(serverHandshake)) {
                    byte[] content = serverHandshake.getContent();
                    if (content == null || content.length == 0) {
                        throw new IncompleteHandshakeException();
                    } else if (Arrays.equals(content, createChallenge(clientHandshake.getFieldValue("Sec-WebSocket-Key1"), clientHandshake.getFieldValue("Sec-WebSocket-Key2"), clientHandshake.getContent()))) {
                        return HandshakeState.MATCHED;
                    } else {
                        return HandshakeState.NOT_MATCHED;
                    }
                }
            }
            return HandshakeState.NOT_MATCHED;
        } catch (InvalidHandshakeException e) {
            throw new RuntimeException("bad handshakerequest", e);
        }
    }

    public HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) {
        String str = "Upgrade";
        if (!clientHandshake.getFieldValue(str).equals("WebSocket") || !clientHandshake.getFieldValue(HttpHeaders.CONNECTION).contains(str) || clientHandshake.getFieldValue("Sec-WebSocket-Key1").length() <= 0 || clientHandshake.getFieldValue("Sec-WebSocket-Key2").isEmpty() || !clientHandshake.hasFieldValue("Origin")) {
            return HandshakeState.NOT_MATCHED;
        }
        return HandshakeState.MATCHED;
    }

    public ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder clientHandshakeBuilder) {
        String str = "Upgrade";
        clientHandshakeBuilder.put(str, "WebSocket");
        clientHandshakeBuilder.put(HttpHeaders.CONNECTION, str);
        clientHandshakeBuilder.put("Sec-WebSocket-Key1", generateKey());
        clientHandshakeBuilder.put("Sec-WebSocket-Key2", generateKey());
        String str2 = "Origin";
        if (!clientHandshakeBuilder.hasFieldValue(str2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("random");
            sb.append(this.reuseableRandom.nextInt());
            clientHandshakeBuilder.put(str2, sb.toString());
        }
        byte[] bArr = new byte[8];
        this.reuseableRandom.nextBytes(bArr);
        clientHandshakeBuilder.setContent(bArr);
        return clientHandshakeBuilder;
    }

    public HandshakeBuilder postProcessHandshakeResponseAsServer(ClientHandshake clientHandshake, ServerHandshakeBuilder serverHandshakeBuilder) throws InvalidHandshakeException {
        serverHandshakeBuilder.setHttpStatusMessage("WebSocket Protocol Handshake");
        serverHandshakeBuilder.put("Upgrade", "WebSocket");
        String str = HttpHeaders.CONNECTION;
        serverHandshakeBuilder.put(str, clientHandshake.getFieldValue(str));
        serverHandshakeBuilder.put("Sec-WebSocket-Origin", clientHandshake.getFieldValue("Origin"));
        StringBuilder sb = new StringBuilder();
        sb.append("ws://");
        sb.append(clientHandshake.getFieldValue(HttpHeaders.HOST));
        sb.append(clientHandshake.getResourceDescriptor());
        serverHandshakeBuilder.put("Sec-WebSocket-Location", sb.toString());
        String fieldValue = clientHandshake.getFieldValue("Sec-WebSocket-Key1");
        String fieldValue2 = clientHandshake.getFieldValue("Sec-WebSocket-Key2");
        byte[] content = clientHandshake.getContent();
        if (fieldValue == null || fieldValue2 == null || content == null || content.length != 8) {
            throw new InvalidHandshakeException("Bad keys");
        }
        serverHandshakeBuilder.setContent(createChallenge(fieldValue, fieldValue2, content));
        return serverHandshakeBuilder;
    }

    public Handshakedata translateHandshake(ByteBuffer byteBuffer) throws InvalidHandshakeException {
        HandshakeBuilder translateHandshakeHttp = translateHandshakeHttp(byteBuffer, this.role);
        if ((translateHandshakeHttp.hasFieldValue("Sec-WebSocket-Key1") || this.role == Role.CLIENT) && !translateHandshakeHttp.hasFieldValue("Sec-WebSocket-Version")) {
            byte[] bArr = new byte[(this.role == Role.SERVER ? 8 : 16)];
            try {
                byteBuffer.get(bArr);
                translateHandshakeHttp.setContent(bArr);
            } catch (BufferUnderflowException unused) {
                throw new IncompleteHandshakeException(byteBuffer.capacity() + 16);
            }
        }
        return translateHandshakeHttp;
    }

    public List<Framedata> translateFrame(ByteBuffer byteBuffer) throws InvalidDataException {
        byteBuffer.mark();
        List<Framedata> translateRegularFrame = super.translateRegularFrame(byteBuffer);
        if (translateRegularFrame != null) {
            return translateRegularFrame;
        }
        byteBuffer.reset();
        List<Framedata> list = this.readyframes;
        this.readingState = true;
        if (this.currentFrame == null) {
            this.currentFrame = ByteBuffer.allocate(2);
            if (byteBuffer.remaining() <= this.currentFrame.remaining()) {
                this.currentFrame.put(byteBuffer);
                if (this.currentFrame.hasRemaining()) {
                    this.readyframes = new LinkedList();
                    return list;
                } else if (Arrays.equals(this.currentFrame.array(), closehandshake)) {
                    list.add(new CloseFrameBuilder(1000));
                    return list;
                } else {
                    throw new InvalidFrameException();
                }
            } else {
                throw new InvalidFrameException();
            }
        } else {
            throw new InvalidFrameException();
        }
    }

    public ByteBuffer createBinaryFrame(Framedata framedata) {
        if (framedata.getOpcode() == Opcode.CLOSING) {
            return ByteBuffer.wrap(closehandshake);
        }
        return super.createBinaryFrame(framedata);
    }

    public CloseHandshakeType getCloseHandshakeType() {
        return CloseHandshakeType.ONEWAY;
    }

    public Draft copyInstance() {
        return new Draft_76();
    }
}
