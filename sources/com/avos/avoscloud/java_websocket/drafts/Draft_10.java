package com.avos.avoscloud.java_websocket.drafts;

import com.avos.avoscloud.java_websocket.WebSocket.Role;
import com.avos.avoscloud.java_websocket.drafts.Draft.CloseHandshakeType;
import com.avos.avoscloud.java_websocket.drafts.Draft.HandshakeState;
import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidFrameException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidHandshakeException;
import com.avos.avoscloud.java_websocket.exceptions.LimitExedeedException;
import com.avos.avoscloud.java_websocket.exceptions.NotSendableException;
import com.avos.avoscloud.java_websocket.framing.CloseFrameBuilder;
import com.avos.avoscloud.java_websocket.framing.FrameBuilder;
import com.avos.avoscloud.java_websocket.framing.Framedata;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.framing.FramedataImpl1;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshake;
import com.avos.avoscloud.java_websocket.handshake.ClientHandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.HandshakeBuilder;
import com.avos.avoscloud.java_websocket.handshake.Handshakedata;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshake;
import com.avos.avoscloud.java_websocket.handshake.ServerHandshakeBuilder;
import com.avos.avoscloud.java_websocket.util.Base64;
import com.avos.avoscloud.java_websocket.util.Charsetfunctions;
import com.tencent.connect.common.Constants;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import org.eclipse.jetty.http.HttpHeaders;

public class Draft_10 extends Draft {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Framedata fragmentedframe = null;
    private ByteBuffer incompleteframe;
    private final Random reuseableRandom = new Random();

    private class IncompleteException extends Throwable {
        private static final long serialVersionUID = 7330519489840500997L;
        private int preferedsize;

        public IncompleteException(int i) {
            this.preferedsize = i;
        }

        public int getPreferedSize() {
            return this.preferedsize;
        }
    }

    public static int readVersion(Handshakedata handshakedata) {
        String fieldValue = handshakedata.getFieldValue("Sec-WebSocket-Version");
        if (fieldValue.length() > 0) {
            try {
                return new Integer(fieldValue.trim()).intValue();
            } catch (NumberFormatException unused) {
            }
        }
        return -1;
    }

    public HandshakeState acceptHandshakeAsClient(ClientHandshake clientHandshake, ServerHandshake serverHandshake) throws InvalidHandshakeException {
        String str = "Sec-WebSocket-Key";
        if (clientHandshake.hasFieldValue(str)) {
            String str2 = "Sec-WebSocket-Accept";
            if (serverHandshake.hasFieldValue(str2)) {
                if (generateFinalKey(clientHandshake.getFieldValue(str)).equals(serverHandshake.getFieldValue(str2))) {
                    return HandshakeState.MATCHED;
                }
                return HandshakeState.NOT_MATCHED;
            }
        }
        return HandshakeState.NOT_MATCHED;
    }

    public HandshakeState acceptHandshakeAsServer(ClientHandshake clientHandshake) throws InvalidHandshakeException {
        int readVersion = readVersion(clientHandshake);
        if (readVersion != 7 && readVersion != 8) {
            return HandshakeState.NOT_MATCHED;
        }
        return basicAccept(clientHandshake) ? HandshakeState.MATCHED : HandshakeState.NOT_MATCHED;
    }

    public ByteBuffer createBinaryFrame(Framedata framedata) {
        ByteBuffer payloadData = framedata.getPayloadData();
        int i = 0;
        boolean z = this.role == Role.CLIENT;
        int i2 = payloadData.remaining() <= 125 ? 1 : payloadData.remaining() <= 65535 ? 2 : 8;
        ByteBuffer allocate = ByteBuffer.allocate((i2 > 1 ? i2 + 1 : i2) + 1 + (z ? 4 : 0) + payloadData.remaining());
        byte b = Byte.MIN_VALUE;
        allocate.put((byte) (((byte) (framedata.isFin() ? -128 : 0)) | fromOpcode(framedata.getOpcode())));
        byte[] byteArray = toByteArray((long) payloadData.remaining(), i2);
        if (i2 == 1) {
            byte b2 = byteArray[0];
            if (!z) {
                b = 0;
            }
            allocate.put((byte) (b2 | b));
        } else if (i2 == 2) {
            if (!z) {
                b = 0;
            }
            allocate.put((byte) (b | 126));
            allocate.put(byteArray);
        } else if (i2 == 8) {
            if (!z) {
                b = 0;
            }
            allocate.put((byte) (b | Byte.MAX_VALUE));
            allocate.put(byteArray);
        } else {
            throw new RuntimeException("Size representation not supported/specified");
        }
        if (z) {
            ByteBuffer allocate2 = ByteBuffer.allocate(4);
            allocate2.putInt(this.reuseableRandom.nextInt());
            allocate.put(allocate2.array());
            while (payloadData.hasRemaining()) {
                allocate.put((byte) (payloadData.get() ^ allocate2.get(i % 4)));
                i++;
            }
        } else {
            allocate.put(payloadData);
        }
        allocate.flip();
        return allocate;
    }

    public List<Framedata> createFrames(ByteBuffer byteBuffer, boolean z) {
        FramedataImpl1 framedataImpl1 = new FramedataImpl1();
        try {
            framedataImpl1.setPayload(byteBuffer);
            framedataImpl1.setFin(true);
            framedataImpl1.setOptcode(Opcode.BINARY);
            framedataImpl1.setTransferemasked(z);
            return Collections.singletonList(framedataImpl1);
        } catch (InvalidDataException e) {
            throw new NotSendableException((Throwable) e);
        }
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

    private byte fromOpcode(Opcode opcode) {
        if (opcode == Opcode.CONTINUOUS) {
            return 0;
        }
        if (opcode == Opcode.TEXT) {
            return 1;
        }
        if (opcode == Opcode.BINARY) {
            return 2;
        }
        if (opcode == Opcode.CLOSING) {
            return 8;
        }
        if (opcode == Opcode.PING) {
            return 9;
        }
        if (opcode == Opcode.PONG) {
            return 10;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Don't know how to handle ");
        sb.append(opcode.toString());
        throw new RuntimeException(sb.toString());
    }

    private String generateFinalKey(String str) {
        String trim = str.trim();
        StringBuilder sb = new StringBuilder();
        sb.append(trim);
        sb.append("258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
        String sb2 = sb.toString();
        try {
            return Base64.encodeBytes(MessageDigest.getInstance("SHA1").digest(sb2.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder clientHandshakeBuilder) {
        String str = "Upgrade";
        clientHandshakeBuilder.put(str, "websocket");
        clientHandshakeBuilder.put(HttpHeaders.CONNECTION, str);
        clientHandshakeBuilder.put("Sec-WebSocket-Version", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
        byte[] bArr = new byte[16];
        this.reuseableRandom.nextBytes(bArr);
        clientHandshakeBuilder.put("Sec-WebSocket-Key", Base64.encodeBytes(bArr));
        return clientHandshakeBuilder;
    }

    public HandshakeBuilder postProcessHandshakeResponseAsServer(ClientHandshake clientHandshake, ServerHandshakeBuilder serverHandshakeBuilder) throws InvalidHandshakeException {
        serverHandshakeBuilder.put("Upgrade", "websocket");
        String str = HttpHeaders.CONNECTION;
        serverHandshakeBuilder.put(str, clientHandshake.getFieldValue(str));
        serverHandshakeBuilder.setHttpStatusMessage("Switching Protocols");
        String fieldValue = clientHandshake.getFieldValue("Sec-WebSocket-Key");
        if (fieldValue != null) {
            serverHandshakeBuilder.put("Sec-WebSocket-Accept", generateFinalKey(fieldValue));
            return serverHandshakeBuilder;
        }
        throw new InvalidHandshakeException("missing Sec-WebSocket-Key");
    }

    private byte[] toByteArray(long j, int i) {
        byte[] bArr = new byte[i];
        int i2 = (i * 8) - 8;
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) ((int) (j >>> (i2 - (i3 * 8))));
        }
        return bArr;
    }

    private Opcode toOpcode(byte b) throws InvalidFrameException {
        if (b == 0) {
            return Opcode.CONTINUOUS;
        }
        if (b == 1) {
            return Opcode.TEXT;
        }
        if (b == 2) {
            return Opcode.BINARY;
        }
        switch (b) {
            case 8:
                return Opcode.CLOSING;
            case 9:
                return Opcode.PING;
            case 10:
                return Opcode.PONG;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("unknow optcode ");
                sb.append((short) b);
                throw new InvalidFrameException(sb.toString());
        }
    }

    public List<Framedata> translateFrame(ByteBuffer byteBuffer) throws LimitExedeedException, InvalidDataException {
        LinkedList linkedList = new LinkedList();
        if (this.incompleteframe != null) {
            try {
                byteBuffer.mark();
                int remaining = byteBuffer.remaining();
                int remaining2 = this.incompleteframe.remaining();
                if (remaining2 > remaining) {
                    this.incompleteframe.put(byteBuffer.array(), byteBuffer.position(), remaining);
                    byteBuffer.position(byteBuffer.position() + remaining);
                    return Collections.emptyList();
                }
                this.incompleteframe.put(byteBuffer.array(), byteBuffer.position(), remaining2);
                byteBuffer.position(byteBuffer.position() + remaining2);
                linkedList.add(translateSingleFrame((ByteBuffer) this.incompleteframe.duplicate().position(0)));
                this.incompleteframe = null;
            } catch (IncompleteException e) {
                this.incompleteframe.limit();
                ByteBuffer allocate = ByteBuffer.allocate(checkAlloc(e.getPreferedSize()));
                this.incompleteframe.rewind();
                allocate.put(this.incompleteframe);
                this.incompleteframe = allocate;
                return translateFrame(byteBuffer);
            }
        }
        while (byteBuffer.hasRemaining()) {
            byteBuffer.mark();
            try {
                linkedList.add(translateSingleFrame(byteBuffer));
            } catch (IncompleteException e2) {
                byteBuffer.reset();
                this.incompleteframe = ByteBuffer.allocate(checkAlloc(e2.getPreferedSize()));
                this.incompleteframe.put(byteBuffer);
            }
        }
        return linkedList;
    }

    public Framedata translateSingleFrame(ByteBuffer byteBuffer) throws IncompleteException, InvalidDataException {
        FrameBuilder frameBuilder;
        int remaining = byteBuffer.remaining();
        int i = 2;
        if (remaining >= 2) {
            byte b = byteBuffer.get();
            boolean z = (b >> 8) != 0;
            byte b2 = (byte) ((b & Byte.MAX_VALUE) >> 4);
            if (b2 == 0) {
                byte b3 = byteBuffer.get();
                boolean z2 = (b3 & Byte.MIN_VALUE) != 0;
                int i2 = (byte) (b3 & Byte.MAX_VALUE);
                Opcode opcode = toOpcode((byte) (b & 15));
                if (z || !(opcode == Opcode.PING || opcode == Opcode.PONG || opcode == Opcode.CLOSING)) {
                    if (i2 < 0 || i2 > 125) {
                        if (opcode == Opcode.PING || opcode == Opcode.PONG || opcode == Opcode.CLOSING) {
                            throw new InvalidFrameException("more than 125 octets");
                        } else if (i2 != 126) {
                            i = 10;
                            if (remaining >= 10) {
                                byte[] bArr = new byte[8];
                                for (int i3 = 0; i3 < 8; i3++) {
                                    bArr[i3] = byteBuffer.get();
                                }
                                long longValue = new BigInteger(bArr).longValue();
                                if (longValue <= 2147483647L) {
                                    i2 = (int) longValue;
                                } else {
                                    throw new LimitExedeedException("Payloadsize is to big...");
                                }
                            } else {
                                throw new IncompleteException(10);
                            }
                        } else if (remaining >= 4) {
                            byte[] bArr2 = new byte[3];
                            bArr2[1] = byteBuffer.get();
                            bArr2[2] = byteBuffer.get();
                            i2 = new BigInteger(bArr2).intValue();
                            i = 4;
                        } else {
                            throw new IncompleteException(4);
                        }
                    }
                    int i4 = i + (z2 ? 4 : 0) + i2;
                    if (remaining >= i4) {
                        ByteBuffer allocate = ByteBuffer.allocate(checkAlloc(i2));
                        if (z2) {
                            byte[] bArr3 = new byte[4];
                            byteBuffer.get(bArr3);
                            for (int i5 = 0; i5 < i2; i5++) {
                                allocate.put((byte) (byteBuffer.get() ^ bArr3[i5 % 4]));
                            }
                        } else {
                            allocate.put(byteBuffer.array(), byteBuffer.position(), allocate.limit());
                            byteBuffer.position(byteBuffer.position() + allocate.limit());
                        }
                        if (opcode == Opcode.CLOSING) {
                            frameBuilder = new CloseFrameBuilder();
                        } else {
                            frameBuilder = new FramedataImpl1();
                            frameBuilder.setFin(z);
                            frameBuilder.setOptcode(opcode);
                        }
                        allocate.flip();
                        frameBuilder.setPayload(allocate);
                        return frameBuilder;
                    }
                    throw new IncompleteException(i4);
                }
                throw new InvalidFrameException("control frames may no be fragmented");
            }
            StringBuilder sb = new StringBuilder();
            sb.append("bad rsv ");
            sb.append(b2);
            throw new InvalidFrameException(sb.toString());
        }
        throw new IncompleteException(2);
    }

    public void reset() {
        this.incompleteframe = null;
    }

    public Draft copyInstance() {
        return new Draft_10();
    }

    public CloseHandshakeType getCloseHandshakeType() {
        return CloseHandshakeType.TWOWAY;
    }
}
