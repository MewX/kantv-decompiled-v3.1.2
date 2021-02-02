package com.avos.avoscloud.java_websocket.framing;

import com.avos.avoscloud.java_websocket.exceptions.InvalidDataException;
import com.avos.avoscloud.java_websocket.framing.Framedata.Opcode;
import java.nio.ByteBuffer;

public interface FrameBuilder extends Framedata {
    void setFin(boolean z);

    void setOptcode(Opcode opcode);

    void setPayload(ByteBuffer byteBuffer) throws InvalidDataException;

    void setTransferemasked(boolean z);
}
