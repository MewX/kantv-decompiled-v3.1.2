package com.avos.avoscloud.java_websocket.framing;

import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.exceptions.InvalidFrameException;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import com.avos.avoscloud.java_websocket.util.Charsetfunctions;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class FramedataImpl1 implements FrameBuilder {
    protected static byte[] emptyarray = new byte[0];
    protected boolean fin;
    protected Opcode optcode;
    protected boolean transferemasked;
    private ByteBuffer unmaskedpayload;

    public FramedataImpl1() {
    }

    public FramedataImpl1(Opcode opcode) {
        this.optcode = opcode;
        this.unmaskedpayload = ByteBuffer.wrap(emptyarray);
    }

    public FramedataImpl1(Framedata framedata) {
        this.fin = framedata.isFin();
        this.optcode = framedata.getOpcode();
        this.unmaskedpayload = framedata.getPayloadData();
        this.transferemasked = framedata.getTransfereMasked();
    }

    public boolean isFin() {
        return this.fin;
    }

    public Opcode getOpcode() {
        return this.optcode;
    }

    public boolean getTransfereMasked() {
        return this.transferemasked;
    }

    public ByteBuffer getPayloadData() {
        return this.unmaskedpayload;
    }

    public void setFin(boolean z) {
        this.fin = z;
    }

    public void setOptcode(Opcode opcode) {
        this.optcode = opcode;
    }

    public void setPayload(ByteBuffer byteBuffer) throws InvalidDataException {
        this.unmaskedpayload = byteBuffer;
    }

    public void setTransferemasked(boolean z) {
        this.transferemasked = z;
    }

    public void append(Framedata framedata) throws InvalidFrameException {
        ByteBuffer payloadData = framedata.getPayloadData();
        if (this.unmaskedpayload == null) {
            this.unmaskedpayload = ByteBuffer.allocate(payloadData.remaining());
            payloadData.mark();
            this.unmaskedpayload.put(payloadData);
            payloadData.reset();
        } else {
            payloadData.mark();
            ByteBuffer byteBuffer = this.unmaskedpayload;
            byteBuffer.position(byteBuffer.limit());
            ByteBuffer byteBuffer2 = this.unmaskedpayload;
            byteBuffer2.limit(byteBuffer2.capacity());
            if (payloadData.remaining() > this.unmaskedpayload.remaining()) {
                ByteBuffer allocate = ByteBuffer.allocate(payloadData.remaining() + this.unmaskedpayload.capacity());
                this.unmaskedpayload.flip();
                allocate.put(this.unmaskedpayload);
                allocate.put(payloadData);
                this.unmaskedpayload = allocate;
            } else {
                this.unmaskedpayload.put(payloadData);
            }
            this.unmaskedpayload.rewind();
            payloadData.reset();
        }
        this.fin = framedata.isFin();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Framedata{ optcode:");
        sb.append(getOpcode());
        sb.append(", fin:");
        sb.append(isFin());
        sb.append(", payloadlength:[pos:");
        sb.append(this.unmaskedpayload.position());
        sb.append(", len:");
        sb.append(this.unmaskedpayload.remaining());
        sb.append("], payload:");
        sb.append(Arrays.toString(Charsetfunctions.utf8Bytes(new String(this.unmaskedpayload.array()))));
        sb.append("}");
        return sb.toString();
    }
}
