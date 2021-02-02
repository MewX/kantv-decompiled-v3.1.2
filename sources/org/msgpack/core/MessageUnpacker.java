package org.msgpack.core;

import com.avos.avoscloud.java_websocket.drafts.Draft_75;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.HashMap;
import org.msgpack.core.MessagePack.Code;
import org.msgpack.core.MessagePack.UnpackerConfig;
import org.msgpack.core.buffer.MessageBuffer;
import org.msgpack.core.buffer.MessageBufferInput;
import org.msgpack.value.ImmutableValue;
import org.msgpack.value.Value;
import org.msgpack.value.ValueFactory;
import org.msgpack.value.Variable;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

public class MessageUnpacker implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final MessageBuffer EMPTY_BUFFER = MessageBuffer.wrap(new byte[0]);
    private static final String EMPTY_STRING = "";
    private final CodingErrorAction actionOnMalformedString;
    private final CodingErrorAction actionOnUnmappableString;
    private final boolean allowReadingBinaryAsString;
    private final boolean allowReadingStringAsBinary;
    private MessageBuffer buffer = EMPTY_BUFFER;
    private CharBuffer decodeBuffer;
    private StringBuilder decodeStringBuffer;
    private CharsetDecoder decoder;
    private MessageBufferInput in;
    private int nextReadPosition;
    private final MessageBuffer numberBuffer = MessageBuffer.allocate(8);
    private int position;
    private final int stringDecoderBufferSize;
    private final int stringSizeLimit;
    private long totalReadBytes;

    protected MessageUnpacker(MessageBufferInput messageBufferInput, UnpackerConfig unpackerConfig) {
        this.in = (MessageBufferInput) Preconditions.checkNotNull(messageBufferInput, "MessageBufferInput is null");
        this.allowReadingStringAsBinary = unpackerConfig.getAllowReadingStringAsBinary();
        this.allowReadingBinaryAsString = unpackerConfig.getAllowReadingBinaryAsString();
        this.actionOnMalformedString = unpackerConfig.getActionOnMalformedString();
        this.actionOnUnmappableString = unpackerConfig.getActionOnUnmappableString();
        this.stringSizeLimit = unpackerConfig.getStringSizeLimit();
        this.stringDecoderBufferSize = unpackerConfig.getStringDecoderBufferSize();
    }

    public MessageBufferInput reset(MessageBufferInput messageBufferInput) throws IOException {
        MessageBufferInput messageBufferInput2 = (MessageBufferInput) Preconditions.checkNotNull(messageBufferInput, "MessageBufferInput is null");
        MessageBufferInput messageBufferInput3 = this.in;
        this.in = messageBufferInput2;
        this.buffer = EMPTY_BUFFER;
        this.position = 0;
        this.totalReadBytes = 0;
        return messageBufferInput3;
    }

    public long getTotalReadBytes() {
        return this.totalReadBytes + ((long) this.position);
    }

    private MessageBuffer getNextBuffer() throws IOException {
        MessageBuffer next = this.in.next();
        if (next != null) {
            this.totalReadBytes += (long) this.buffer.size();
            return next;
        }
        throw new MessageInsufficientBufferException();
    }

    private void nextBuffer() throws IOException {
        this.buffer = getNextBuffer();
        this.position = 0;
    }

    private MessageBuffer prepareNumberBuffer(int i) throws IOException {
        int i2;
        int size = this.buffer.size();
        int i3 = this.position;
        int i4 = size - i3;
        if (i4 >= i) {
            this.nextReadPosition = i3;
            this.position = i3 + i;
            return this.buffer;
        }
        if (i4 > 0) {
            this.numberBuffer.putMessageBuffer(0, this.buffer, i3, i4);
            i -= i4;
            i2 = i4 + 0;
        } else {
            i2 = 0;
        }
        while (true) {
            nextBuffer();
            int size2 = this.buffer.size();
            if (size2 >= i) {
                this.numberBuffer.putMessageBuffer(i2, this.buffer, 0, i);
                this.position = i;
                this.nextReadPosition = 0;
                return this.numberBuffer;
            }
            this.numberBuffer.putMessageBuffer(i2, this.buffer, 0, size2);
            i -= size2;
            i2 += size2;
        }
    }

    private static int utf8MultibyteCharacterSize(byte b) {
        return Integer.numberOfLeadingZeros(((b & Draft_75.END_OF_FRAME) ^ -1) << 24);
    }

    public boolean hasNext() throws IOException {
        return ensureBuffer();
    }

    private boolean ensureBuffer() throws IOException {
        while (this.buffer.size() <= this.position) {
            MessageBuffer next = this.in.next();
            if (next == null) {
                return false;
            }
            this.totalReadBytes += (long) this.buffer.size();
            this.buffer = next;
            this.position = 0;
        }
        return true;
    }

    public MessageFormat getNextFormat() throws IOException {
        if (ensureBuffer()) {
            return MessageFormat.valueOf(this.buffer.getByte(this.position));
        }
        throw new MessageInsufficientBufferException();
    }

    private byte readByte() throws IOException {
        int size = this.buffer.size();
        int i = this.position;
        if (size > i) {
            byte b = this.buffer.getByte(i);
            this.position++;
            return b;
        }
        nextBuffer();
        if (this.buffer.size() <= 0) {
            return readByte();
        }
        byte b2 = this.buffer.getByte(0);
        this.position = 1;
        return b2;
    }

    private short readShort() throws IOException {
        return prepareNumberBuffer(2).getShort(this.nextReadPosition);
    }

    private int readInt() throws IOException {
        return prepareNumberBuffer(4).getInt(this.nextReadPosition);
    }

    private long readLong() throws IOException {
        return prepareNumberBuffer(8).getLong(this.nextReadPosition);
    }

    private float readFloat() throws IOException {
        return prepareNumberBuffer(4).getFloat(this.nextReadPosition);
    }

    private double readDouble() throws IOException {
        return prepareNumberBuffer(8).getDouble(this.nextReadPosition);
    }

    public void skipValue() throws IOException {
        skipValue(1);
    }

    public void skipValue(int i) throws IOException {
        int i2;
        int i3;
        while (i > 0) {
            byte readByte = readByte();
            switch (MessageFormat.valueOf(readByte)) {
                case FIXMAP:
                    i3 = readByte & 15;
                    break;
                case FIXARRAY:
                    i2 = readByte & 15;
                    break;
                case FIXSTR:
                    skipPayload(readByte & 31);
                    continue;
                case INT8:
                case UINT8:
                    skipPayload(1);
                    continue;
                case INT16:
                case UINT16:
                    skipPayload(2);
                    continue;
                case INT32:
                case UINT32:
                case FLOAT32:
                    skipPayload(4);
                    continue;
                case INT64:
                case UINT64:
                case FLOAT64:
                    skipPayload(8);
                    continue;
                case BIN8:
                case STR8:
                    skipPayload(readNextLength8());
                    continue;
                case BIN16:
                case STR16:
                    skipPayload(readNextLength16());
                    continue;
                case BIN32:
                case STR32:
                    skipPayload(readNextLength32());
                    continue;
                case FIXEXT1:
                    skipPayload(2);
                    continue;
                case FIXEXT2:
                    skipPayload(3);
                    continue;
                case FIXEXT4:
                    skipPayload(5);
                    continue;
                case FIXEXT8:
                    skipPayload(9);
                    continue;
                case FIXEXT16:
                    skipPayload(17);
                    continue;
                case EXT8:
                    skipPayload(readNextLength8() + 1);
                    continue;
                case EXT16:
                    skipPayload(readNextLength16() + 1);
                    continue;
                case EXT32:
                    skipPayload(readNextLength32() + 1);
                    continue;
                case ARRAY16:
                    i2 = readNextLength16();
                    break;
                case ARRAY32:
                    i2 = readNextLength32();
                    break;
                case MAP16:
                    i3 = readNextLength16();
                    break;
                case MAP32:
                    i3 = readNextLength32();
                    break;
                case NEVER_USED:
                    throw new MessageNeverUsedFormatException("Encountered 0xC1 \"NEVER_USED\" byte");
            }
            i2 = i3 * 2;
            i += i2;
            i--;
        }
    }

    private static MessagePackException unexpected(String str, byte b) {
        MessageFormat valueOf = MessageFormat.valueOf(b);
        if (valueOf == MessageFormat.NEVER_USED) {
            return new MessageNeverUsedFormatException(String.format("Expected %s, but encountered 0xC1 \"NEVER_USED\" byte", new Object[]{str}));
        }
        String name = valueOf.getValueType().name();
        StringBuilder sb = new StringBuilder();
        sb.append(name.substring(0, 1));
        sb.append(name.substring(1).toLowerCase());
        return new MessageTypeException(String.format("Expected %s, but got %s (%02x)", new Object[]{str, sb.toString(), Byte.valueOf(b)}));
    }

    public ImmutableValue unpackValue() throws IOException {
        int i = 0;
        switch (getNextFormat().getValueType()) {
            case NIL:
                readByte();
                return ValueFactory.newNil();
            case BOOLEAN:
                return ValueFactory.newBoolean(unpackBoolean());
            case INTEGER:
                if (AnonymousClass1.$SwitchMap$org$msgpack$core$MessageFormat[getNextFormat().ordinal()] != 16) {
                    return ValueFactory.newInteger(unpackLong());
                }
                return ValueFactory.newInteger(unpackBigInteger());
            case FLOAT:
                return ValueFactory.newFloat(unpackDouble());
            case STRING:
                return ValueFactory.newString(readPayload(unpackRawStringHeader()), true);
            case BINARY:
                return ValueFactory.newBinary(readPayload(unpackBinaryHeader()), true);
            case ARRAY:
                int unpackArrayHeader = unpackArrayHeader();
                Value[] valueArr = new Value[unpackArrayHeader];
                while (i < unpackArrayHeader) {
                    valueArr[i] = unpackValue();
                    i++;
                }
                return ValueFactory.newArray(valueArr, true);
            case MAP:
                int unpackMapHeader = unpackMapHeader() * 2;
                Value[] valueArr2 = new Value[unpackMapHeader];
                while (i < unpackMapHeader) {
                    valueArr2[i] = unpackValue();
                    int i2 = i + 1;
                    valueArr2[i2] = unpackValue();
                    i = i2 + 1;
                }
                return ValueFactory.newMap(valueArr2, true);
            case EXTENSION:
                ExtensionTypeHeader unpackExtensionTypeHeader = unpackExtensionTypeHeader();
                return ValueFactory.newExtension(unpackExtensionTypeHeader.getType(), readPayload(unpackExtensionTypeHeader.getLength()));
            default:
                throw new MessageNeverUsedFormatException("Unknown value type");
        }
    }

    public Variable unpackValue(Variable variable) throws IOException {
        int i = 0;
        switch (getNextFormat().getValueType()) {
            case NIL:
                readByte();
                variable.setNilValue();
                return variable;
            case BOOLEAN:
                variable.setBooleanValue(unpackBoolean());
                return variable;
            case INTEGER:
                if (AnonymousClass1.$SwitchMap$org$msgpack$core$MessageFormat[getNextFormat().ordinal()] != 16) {
                    variable.setIntegerValue(unpackLong());
                    return variable;
                }
                variable.setIntegerValue(unpackBigInteger());
                return variable;
            case FLOAT:
                variable.setFloatValue(unpackDouble());
                return variable;
            case STRING:
                variable.setStringValue(readPayload(unpackRawStringHeader()));
                return variable;
            case BINARY:
                variable.setBinaryValue(readPayload(unpackBinaryHeader()));
                return variable;
            case ARRAY:
                int unpackArrayHeader = unpackArrayHeader();
                ArrayList arrayList = new ArrayList(unpackArrayHeader);
                while (i < unpackArrayHeader) {
                    arrayList.add(unpackValue());
                    i++;
                }
                variable.setArrayValue(arrayList);
                return variable;
            case MAP:
                int unpackMapHeader = unpackMapHeader();
                HashMap hashMap = new HashMap();
                while (i < unpackMapHeader) {
                    hashMap.put(unpackValue(), unpackValue());
                    i++;
                }
                variable.setMapValue(hashMap);
                return variable;
            case EXTENSION:
                ExtensionTypeHeader unpackExtensionTypeHeader = unpackExtensionTypeHeader();
                variable.setExtensionValue(unpackExtensionTypeHeader.getType(), readPayload(unpackExtensionTypeHeader.getLength()));
                return variable;
            default:
                throw new MessageFormatException("Unknown value type");
        }
    }

    public void unpackNil() throws IOException {
        byte readByte = readByte();
        if (readByte != -64) {
            throw unexpected("Nil", readByte);
        }
    }

    public boolean tryUnpackNil() throws IOException {
        if (!ensureBuffer()) {
            throw new MessageInsufficientBufferException();
        } else if (this.buffer.getByte(this.position) != -64) {
            return false;
        } else {
            readByte();
            return true;
        }
    }

    public boolean unpackBoolean() throws IOException {
        byte readByte = readByte();
        if (readByte == -62) {
            return false;
        }
        if (readByte == -61) {
            return true;
        }
        throw unexpected("boolean", readByte);
    }

    public byte unpackByte() throws IOException {
        long readLong;
        byte readByte = readByte();
        if (Code.isFixInt(readByte)) {
            return readByte;
        }
        switch (readByte) {
            case -52:
                byte readByte2 = readByte();
                if (readByte2 >= 0) {
                    return readByte2;
                }
                throw overflowU8(readByte2);
            case -51:
                short readShort = readShort();
                if (readShort >= 0 && readShort <= 127) {
                    return (byte) readShort;
                }
                throw overflowU16(readShort);
            case -50:
                int readInt = readInt();
                if (readInt >= 0 && readInt <= 127) {
                    return (byte) readInt;
                }
                throw overflowU32(readInt);
            case -49:
                readLong = readLong();
                if (readLong < 0 || readLong > 127) {
                    throw overflowU64(readLong);
                }
            case -48:
                return readByte();
            case -47:
                short readShort2 = readShort();
                if (readShort2 >= -128 && readShort2 <= 127) {
                    return (byte) readShort2;
                }
                throw overflowI16(readShort2);
            case -46:
                int readInt2 = readInt();
                if (readInt2 >= -128 && readInt2 <= 127) {
                    return (byte) readInt2;
                }
                throw overflowI32(readInt2);
            case -45:
                readLong = readLong();
                if (readLong < -128 || readLong > 127) {
                    throw overflowI64(readLong);
                }
            default:
                throw unexpected("Integer", readByte);
        }
        return (byte) ((int) readLong);
    }

    public short unpackShort() throws IOException {
        int readByte;
        long readLong;
        byte readByte2 = readByte();
        if (Code.isFixInt(readByte2)) {
            return (short) readByte2;
        }
        switch (readByte2) {
            case -52:
                readByte = readByte() & Draft_75.END_OF_FRAME;
                break;
            case -51:
                short readShort = readShort();
                if (readShort >= 0) {
                    return readShort;
                }
                throw overflowU16(readShort);
            case -50:
                int readInt = readInt();
                if (readInt >= 0 && readInt <= 32767) {
                    return (short) readInt;
                }
                throw overflowU32(readInt);
            case -49:
                readLong = readLong();
                if (readLong < 0 || readLong > 32767) {
                    throw overflowU64(readLong);
                }
            case -48:
                readByte = readByte();
                break;
            case -47:
                return readShort();
            case -46:
                int readInt2 = readInt();
                if (readInt2 >= -32768 && readInt2 <= 32767) {
                    return (short) readInt2;
                }
                throw overflowI32(readInt2);
            case -45:
                readLong = readLong();
                if (readLong < -32768 || readLong > 32767) {
                    throw overflowI64(readLong);
                }
            default:
                throw unexpected("Integer", readByte2);
        }
        readByte = (int) readLong;
        return (short) readByte;
    }

    public int unpackInt() throws IOException {
        byte readByte = readByte();
        if (Code.isFixInt(readByte)) {
            return readByte;
        }
        switch (readByte) {
            case -52:
                return readByte() & Draft_75.END_OF_FRAME;
            case -51:
                return readShort() & 65535;
            case -50:
                int readInt = readInt();
                if (readInt >= 0) {
                    return readInt;
                }
                throw overflowU32(readInt);
            case -49:
                long readLong = readLong();
                if (readLong >= 0 && readLong <= 2147483647L) {
                    return (int) readLong;
                }
                throw overflowU64(readLong);
            case -48:
                return readByte();
            case -47:
                return readShort();
            case -46:
                return readInt();
            case -45:
                long readLong2 = readLong();
                if (readLong2 >= -2147483648L && readLong2 <= 2147483647L) {
                    return (int) readLong2;
                }
                throw overflowI64(readLong2);
            default:
                throw unexpected("Integer", readByte);
        }
    }

    public long unpackLong() throws IOException {
        byte readByte = readByte();
        if (Code.isFixInt(readByte)) {
            return (long) readByte;
        }
        switch (readByte) {
            case -52:
                return (long) (readByte() & Draft_75.END_OF_FRAME);
            case -51:
                return (long) (readShort() & 65535);
            case -50:
                int readInt = readInt();
                return readInt < 0 ? ((long) (readInt & Integer.MAX_VALUE)) + IjkMediaMeta.AV_CH_WIDE_LEFT : (long) readInt;
            case -49:
                long readLong = readLong();
                if (readLong >= 0) {
                    return readLong;
                }
                throw overflowU64(readLong);
            case -48:
                return (long) readByte();
            case -47:
                return (long) readShort();
            case -46:
                return (long) readInt();
            case -45:
                return readLong();
            default:
                throw unexpected("Integer", readByte);
        }
    }

    public BigInteger unpackBigInteger() throws IOException {
        byte readByte = readByte();
        if (Code.isFixInt(readByte)) {
            return BigInteger.valueOf((long) readByte);
        }
        switch (readByte) {
            case -52:
                return BigInteger.valueOf((long) (readByte() & Draft_75.END_OF_FRAME));
            case -51:
                return BigInteger.valueOf((long) (readShort() & 65535));
            case -50:
                int readInt = readInt();
                if (readInt < 0) {
                    return BigInteger.valueOf(((long) (readInt & Integer.MAX_VALUE)) + IjkMediaMeta.AV_CH_WIDE_LEFT);
                }
                return BigInteger.valueOf((long) readInt);
            case -49:
                long readLong = readLong();
                if (readLong < 0) {
                    return BigInteger.valueOf(readLong + Long.MAX_VALUE + 1).setBit(63);
                }
                return BigInteger.valueOf(readLong);
            case -48:
                return BigInteger.valueOf((long) readByte());
            case -47:
                return BigInteger.valueOf((long) readShort());
            case -46:
                return BigInteger.valueOf((long) readInt());
            case -45:
                return BigInteger.valueOf(readLong());
            default:
                throw unexpected("Integer", readByte);
        }
    }

    public float unpackFloat() throws IOException {
        byte readByte = readByte();
        if (readByte == -54) {
            return readFloat();
        }
        if (readByte == -53) {
            return (float) readDouble();
        }
        throw unexpected("Float", readByte);
    }

    public double unpackDouble() throws IOException {
        byte readByte = readByte();
        if (readByte == -54) {
            return (double) readFloat();
        }
        if (readByte == -53) {
            return readDouble();
        }
        throw unexpected("Float", readByte);
    }

    private void resetDecoder() {
        CharsetDecoder charsetDecoder = this.decoder;
        if (charsetDecoder == null) {
            this.decodeBuffer = CharBuffer.allocate(this.stringDecoderBufferSize);
            this.decoder = MessagePack.UTF8.newDecoder().onMalformedInput(this.actionOnMalformedString).onUnmappableCharacter(this.actionOnUnmappableString);
        } else {
            charsetDecoder.reset();
        }
        StringBuilder sb = this.decodeStringBuffer;
        if (sb == null) {
            this.decodeStringBuffer = new StringBuilder();
        } else {
            sb.setLength(0);
        }
    }

    /* JADX INFO: used method not loaded: org.msgpack.core.MessageFormatException.<init>(java.lang.String):null, types can be incorrect */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        r4.throwException();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0100, code lost:
        throw new org.msgpack.core.MessageFormatException(r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String unpackString() throws java.io.IOException {
        /*
            r8 = this;
            java.lang.String r0 = "Unexpected UTF-8 multibyte sequence"
            int r1 = r8.unpackRawStringHeader()
            if (r1 != 0) goto L_0x000b
            java.lang.String r0 = ""
            return r0
        L_0x000b:
            int r2 = r8.stringSizeLimit
            r3 = 0
            if (r1 > r2) goto L_0x012a
            r8.resetDecoder()
            org.msgpack.core.buffer.MessageBuffer r2 = r8.buffer
            int r2 = r2.size()
            int r4 = r8.position
            int r2 = r2 - r4
            if (r2 < r1) goto L_0x0023
            java.lang.String r0 = r8.decodeStringFastPath(r1)
            return r0
        L_0x0023:
            if (r1 <= 0) goto L_0x011c
            org.msgpack.core.buffer.MessageBuffer r2 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r2 = r2.size()     // Catch:{ CharacterCodingException -> 0x0123 }
            int r4 = r8.position     // Catch:{ CharacterCodingException -> 0x0123 }
            int r2 = r2 - r4
            if (r2 < r1) goto L_0x003b
            java.lang.StringBuilder r0 = r8.decodeStringBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.lang.String r1 = r8.decodeStringFastPath(r1)     // Catch:{ CharacterCodingException -> 0x0123 }
            r0.append(r1)     // Catch:{ CharacterCodingException -> 0x0123 }
            goto L_0x011c
        L_0x003b:
            if (r2 != 0) goto L_0x0041
            r8.nextBuffer()     // Catch:{ CharacterCodingException -> 0x0123 }
            goto L_0x0023
        L_0x0041:
            org.msgpack.core.buffer.MessageBuffer r4 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r5 = r8.position     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.ByteBuffer r4 = r4.sliceAsByteBuffer(r5, r2)     // Catch:{ CharacterCodingException -> 0x0123 }
            int r5 = r4.position()     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.CharBuffer r6 = r8.decodeBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            r6.clear()     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.charset.CharsetDecoder r6 = r8.decoder     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.CharBuffer r7 = r8.decodeBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.charset.CoderResult r6 = r6.decode(r4, r7, r3)     // Catch:{ CharacterCodingException -> 0x0123 }
            int r4 = r4.position()     // Catch:{ CharacterCodingException -> 0x0123 }
            int r4 = r4 - r5
            int r5 = r8.position     // Catch:{ CharacterCodingException -> 0x0123 }
            int r5 = r5 + r4
            r8.position = r5     // Catch:{ CharacterCodingException -> 0x0123 }
            int r1 = r1 - r4
            java.lang.StringBuilder r5 = r8.decodeStringBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.CharBuffer r7 = r8.decodeBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.Buffer r7 = r7.flip()     // Catch:{ CharacterCodingException -> 0x0123 }
            r5.append(r7)     // Catch:{ CharacterCodingException -> 0x0123 }
            boolean r5 = r6.isError()     // Catch:{ CharacterCodingException -> 0x0123 }
            if (r5 == 0) goto L_0x0079
            r8.handleCoderError(r6)     // Catch:{ CharacterCodingException -> 0x0123 }
        L_0x0079:
            boolean r5 = r6.isUnderflow()     // Catch:{ CharacterCodingException -> 0x0123 }
            if (r5 == 0) goto L_0x0023
            if (r4 >= r2) goto L_0x0023
            org.msgpack.core.buffer.MessageBuffer r2 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r4 = r8.position     // Catch:{ CharacterCodingException -> 0x0123 }
            byte r2 = r2.getByte(r4)     // Catch:{ CharacterCodingException -> 0x0123 }
            int r2 = utf8MultibyteCharacterSize(r2)     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.ByteBuffer r2 = java.nio.ByteBuffer.allocate(r2)     // Catch:{ CharacterCodingException -> 0x0123 }
            org.msgpack.core.buffer.MessageBuffer r4 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r5 = r8.position     // Catch:{ CharacterCodingException -> 0x0123 }
            org.msgpack.core.buffer.MessageBuffer r6 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r6 = r6.size()     // Catch:{ CharacterCodingException -> 0x0123 }
            int r7 = r8.position     // Catch:{ CharacterCodingException -> 0x0123 }
            int r6 = r6 - r7
            r4.getBytes(r5, r6, r2)     // Catch:{ CharacterCodingException -> 0x0123 }
        L_0x00a1:
            r8.nextBuffer()     // Catch:{ CharacterCodingException -> 0x0123 }
            int r4 = r2.remaining()     // Catch:{ CharacterCodingException -> 0x0123 }
            org.msgpack.core.buffer.MessageBuffer r5 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r5 = r5.size()     // Catch:{ CharacterCodingException -> 0x0123 }
            if (r5 < r4) goto L_0x0108
            org.msgpack.core.buffer.MessageBuffer r5 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            r5.getBytes(r3, r4, r2)     // Catch:{ CharacterCodingException -> 0x0123 }
            r8.position = r4     // Catch:{ CharacterCodingException -> 0x0123 }
            r2.position(r3)     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.CharBuffer r4 = r8.decodeBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            r4.clear()     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.charset.CharsetDecoder r4 = r8.decoder     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.CharBuffer r5 = r8.decodeBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.charset.CoderResult r4 = r4.decode(r2, r5, r3)     // Catch:{ CharacterCodingException -> 0x0123 }
            boolean r5 = r4.isError()     // Catch:{ CharacterCodingException -> 0x0123 }
            if (r5 == 0) goto L_0x00d0
            r8.handleCoderError(r4)     // Catch:{ CharacterCodingException -> 0x0123 }
        L_0x00d0:
            boolean r5 = r4.isOverflow()     // Catch:{ CharacterCodingException -> 0x0123 }
            if (r5 != 0) goto L_0x00f8
            boolean r5 = r4.isUnderflow()     // Catch:{ CharacterCodingException -> 0x0123 }
            if (r5 == 0) goto L_0x00e6
            int r5 = r2.position()     // Catch:{ CharacterCodingException -> 0x0123 }
            int r6 = r2.limit()     // Catch:{ CharacterCodingException -> 0x0123 }
            if (r5 < r6) goto L_0x00f8
        L_0x00e6:
            int r2 = r2.limit()     // Catch:{ CharacterCodingException -> 0x0123 }
            int r1 = r1 - r2
            java.lang.StringBuilder r2 = r8.decodeStringBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.CharBuffer r4 = r8.decodeBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.nio.Buffer r4 = r4.flip()     // Catch:{ CharacterCodingException -> 0x0123 }
            r2.append(r4)     // Catch:{ CharacterCodingException -> 0x0123 }
            goto L_0x0023
        L_0x00f8:
            r4.throwException()     // Catch:{ Exception -> 0x0101 }
            org.msgpack.core.MessageFormatException r1 = new org.msgpack.core.MessageFormatException     // Catch:{ Exception -> 0x0101 }
            r1.<init>(r0)     // Catch:{ Exception -> 0x0101 }
            throw r1     // Catch:{ Exception -> 0x0101 }
        L_0x0101:
            r1 = move-exception
            org.msgpack.core.MessageFormatException r2 = new org.msgpack.core.MessageFormatException     // Catch:{ CharacterCodingException -> 0x0123 }
            r2.<init>(r0, r1)     // Catch:{ CharacterCodingException -> 0x0123 }
            throw r2     // Catch:{ CharacterCodingException -> 0x0123 }
        L_0x0108:
            org.msgpack.core.buffer.MessageBuffer r4 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            org.msgpack.core.buffer.MessageBuffer r5 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r5 = r5.size()     // Catch:{ CharacterCodingException -> 0x0123 }
            r4.getBytes(r3, r5, r2)     // Catch:{ CharacterCodingException -> 0x0123 }
            org.msgpack.core.buffer.MessageBuffer r4 = r8.buffer     // Catch:{ CharacterCodingException -> 0x0123 }
            int r4 = r4.size()     // Catch:{ CharacterCodingException -> 0x0123 }
            r8.position = r4     // Catch:{ CharacterCodingException -> 0x0123 }
            goto L_0x00a1
        L_0x011c:
            java.lang.StringBuilder r0 = r8.decodeStringBuffer     // Catch:{ CharacterCodingException -> 0x0123 }
            java.lang.String r0 = r0.toString()     // Catch:{ CharacterCodingException -> 0x0123 }
            return r0
        L_0x0123:
            r0 = move-exception
            org.msgpack.core.MessageStringCodingException r1 = new org.msgpack.core.MessageStringCodingException
            r1.<init>(r0)
            throw r1
        L_0x012a:
            org.msgpack.core.MessageSizeException r0 = new org.msgpack.core.MessageSizeException
            r4 = 2
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r4[r3] = r2
            r2 = 1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)
            r4[r2] = r3
            java.lang.String r2 = "cannot unpack a String of size larger than %,d: %,d"
            java.lang.String r2 = java.lang.String.format(r2, r4)
            long r3 = (long) r1
            r0.<init>(r2, r3)
            goto L_0x0148
        L_0x0147:
            throw r0
        L_0x0148:
            goto L_0x0147
        */
        throw new UnsupportedOperationException("Method not decompiled: org.msgpack.core.MessageUnpacker.unpackString():java.lang.String");
    }

    private void handleCoderError(CoderResult coderResult) throws CharacterCodingException {
        if ((coderResult.isMalformed() && this.actionOnMalformedString == CodingErrorAction.REPORT) || (coderResult.isUnmappable() && this.actionOnUnmappableString == CodingErrorAction.REPORT)) {
            coderResult.throwException();
        }
    }

    private String decodeStringFastPath(int i) {
        if (this.actionOnMalformedString == CodingErrorAction.REPLACE && this.actionOnUnmappableString == CodingErrorAction.REPLACE && this.buffer.hasArray()) {
            String str = new String(this.buffer.array(), this.buffer.arrayOffset() + this.position, i, MessagePack.UTF8);
            this.position += i;
            return str;
        }
        try {
            CharBuffer decode = this.decoder.decode(this.buffer.sliceAsByteBuffer(this.position, i));
            this.position += i;
            return decode.toString();
        } catch (CharacterCodingException e) {
            throw new MessageStringCodingException(e);
        }
    }

    public int unpackArrayHeader() throws IOException {
        byte readByte = readByte();
        if (Code.isFixedArray(readByte)) {
            return readByte & 15;
        }
        if (readByte == -36) {
            return readNextLength16();
        }
        if (readByte == -35) {
            return readNextLength32();
        }
        throw unexpected("Array", readByte);
    }

    public int unpackMapHeader() throws IOException {
        byte readByte = readByte();
        if (Code.isFixedMap(readByte)) {
            return readByte & 15;
        }
        if (readByte == -34) {
            return readNextLength16();
        }
        if (readByte == -33) {
            return readNextLength32();
        }
        throw unexpected("Map", readByte);
    }

    public ExtensionTypeHeader unpackExtensionTypeHeader() throws IOException {
        byte readByte = readByte();
        switch (readByte) {
            case -57:
                MessageBuffer prepareNumberBuffer = prepareNumberBuffer(2);
                return new ExtensionTypeHeader(prepareNumberBuffer.getByte(this.nextReadPosition + 1), prepareNumberBuffer.getByte(this.nextReadPosition) & Draft_75.END_OF_FRAME);
            case -56:
                MessageBuffer prepareNumberBuffer2 = prepareNumberBuffer(3);
                return new ExtensionTypeHeader(prepareNumberBuffer2.getByte(this.nextReadPosition + 2), prepareNumberBuffer2.getShort(this.nextReadPosition) & 65535);
            case -55:
                MessageBuffer prepareNumberBuffer3 = prepareNumberBuffer(5);
                int i = prepareNumberBuffer3.getInt(this.nextReadPosition);
                if (i >= 0) {
                    return new ExtensionTypeHeader(prepareNumberBuffer3.getByte(this.nextReadPosition + 4), i);
                }
                throw overflowU32Size(i);
            default:
                switch (readByte) {
                    case -44:
                        return new ExtensionTypeHeader(readByte(), 1);
                    case -43:
                        return new ExtensionTypeHeader(readByte(), 2);
                    case -42:
                        return new ExtensionTypeHeader(readByte(), 4);
                    case -41:
                        return new ExtensionTypeHeader(readByte(), 8);
                    case -40:
                        return new ExtensionTypeHeader(readByte(), 16);
                    default:
                        throw unexpected("Ext", readByte);
                }
        }
    }

    private int tryReadStringHeader(byte b) throws IOException {
        switch (b) {
            case -39:
                return readNextLength8();
            case -38:
                return readNextLength16();
            case -37:
                return readNextLength32();
            default:
                return -1;
        }
    }

    private int tryReadBinaryHeader(byte b) throws IOException {
        switch (b) {
            case -60:
                return readNextLength8();
            case -59:
                return readNextLength16();
            case -58:
                return readNextLength32();
            default:
                return -1;
        }
    }

    public int unpackRawStringHeader() throws IOException {
        byte readByte = readByte();
        if (Code.isFixedRaw(readByte)) {
            return readByte & 31;
        }
        int tryReadStringHeader = tryReadStringHeader(readByte);
        if (tryReadStringHeader >= 0) {
            return tryReadStringHeader;
        }
        if (this.allowReadingBinaryAsString) {
            int tryReadBinaryHeader = tryReadBinaryHeader(readByte);
            if (tryReadBinaryHeader >= 0) {
                return tryReadBinaryHeader;
            }
        }
        throw unexpected("String", readByte);
    }

    public int unpackBinaryHeader() throws IOException {
        byte readByte = readByte();
        if (Code.isFixedRaw(readByte)) {
            return readByte & 31;
        }
        int tryReadBinaryHeader = tryReadBinaryHeader(readByte);
        if (tryReadBinaryHeader >= 0) {
            return tryReadBinaryHeader;
        }
        if (this.allowReadingStringAsBinary) {
            int tryReadStringHeader = tryReadStringHeader(readByte);
            if (tryReadStringHeader >= 0) {
                return tryReadStringHeader;
            }
        }
        throw unexpected("Binary", readByte);
    }

    private void skipPayload(int i) throws IOException {
        while (true) {
            int size = this.buffer.size();
            int i2 = this.position;
            int i3 = size - i2;
            if (i3 >= i) {
                this.position = i2 + i;
                return;
            }
            this.position = i2 + i3;
            i -= i3;
            nextBuffer();
        }
    }

    public void readPayload(ByteBuffer byteBuffer) throws IOException {
        while (true) {
            int remaining = byteBuffer.remaining();
            int size = this.buffer.size();
            int i = this.position;
            int i2 = size - i;
            if (i2 >= remaining) {
                this.buffer.getBytes(i, remaining, byteBuffer);
                this.position += remaining;
                return;
            }
            this.buffer.getBytes(i, i2, byteBuffer);
            this.position += i2;
            nextBuffer();
        }
    }

    public void readPayload(MessageBuffer messageBuffer, int i, int i2) throws IOException {
        while (true) {
            int size = this.buffer.size();
            int i3 = this.position;
            int i4 = size - i3;
            if (i4 >= i2) {
                messageBuffer.putMessageBuffer(i, this.buffer, i3, i2);
                this.position += i2;
                return;
            }
            messageBuffer.putMessageBuffer(i, this.buffer, i3, i4);
            i += i4;
            i2 -= i4;
            this.position += i4;
            nextBuffer();
        }
    }

    public void readPayload(byte[] bArr) throws IOException {
        readPayload(bArr, 0, bArr.length);
    }

    public byte[] readPayload(int i) throws IOException {
        byte[] bArr = new byte[i];
        readPayload(bArr);
        return bArr;
    }

    public void readPayload(byte[] bArr, int i, int i2) throws IOException {
        readPayload(MessageBuffer.wrap(bArr), i, i2);
    }

    public MessageBuffer readPayloadAsReference(int i) throws IOException {
        int size = this.buffer.size();
        int i2 = this.position;
        if (size - i2 >= i) {
            MessageBuffer slice = this.buffer.slice(i2, i);
            this.position += i;
            return slice;
        }
        MessageBuffer allocate = MessageBuffer.allocate(i);
        readPayload(allocate, 0, i);
        return allocate;
    }

    private int readNextLength8() throws IOException {
        return readByte() & Draft_75.END_OF_FRAME;
    }

    private int readNextLength16() throws IOException {
        return readShort() & 65535;
    }

    private int readNextLength32() throws IOException {
        int readInt = readInt();
        if (readInt >= 0) {
            return readInt;
        }
        throw overflowU32Size(readInt);
    }

    public void close() throws IOException {
        this.buffer = EMPTY_BUFFER;
        this.position = 0;
        this.in.close();
    }

    private static MessageIntegerOverflowException overflowU8(byte b) {
        return new MessageIntegerOverflowException(BigInteger.valueOf((long) (b & Draft_75.END_OF_FRAME)));
    }

    private static MessageIntegerOverflowException overflowU16(short s) {
        return new MessageIntegerOverflowException(BigInteger.valueOf((long) (s & 65535)));
    }

    private static MessageIntegerOverflowException overflowU32(int i) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(((long) (i & Integer.MAX_VALUE)) + IjkMediaMeta.AV_CH_WIDE_LEFT));
    }

    private static MessageIntegerOverflowException overflowU64(long j) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(j + Long.MAX_VALUE + 1).setBit(63));
    }

    private static MessageIntegerOverflowException overflowI16(short s) {
        return new MessageIntegerOverflowException(BigInteger.valueOf((long) s));
    }

    private static MessageIntegerOverflowException overflowI32(int i) {
        return new MessageIntegerOverflowException(BigInteger.valueOf((long) i));
    }

    private static MessageIntegerOverflowException overflowI64(long j) {
        return new MessageIntegerOverflowException(BigInteger.valueOf(j));
    }

    private static MessageSizeException overflowU32Size(int i) {
        return new MessageSizeException(((long) (i & Integer.MAX_VALUE)) + IjkMediaMeta.AV_CH_WIDE_LEFT);
    }
}
