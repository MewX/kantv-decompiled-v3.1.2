package org.msgpack.core.buffer;

import java.util.ArrayList;
import java.util.List;

public class ArrayBufferOutput implements MessageBufferOutput {
    private final int bufferSize;
    private MessageBuffer lastBuffer;
    private final List<MessageBuffer> list;

    public void close() {
    }

    public void flush() {
    }

    public ArrayBufferOutput() {
        this(8192);
    }

    public ArrayBufferOutput(int i) {
        this.bufferSize = i;
        this.list = new ArrayList();
    }

    public int getSize() {
        int i = 0;
        for (MessageBuffer size : this.list) {
            i += size.size();
        }
        return i;
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[getSize()];
        int i = 0;
        for (MessageBuffer messageBuffer : this.list) {
            messageBuffer.getBytes(0, bArr, i, messageBuffer.size());
            i += messageBuffer.size();
        }
        return bArr;
    }

    public MessageBuffer toMessageBuffer() {
        if (this.list.size() == 1) {
            return (MessageBuffer) this.list.get(0);
        }
        if (this.list.isEmpty()) {
            return MessageBuffer.allocate(0);
        }
        return MessageBuffer.wrap(toByteArray());
    }

    public List<MessageBuffer> toBufferList() {
        return new ArrayList(this.list);
    }

    public void clear() {
        this.list.clear();
    }

    public MessageBuffer next(int i) {
        MessageBuffer messageBuffer = this.lastBuffer;
        if (messageBuffer != null && messageBuffer.size() > i) {
            return this.lastBuffer;
        }
        MessageBuffer allocate = MessageBuffer.allocate(Math.max(this.bufferSize, i));
        this.lastBuffer = allocate;
        return allocate;
    }

    public void writeBuffer(int i) {
        this.list.add(this.lastBuffer.slice(0, i));
        if (this.lastBuffer.size() - i > this.bufferSize / 4) {
            MessageBuffer messageBuffer = this.lastBuffer;
            this.lastBuffer = messageBuffer.slice(i, messageBuffer.size() - i);
            return;
        }
        this.lastBuffer = null;
    }

    public void write(byte[] bArr, int i, int i2) {
        MessageBuffer allocate = MessageBuffer.allocate(i2);
        allocate.putBytes(0, bArr, i, i2);
        this.list.add(allocate);
    }

    public void add(byte[] bArr, int i, int i2) {
        this.list.add(MessageBuffer.wrap(bArr, i, i2));
    }
}
