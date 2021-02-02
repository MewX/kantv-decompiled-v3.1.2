package com.avos.avoscloud.java_websocket.drafts;

import com.avos.avoscloud.java_websocket.WebSocket.Role;
import com.avos.avoscloud.java_websocket.exceptions.IncompleteHandshakeException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.exceptions.LimitExedeedException;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.framing.FramedataImpl1;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.HandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.HandshakeImpl1Client;
import com.avos.avoscloud.java_websocket.handshake.HandshakeImpl1Server;
import com.avos.avoscloud.java_websocket.handshake.Handshakedata;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshakeBuilder;
import com.avos.avoscloud.java_websocket.util.Charsetfunctions;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.eclipse.jetty.http.HttpHeaders;

public abstract class Draft {
    public static final byte[] FLASH_POLICY_REQUEST = Charsetfunctions.utf8Bytes("<policy-file-request/>\u0000");
    public static int INITIAL_FAMESIZE = 64;
    public static int MAX_FAME_SIZE = 1000;
    protected Opcode continuousFrameType = null;
    protected Role role = null;

    public enum CloseHandshakeType {
        NONE,
        ONEWAY,
        TWOWAY
    }

    public enum HandshakeState {
        MATCHED,
        NOT_MATCHED
    }

    public abstract HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException;

    public abstract HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) throws InvalidHandshakeException;

    public abstract Draft copyInstance();

    public abstract ByteBuffer createBinaryFrame(Framedata framedata);

    public abstract List<Framedata> createFrames(String str, boolean z);

    public abstract List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z);

    public abstract CloseHandshakeType getCloseHandshakeType();

    public abstract ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder clientHandshakeBuilder) throws InvalidHandshakeException;

    public abstract HandshakeBuilder postProcessHandshakeResponseAsServer(ClientHandshake clientHandshake, ServerHandshakeBuilder serverHandshakeBuilder) throws InvalidHandshakeException;

    public abstract void reset();

    public abstract List<Framedata> translateFrame(ByteBuffer byteBuffer) throws InvalidDataException;

    public static ByteBuffer readLine(ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        byte b = 48;
        while (byteBuffer.hasRemaining()) {
            byte b2 = byteBuffer.get();
            allocate.put(b2);
            if (b == 13 && b2 == 10) {
                allocate.limit(allocate.position() - 2);
                allocate.position(0);
                return allocate;
            }
            b = b2;
        }
        byteBuffer.position(byteBuffer.position() - allocate.position());
        return null;
    }

    public static String readStringLine(ByteBuffer byteBuffer) {
        ByteBuffer readLine = readLine(byteBuffer);
        if (readLine == null) {
            return null;
        }
        return Charsetfunctions.stringAscii(readLine.array(), 0, readLine.limit());
    }

    public static HandshakeBuilder translateHandshakeHttp(ByteBuffer byteBuffer, Role role2) throws InvalidHandshakeException, IncompleteHandshakeException {
        HandshakeBuilder handshakeBuilder;
        String readStringLine = readStringLine(byteBuffer);
        if (readStringLine != null) {
            String[] split = readStringLine.split(" ", 3);
            if (split.length == 3) {
                if (role2 == Role.CLIENT) {
                    HandshakeBuilder handshakeImpl1Server = new HandshakeImpl1Server();
                    ServerHandshakeBuilder serverHandshakeBuilder = (ServerHandshakeBuilder) handshakeImpl1Server;
                    serverHandshakeBuilder.setHttpStatus(Short.parseShort(split[1]));
                    serverHandshakeBuilder.setHttpStatusMessage(split[2]);
                    handshakeBuilder = handshakeImpl1Server;
                } else {
                    ClientHandshakeBuilder handshakeImpl1Client = new HandshakeImpl1Client();
                    handshakeImpl1Client.setResourceDescriptor(split[1]);
                    handshakeBuilder = handshakeImpl1Client;
                }
                String readStringLine2 = readStringLine(byteBuffer);
                while (readStringLine2 != null && readStringLine2.length() > 0) {
                    String[] split2 = readStringLine2.split(":", 2);
                    if (split2.length == 2) {
                        handshakeBuilder.put(split2[0], split2[1].replaceFirst("^ +", ""));
                        readStringLine2 = readStringLine(byteBuffer);
                    } else {
                        throw new InvalidHandshakeException("not an http header");
                    }
                }
                if (readStringLine2 != null) {
                    return handshakeBuilder;
                }
                throw new IncompleteHandshakeException();
            }
            throw new InvalidHandshakeException();
        }
        throw new IncompleteHandshakeException(byteBuffer.capacity() + 128);
    }

    /* access modifiers changed from: protected */
    public boolean basicAccept(Handshakedata handshakedata) {
        return handshakedata.getFieldValue("Upgrade").equalsIgnoreCase("websocket") && handshakedata.getFieldValue(HttpHeaders.CONNECTION).toLowerCase(Locale.ENGLISH).contains("upgrade");
    }

    public List<Framedata> continuousFrame(Opcode opcode, ByteBuffer byteBuffer, boolean z) {
        if (opcode == Opcode.BINARY || opcode == Opcode.TEXT || opcode == Opcode.TEXT) {
            if (this.continuousFrameType != null) {
                this.continuousFrameType = Opcode.CONTINUOUS;
            } else {
                this.continuousFrameType = opcode;
            }
            FramedataImpl1 framedataImpl1 = new FramedataImpl1(this.continuousFrameType);
            try {
                framedataImpl1.setPayload(byteBuffer);
                framedataImpl1.setFin(z);
                if (z) {
                    this.continuousFrameType = null;
                } else {
                    this.continuousFrameType = opcode;
                }
                return Collections.singletonList(framedataImpl1);
            } catch (InvalidDataException e) {
                throw new RuntimeException(e);
            }
        } else {
            throw new IllegalArgumentException("Only Opcode.BINARY or  Opcode.TEXT are allowed");
        }
    }

    public List<ByteBuffer> createHandshake(Handshakedata handshakedata, Role role2) {
        return createHandshake(handshakedata, role2, true);
    }

    public List<ByteBuffer> createHandshake(Handshakedata handshakedata, Role role2, boolean z) {
        int i;
        StringBuilder sb = new StringBuilder(100);
        if (handshakedata instanceof ClientHandshake) {
            sb.append("GET ");
            sb.append(((ClientHandshake) handshakedata).getResourceDescriptor());
            sb.append(" HTTP/1.1");
        } else if (handshakedata instanceof ServerHandshake) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("HTTP/1.1 101 ");
            sb2.append(((ServerHandshake) handshakedata).getHttpStatusMessage());
            sb.append(sb2.toString());
        } else {
            throw new RuntimeException("unknow role");
        }
        String str = "\r\n";
        sb.append(str);
        Iterator iterateHttpFields = handshakedata.iterateHttpFields();
        while (iterateHttpFields.hasNext()) {
            String str2 = (String) iterateHttpFields.next();
            String fieldValue = handshakedata.getFieldValue(str2);
            sb.append(str2);
            sb.append(": ");
            sb.append(fieldValue);
            sb.append(str);
        }
        sb.append(str);
        byte[] asciiBytes = Charsetfunctions.asciiBytes(sb.toString());
        byte[] content = z ? handshakedata.getContent() : null;
        if (content == null) {
            i = 0;
        } else {
            i = content.length;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i + asciiBytes.length);
        allocate.put(asciiBytes);
        if (content != null) {
            allocate.put(content);
        }
        allocate.flip();
        return Collections.singletonList(allocate);
    }

    public Handshakedata translateHandshake(ByteBuffer byteBuffer) throws InvalidHandshakeException {
        return translateHandshakeHttp(byteBuffer, this.role);
    }

    public int checkAlloc(int i) throws LimitExedeedException, InvalidDataException {
        if (i >= 0) {
            return i;
        }
        throw new InvalidDataException(1002, "Negative count");
    }

    public void setParseMode(Role role2) {
        this.role = role2;
    }

    public Role getRole() {
        return this.role;
    }
}
