package com.tencent.mobileqq.pb;

import com.avos.avoscloud.AVException;
import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public final class CodedInputStreamMicro {
    private static final int BUFFER_SIZE = 4096;
    private static final int DEFAULT_RECURSION_LIMIT = 64;
    private static final int DEFAULT_SIZE_LIMIT = 67108864;
    private final byte[] buffer;
    private int bufferPos;
    private int bufferSize;
    private int bufferSizeAfterLimit;
    private int currentLimit;
    private final InputStream input;
    private int lastTag;
    private int recursionDepth;
    private int recursionLimit;
    private int sizeLimit;
    private int totalBytesRetired;

    public static int decodeZigZag32(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long decodeZigZag64(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static CodedInputStreamMicro newInstance(InputStream inputStream) {
        return new CodedInputStreamMicro(inputStream);
    }

    public static CodedInputStreamMicro newInstance(byte[] bArr) {
        return newInstance(bArr, 0, bArr.length);
    }

    public static CodedInputStreamMicro newInstance(byte[] bArr, int i, int i2) {
        return new CodedInputStreamMicro(bArr, i, i2);
    }

    public int readTag() throws IOException {
        if (isAtEnd()) {
            this.lastTag = 0;
            return 0;
        }
        this.lastTag = readRawVarint32();
        int i = this.lastTag;
        if (i != 0) {
            return i;
        }
        throw InvalidProtocolBufferMicroException.invalidTag();
    }

    public void checkLastTagWas(int i) throws InvalidProtocolBufferMicroException {
        if (this.lastTag != i) {
            throw InvalidProtocolBufferMicroException.invalidEndTag();
        }
    }

    public boolean skipField(int i) throws IOException {
        int tagWireType = WireFormatMicro.getTagWireType(i);
        if (tagWireType == 0) {
            readInt32();
            return true;
        } else if (tagWireType == 1) {
            readRawLittleEndian64();
            return true;
        } else if (tagWireType == 2) {
            skipRawBytes(readRawVarint32());
            return true;
        } else if (tagWireType == 3) {
            skipMessage();
            checkLastTagWas(WireFormatMicro.makeTag(WireFormatMicro.getTagFieldNumber(i), 4));
            return true;
        } else if (tagWireType == 4) {
            return false;
        } else {
            if (tagWireType == 5) {
                readRawLittleEndian32();
                return true;
            }
            throw InvalidProtocolBufferMicroException.invalidWireType();
        }
    }

    public void skipMessage() throws IOException {
        int readTag;
        do {
            readTag = readTag();
            if (readTag == 0) {
                return;
            }
        } while (skipField(readTag));
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readRawLittleEndian64());
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readRawLittleEndian32());
    }

    public long readUInt64() throws IOException {
        return readRawVarint64();
    }

    public long readInt64() throws IOException {
        return readRawVarint64();
    }

    public int readInt32() throws IOException {
        return readRawVarint32();
    }

    public long readFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    public int readFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    public boolean readBool() throws IOException {
        return readRawVarint32() != 0;
    }

    public String readString() throws IOException {
        int readRawVarint32 = readRawVarint32();
        int i = this.bufferSize;
        int i2 = this.bufferPos;
        String str = "UTF-8";
        if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
            return new String(readRawBytes(readRawVarint32), str);
        }
        String str2 = new String(this.buffer, i2, readRawVarint32, str);
        this.bufferPos += readRawVarint32;
        return str2;
    }

    public void readGroup(MessageMicro<?> messageMicro, int i) throws IOException {
        int i2 = this.recursionDepth;
        if (i2 < this.recursionLimit) {
            this.recursionDepth = i2 + 1;
            messageMicro.mergeFrom(this);
            checkLastTagWas(WireFormatMicro.makeTag(i, 4));
            this.recursionDepth--;
            return;
        }
        throw InvalidProtocolBufferMicroException.recursionLimitExceeded();
    }

    public void readMessage(MessageMicro<?> messageMicro) throws IOException {
        int readRawVarint32 = readRawVarint32();
        if (this.recursionDepth < this.recursionLimit) {
            int pushLimit = pushLimit(readRawVarint32);
            this.recursionDepth++;
            messageMicro.mergeFrom(this);
            checkLastTagWas(0);
            this.recursionDepth--;
            popLimit(pushLimit);
            return;
        }
        throw InvalidProtocolBufferMicroException.recursionLimitExceeded();
    }

    public ByteStringMicro readBytes() throws IOException {
        int readRawVarint32 = readRawVarint32();
        int i = this.bufferSize;
        int i2 = this.bufferPos;
        if (readRawVarint32 > i - i2 || readRawVarint32 <= 0) {
            return ByteStringMicro.copyFrom(readRawBytes(readRawVarint32));
        }
        ByteStringMicro copyFrom = ByteStringMicro.copyFrom(this.buffer, i2, readRawVarint32);
        this.bufferPos += readRawVarint32;
        return copyFrom;
    }

    public int readUInt32() throws IOException {
        return readRawVarint32();
    }

    public int readEnum() throws IOException {
        return readRawVarint32();
    }

    public int readSFixed32() throws IOException {
        return readRawLittleEndian32();
    }

    public long readSFixed64() throws IOException {
        return readRawLittleEndian64();
    }

    public int readSInt32() throws IOException {
        return decodeZigZag32(readRawVarint32());
    }

    public long readSInt64() throws IOException {
        return decodeZigZag64(readRawVarint64());
    }

    public int readRawVarint32() throws IOException {
        byte b;
        int i;
        byte readRawByte = readRawByte();
        if (readRawByte >= 0) {
            return readRawByte;
        }
        byte b2 = readRawByte & Byte.MAX_VALUE;
        byte readRawByte2 = readRawByte();
        if (readRawByte2 >= 0) {
            i = readRawByte2 << 7;
        } else {
            b2 |= (readRawByte2 & Byte.MAX_VALUE) << 7;
            byte readRawByte3 = readRawByte();
            if (readRawByte3 >= 0) {
                i = readRawByte3 << 14;
            } else {
                b2 |= (readRawByte3 & Byte.MAX_VALUE) << 14;
                byte readRawByte4 = readRawByte();
                if (readRawByte4 >= 0) {
                    i = readRawByte4 << 21;
                } else {
                    byte b3 = b2 | ((readRawByte4 & Byte.MAX_VALUE) << 21);
                    byte readRawByte5 = readRawByte();
                    b = b3 | (readRawByte5 << 28);
                    if (readRawByte5 < 0) {
                        for (int i2 = 0; i2 < 5; i2++) {
                            if (readRawByte() >= 0) {
                                return b;
                            }
                        }
                        throw InvalidProtocolBufferMicroException.malformedVarint();
                    }
                    return b;
                }
            }
        }
        b = b2 | i;
        return b;
    }

    static int readRawVarint32(InputStream inputStream) throws IOException {
        int i = 0;
        int i2 = 0;
        while (i < 32) {
            int read = inputStream.read();
            if (read != -1) {
                i2 |= (read & AVException.INVALID_PHONE_NUMBER) << i;
                if ((read & 128) == 0) {
                    return i2;
                }
                i += 7;
            } else {
                throw InvalidProtocolBufferMicroException.truncatedMessage();
            }
        }
        while (i < 64) {
            int read2 = inputStream.read();
            if (read2 == -1) {
                throw InvalidProtocolBufferMicroException.truncatedMessage();
            } else if ((read2 & 128) == 0) {
                return i2;
            } else {
                i += 7;
            }
        }
        throw InvalidProtocolBufferMicroException.malformedVarint();
    }

    public long readRawVarint64() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte readRawByte = readRawByte();
            j |= ((long) (readRawByte & Byte.MAX_VALUE)) << i;
            if ((readRawByte & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferMicroException.malformedVarint();
    }

    public int readRawLittleEndian32() throws IOException {
        return (readRawByte() & Draft_75.END_OF_FRAME) | ((readRawByte() & Draft_75.END_OF_FRAME) << 8) | ((readRawByte() & Draft_75.END_OF_FRAME) << 16) | ((readRawByte() & Draft_75.END_OF_FRAME) << 24);
    }

    public long readRawLittleEndian64() throws IOException {
        byte readRawByte = readRawByte();
        byte readRawByte2 = readRawByte();
        return ((((long) readRawByte2) & 255) << 8) | (((long) readRawByte) & 255) | ((((long) readRawByte()) & 255) << 16) | ((((long) readRawByte()) & 255) << 24) | ((((long) readRawByte()) & 255) << 32) | ((((long) readRawByte()) & 255) << 40) | ((((long) readRawByte()) & 255) << 48) | ((((long) readRawByte()) & 255) << 56);
    }

    private CodedInputStreamMicro(byte[] bArr, int i, int i2) {
        this.currentLimit = Integer.MAX_VALUE;
        this.recursionLimit = 64;
        this.sizeLimit = DEFAULT_SIZE_LIMIT;
        this.buffer = bArr;
        this.bufferSize = i2 + i;
        this.bufferPos = i;
        this.input = null;
    }

    private CodedInputStreamMicro(InputStream inputStream) {
        this.currentLimit = Integer.MAX_VALUE;
        this.recursionLimit = 64;
        this.sizeLimit = DEFAULT_SIZE_LIMIT;
        this.buffer = new byte[4096];
        this.bufferSize = 0;
        this.bufferPos = 0;
        this.input = inputStream;
    }

    public int setRecursionLimit(int i) {
        if (i >= 0) {
            int i2 = this.recursionLimit;
            this.recursionLimit = i;
            return i2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Recursion limit cannot be negative: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public int setSizeLimit(int i) {
        if (i >= 0) {
            int i2 = this.sizeLimit;
            this.sizeLimit = i;
            return i2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Size limit cannot be negative: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public void resetSizeCounter() {
        this.totalBytesRetired = 0;
    }

    public int pushLimit(int i) throws InvalidProtocolBufferMicroException {
        if (i >= 0) {
            int i2 = i + this.totalBytesRetired + this.bufferPos;
            int i3 = this.currentLimit;
            if (i2 <= i3) {
                this.currentLimit = i2;
                recomputeBufferSizeAfterLimit();
                return i3;
            }
            throw InvalidProtocolBufferMicroException.truncatedMessage();
        }
        throw InvalidProtocolBufferMicroException.negativeSize();
    }

    private void recomputeBufferSizeAfterLimit() {
        this.bufferSize += this.bufferSizeAfterLimit;
        int i = this.totalBytesRetired;
        int i2 = this.bufferSize;
        int i3 = i + i2;
        int i4 = this.currentLimit;
        if (i3 > i4) {
            this.bufferSizeAfterLimit = i3 - i4;
            this.bufferSize = i2 - this.bufferSizeAfterLimit;
            return;
        }
        this.bufferSizeAfterLimit = 0;
    }

    public void popLimit(int i) {
        this.currentLimit = i;
        recomputeBufferSizeAfterLimit();
    }

    public int getBytesUntilLimit() {
        int i = this.currentLimit;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.totalBytesRetired + this.bufferPos);
    }

    public boolean isAtEnd() throws IOException {
        return this.bufferPos == this.bufferSize && !refillBuffer(false);
    }

    private boolean refillBuffer(boolean z) throws IOException {
        int i = this.bufferPos;
        int i2 = this.bufferSize;
        if (i >= i2) {
            int i3 = this.totalBytesRetired;
            if (i3 + i2 != this.currentLimit) {
                this.totalBytesRetired = i3 + i2;
                this.bufferPos = 0;
                InputStream inputStream = this.input;
                this.bufferSize = inputStream == null ? -1 : inputStream.read(this.buffer);
                int i4 = this.bufferSize;
                if (i4 == 0 || i4 < -1) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("InputStream#read(byte[]) returned invalid result: ");
                    sb.append(this.bufferSize);
                    sb.append("\nThe InputStream implementation is buggy.");
                    throw new IllegalStateException(sb.toString());
                } else if (i4 == -1) {
                    this.bufferSize = 0;
                    if (!z) {
                        return false;
                    }
                    throw InvalidProtocolBufferMicroException.truncatedMessage();
                } else {
                    recomputeBufferSizeAfterLimit();
                    int i5 = this.totalBytesRetired + this.bufferSize + this.bufferSizeAfterLimit;
                    if (i5 <= this.sizeLimit && i5 >= 0) {
                        return true;
                    }
                    throw InvalidProtocolBufferMicroException.sizeLimitExceeded();
                }
            } else if (!z) {
                return false;
            } else {
                throw InvalidProtocolBufferMicroException.truncatedMessage();
            }
        } else {
            throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
        }
    }

    public byte readRawByte() throws IOException {
        if (this.bufferPos == this.bufferSize) {
            refillBuffer(true);
        }
        byte[] bArr = this.buffer;
        int i = this.bufferPos;
        this.bufferPos = i + 1;
        return bArr[i];
    }

    public byte[] readRawBytes(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.totalBytesRetired;
            int i3 = this.bufferPos;
            int i4 = i2 + i3 + i;
            int i5 = this.currentLimit;
            if (i4 <= i5) {
                int i6 = this.bufferSize;
                if (i <= i6 - i3) {
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.buffer, i3, bArr, 0, i);
                    this.bufferPos += i;
                    return bArr;
                } else if (i < 4096) {
                    byte[] bArr2 = new byte[i];
                    int i7 = i6 - i3;
                    System.arraycopy(this.buffer, i3, bArr2, 0, i7);
                    this.bufferPos = this.bufferSize;
                    refillBuffer(true);
                    while (true) {
                        int i8 = i - i7;
                        int i9 = this.bufferSize;
                        if (i8 > i9) {
                            System.arraycopy(this.buffer, 0, bArr2, i7, i9);
                            int i10 = this.bufferSize;
                            i7 += i10;
                            this.bufferPos = i10;
                            refillBuffer(true);
                        } else {
                            System.arraycopy(this.buffer, 0, bArr2, i7, i8);
                            this.bufferPos = i8;
                            return bArr2;
                        }
                    }
                } else {
                    this.totalBytesRetired = i2 + i6;
                    this.bufferPos = 0;
                    this.bufferSize = 0;
                    int i11 = i6 - i3;
                    int i12 = i - i11;
                    ArrayList arrayList = new ArrayList();
                    while (i12 > 0) {
                        byte[] bArr3 = new byte[Math.min(i12, 4096)];
                        int i13 = 0;
                        while (i13 < bArr3.length) {
                            InputStream inputStream = this.input;
                            int read = inputStream == null ? -1 : inputStream.read(bArr3, i13, bArr3.length - i13);
                            if (read != -1) {
                                this.totalBytesRetired += read;
                                i13 += read;
                            } else {
                                throw InvalidProtocolBufferMicroException.truncatedMessage();
                            }
                        }
                        i12 -= bArr3.length;
                        arrayList.add(bArr3);
                    }
                    byte[] bArr4 = new byte[i];
                    System.arraycopy(this.buffer, i3, bArr4, 0, i11);
                    for (int i14 = 0; i14 < arrayList.size(); i14++) {
                        byte[] bArr5 = (byte[]) arrayList.get(i14);
                        System.arraycopy(bArr5, 0, bArr4, i11, bArr5.length);
                        i11 += bArr5.length;
                    }
                    return bArr4;
                }
            } else {
                skipRawBytes((i5 - i2) - i3);
                throw InvalidProtocolBufferMicroException.truncatedMessage();
            }
        } else {
            throw InvalidProtocolBufferMicroException.negativeSize();
        }
    }

    public void skipRawBytes(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.totalBytesRetired;
            int i3 = this.bufferPos;
            int i4 = i2 + i3 + i;
            int i5 = this.currentLimit;
            if (i4 <= i5) {
                int i6 = this.bufferSize;
                if (i <= i6 - i3) {
                    this.bufferPos = i3 + i;
                    return;
                }
                int i7 = i6 - i3;
                this.totalBytesRetired = i2 + i7;
                this.bufferPos = 0;
                this.bufferSize = 0;
                while (i7 < i) {
                    InputStream inputStream = this.input;
                    int skip = inputStream == null ? -1 : (int) inputStream.skip((long) (i - i7));
                    if (skip > 0) {
                        i7 += skip;
                        this.totalBytesRetired += skip;
                    } else {
                        throw InvalidProtocolBufferMicroException.truncatedMessage();
                    }
                }
                return;
            }
            skipRawBytes((i5 - i2) - i3);
            throw InvalidProtocolBufferMicroException.truncatedMessage();
        }
        throw InvalidProtocolBufferMicroException.negativeSize();
    }
}
