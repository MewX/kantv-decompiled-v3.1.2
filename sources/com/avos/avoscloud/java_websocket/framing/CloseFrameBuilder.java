package com.avos.avoscloud.java_websocket.framing;

import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidFrameException;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.util.Charsetfunctions;
import java.nio.ByteBuffer;

public class CloseFrameBuilder extends FramedataImpl1 implements CloseFrame {
    static final ByteBuffer emptybytebuffer = ByteBuffer.allocate(0);
    private int code;
    private String reason;

    public CloseFrameBuilder() {
        super(Opcode.CLOSING);
        setFin(true);
    }

    public CloseFrameBuilder(int i) throws InvalidDataException {
        super(Opcode.CLOSING);
        setFin(true);
        setCodeAndMessage(i, "");
    }

    public CloseFrameBuilder(int i, String str) throws InvalidDataException {
        super(Opcode.CLOSING);
        setFin(true);
        setCodeAndMessage(i, str);
    }

    private void setCodeAndMessage(int i, String str) throws InvalidDataException {
        String str2 = "";
        if (str == null) {
            str = str2;
        }
        if (i == 1015) {
            str = str2;
            i = CloseFrame.NOCODE;
        }
        if (i != 1005) {
            byte[] utf8Bytes = Charsetfunctions.utf8Bytes(str);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.putInt(i);
            allocate.position(2);
            ByteBuffer allocate2 = ByteBuffer.allocate(utf8Bytes.length + 2);
            allocate2.put(allocate);
            allocate2.put(utf8Bytes);
            allocate2.rewind();
            setPayload(allocate2);
        } else if (str.length() > 0) {
            throw new InvalidDataException(1002, "A close frame must have a closecode if it has a reason");
        }
    }

    private void initCloseCode() throws InvalidFrameException {
        this.code = CloseFrame.NOCODE;
        ByteBuffer payloadData = super.getPayloadData();
        payloadData.mark();
        if (payloadData.remaining() >= 2) {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.position(2);
            allocate.putShort(payloadData.getShort());
            allocate.position(0);
            this.code = allocate.getInt();
            int i = this.code;
            if (i == 1006 || i == 1015 || i == 1005 || i > 4999 || i < 1000 || i == 1004) {
                StringBuilder sb = new StringBuilder();
                sb.append("closecode must not be sent over the wire: ");
                sb.append(this.code);
                throw new InvalidFrameException(sb.toString());
            }
        }
        payloadData.reset();
    }

    public int getCloseCode() {
        return this.code;
    }

    private void initMessage() throws InvalidDataException {
        if (this.code == 1005) {
            this.reason = Charsetfunctions.stringUtf8(super.getPayloadData());
            return;
        }
        ByteBuffer payloadData = super.getPayloadData();
        int position = payloadData.position();
        try {
            payloadData.position(payloadData.position() + 2);
            this.reason = Charsetfunctions.stringUtf8(payloadData);
            payloadData.position(position);
        } catch (IllegalArgumentException e) {
            throw new InvalidFrameException((Throwable) e);
        } catch (Throwable th) {
            payloadData.position(position);
            throw th;
        }
    }

    public String getMessage() {
        return this.reason;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("code: ");
        sb.append(this.code);
        return sb.toString();
    }

    public void setPayload(ByteBuffer byteBuffer) throws InvalidDataException {
        super.setPayload(byteBuffer);
        initCloseCode();
        initMessage();
    }

    public ByteBuffer getPayloadData() {
        if (this.code == 1005) {
            return emptybytebuffer;
        }
        return super.getPayloadData();
    }
}
