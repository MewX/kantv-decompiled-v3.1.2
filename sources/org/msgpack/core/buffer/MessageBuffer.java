package org.msgpack.core.buffer;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import org.msgpack.core.Preconditions;
import sun.misc.Unsafe;

public class MessageBuffer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int ARRAY_BYTE_BASE_OFFSET;
    private static final String BIGENDIAN_MESSAGE_BUFFER = "org.msgpack.core.buffer.MessageBufferBE";
    private static final String DEFAULT_MESSAGE_BUFFER = "org.msgpack.core.buffer.MessageBuffer";
    private static final String UNIVERSAL_MESSAGE_BUFFER = "org.msgpack.core.buffer.MessageBufferU";
    static final boolean isUniversalBuffer;
    private static final Constructor<?> mbArrConstructor;
    private static final Constructor<?> mbBBConstructor;
    static final Unsafe unsafe;
    protected final long address;
    protected final Object base;
    protected final ByteBuffer reference;
    protected final int size;

    /* JADX WARNING: Code restructure failed: missing block: B:100:0x01a3, code lost:
        if (r3 != false) goto L_0x01a5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x01a5, code lost:
        r3 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x01a7, code lost:
        r3 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x0131, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0132, code lost:
        r10 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:97:0x019e, code lost:
        if (java.nio.ByteOrder.nativeOrder() == java.nio.ByteOrder.LITTLE_ENDIAN) goto L_0x01a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x01a0, code lost:
        r3 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x01a2, code lost:
        r3 = false;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x004a  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0065 A[Catch:{ Exception -> 0x0134, all -> 0x0131 }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0067 A[Catch:{ Exception -> 0x0134, all -> 0x0131 }] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0076 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00ea  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0131 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:1:0x0011] */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x0146  */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x0198  */
    static {
        /*
            java.lang.String r0 = ""
            java.lang.String r1 = "org.msgpack.core.buffer.MessageBuffer"
            java.lang.String r2 = "org.msgpack.core.buffer.MessageBufferBE"
            java.lang.String r3 = "org.msgpack.core.buffer.MessageBufferU"
            r4 = 16
            r5 = 0
            r6 = 2
            r7 = 3
            r8 = 0
            r9 = 1
            java.lang.String r10 = "java.specification.version"
            java.lang.String r10 = java.lang.System.getProperty(r10, r0)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            r11 = 46
            int r11 = r10.indexOf(r11)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            r12 = -1
            if (r11 == r12) goto L_0x0037
            java.lang.String r12 = r10.substring(r8, r11)     // Catch:{ NumberFormatException -> 0x003b }
            int r12 = java.lang.Integer.parseInt(r12)     // Catch:{ NumberFormatException -> 0x003b }
            int r11 = r11 + r9
            java.lang.String r10 = r10.substring(r11)     // Catch:{ NumberFormatException -> 0x003b }
            int r10 = java.lang.Integer.parseInt(r10)     // Catch:{ NumberFormatException -> 0x003b }
            if (r12 > r9) goto L_0x0039
            if (r12 != r9) goto L_0x0037
            r11 = 7
            if (r10 < r11) goto L_0x0037
            goto L_0x0039
        L_0x0037:
            r10 = 0
            goto L_0x0042
        L_0x0039:
            r10 = 1
            goto L_0x0042
        L_0x003b:
            r10 = move-exception
            java.io.PrintStream r11 = java.lang.System.err     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            r10.printStackTrace(r11)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            goto L_0x0037
        L_0x0042:
            java.lang.String r11 = "sun.misc.Unsafe"
            java.lang.Class r11 = java.lang.Class.forName(r11)     // Catch:{ Exception -> 0x004c, all -> 0x0131 }
            if (r11 == 0) goto L_0x004c
            r11 = 1
            goto L_0x004d
        L_0x004c:
            r11 = 0
        L_0x004d:
            java.lang.String r12 = "java.runtime.name"
            java.lang.String r0 = java.lang.System.getProperty(r12, r0)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            java.lang.String r0 = r0.toLowerCase()     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            java.lang.String r12 = "android"
            boolean r0 = r0.contains(r12)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            java.lang.String r12 = "com.google.appengine.runtime.version"
            java.lang.String r12 = java.lang.System.getProperty(r12)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            if (r12 == 0) goto L_0x0067
            r12 = 1
            goto L_0x0068
        L_0x0067:
            r12 = 0
        L_0x0068:
            java.lang.String r13 = "msgpack.universal-buffer"
            java.lang.String r14 = "false"
            java.lang.String r13 = java.lang.System.getProperty(r13, r14)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            boolean r13 = java.lang.Boolean.parseBoolean(r13)     // Catch:{ Exception -> 0x0134, all -> 0x0131 }
            if (r13 != 0) goto L_0x0081
            if (r0 != 0) goto L_0x0081
            if (r12 != 0) goto L_0x0081
            if (r10 == 0) goto L_0x0081
            if (r11 != 0) goto L_0x007f
            goto L_0x0081
        L_0x007f:
            r0 = 0
            goto L_0x0082
        L_0x0081:
            r0 = 1
        L_0x0082:
            if (r0 != 0) goto L_0x00df
            java.lang.Class<sun.misc.Unsafe> r10 = sun.misc.Unsafe.class
            java.lang.String r11 = "theUnsafe"
            java.lang.reflect.Field r10 = r10.getDeclaredField(r11)     // Catch:{ Exception -> 0x00da, all -> 0x00d4 }
            r10.setAccessible(r9)     // Catch:{ Exception -> 0x00da, all -> 0x00d4 }
            java.lang.Object r10 = r10.get(r5)     // Catch:{ Exception -> 0x00da, all -> 0x00d4 }
            sun.misc.Unsafe r10 = (sun.misc.Unsafe) r10     // Catch:{ Exception -> 0x00da, all -> 0x00d4 }
            if (r10 == 0) goto L_0x00cc
            java.lang.Class<byte[]> r5 = byte[].class
            int r4 = r10.arrayBaseOffset(r5)     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            java.lang.Class<byte[]> r5 = byte[].class
            int r5 = r10.arrayIndexScale(r5)     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            if (r5 != r9) goto L_0x00a7
            r5 = r10
            goto L_0x00df
        L_0x00a7:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            r12.<init>()     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            java.lang.String r13 = "Byte array index scale must be 1, but is "
            r12.append(r13)     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            r12.append(r5)     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            java.lang.String r5 = r12.toString()     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            r11.<init>(r5)     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            throw r11     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
        L_0x00be:
            r5 = move-exception
            r15 = r10
            r10 = r0
            r0 = r5
            r5 = r15
            goto L_0x018e
        L_0x00c5:
            r5 = move-exception
            r15 = r10
            r10 = r0
            r0 = r5
            r5 = r15
            goto L_0x0136
        L_0x00cc:
            java.lang.RuntimeException r5 = new java.lang.RuntimeException     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            java.lang.String r11 = "Unsafe is unavailable"
            r5.<init>(r11)     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
            throw r5     // Catch:{ Exception -> 0x00c5, all -> 0x00be }
        L_0x00d4:
            r10 = move-exception
            r15 = r10
            r10 = r0
            r0 = r15
            goto L_0x018e
        L_0x00da:
            r10 = move-exception
            r15 = r10
            r10 = r0
            r0 = r15
            goto L_0x0136
        L_0x00df:
            unsafe = r5
            ARRAY_BYTE_BASE_OFFSET = r4
            isUniversalBuffer = r0
            boolean r0 = isUniversalBuffer
            if (r0 == 0) goto L_0x00ea
            goto L_0x00fa
        L_0x00ea:
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r3 = java.nio.ByteOrder.LITTLE_ENDIAN
            if (r0 != r3) goto L_0x00f4
            r0 = 1
            goto L_0x00f5
        L_0x00f4:
            r0 = 0
        L_0x00f5:
            if (r0 == 0) goto L_0x00f9
            r3 = r1
            goto L_0x00fa
        L_0x00f9:
            r3 = r2
        L_0x00fa:
            java.lang.Class r0 = java.lang.Class.forName(r3)     // Catch:{ Exception -> 0x0125 }
            java.lang.Class[] r1 = new java.lang.Class[r7]     // Catch:{ Exception -> 0x0125 }
            java.lang.Class<byte[]> r2 = byte[].class
            r1[r8] = r2     // Catch:{ Exception -> 0x0125 }
            java.lang.Class r2 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x0125 }
            r1[r9] = r2     // Catch:{ Exception -> 0x0125 }
            java.lang.Class r2 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x0125 }
            r1[r6] = r2     // Catch:{ Exception -> 0x0125 }
            java.lang.reflect.Constructor r1 = r0.getDeclaredConstructor(r1)     // Catch:{ Exception -> 0x0125 }
            r1.setAccessible(r9)     // Catch:{ Exception -> 0x0125 }
            mbArrConstructor = r1     // Catch:{ Exception -> 0x0125 }
            java.lang.Class[] r1 = new java.lang.Class[r9]     // Catch:{ Exception -> 0x0125 }
            java.lang.Class<java.nio.ByteBuffer> r2 = java.nio.ByteBuffer.class
            r1[r8] = r2     // Catch:{ Exception -> 0x0125 }
            java.lang.reflect.Constructor r0 = r0.getDeclaredConstructor(r1)     // Catch:{ Exception -> 0x0125 }
            r0.setAccessible(r9)     // Catch:{ Exception -> 0x0125 }
            mbBBConstructor = r0     // Catch:{ Exception -> 0x0125 }
            goto L_0x0180
        L_0x0125:
            r0 = move-exception
            java.io.PrintStream r1 = java.lang.System.err
            r0.printStackTrace(r1)
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            r1.<init>(r0)
            throw r1
        L_0x0131:
            r0 = move-exception
            r10 = 0
            goto L_0x018e
        L_0x0134:
            r0 = move-exception
            r10 = 0
        L_0x0136:
            java.io.PrintStream r11 = java.lang.System.err     // Catch:{ all -> 0x018d }
            r0.printStackTrace(r11)     // Catch:{ all -> 0x018d }
            unsafe = r5
            ARRAY_BYTE_BASE_OFFSET = r4
            isUniversalBuffer = r9
            boolean r0 = isUniversalBuffer
            if (r0 == 0) goto L_0x0146
            goto L_0x0156
        L_0x0146:
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r3 = java.nio.ByteOrder.LITTLE_ENDIAN
            if (r0 != r3) goto L_0x0150
            r0 = 1
            goto L_0x0151
        L_0x0150:
            r0 = 0
        L_0x0151:
            if (r0 == 0) goto L_0x0155
            r3 = r1
            goto L_0x0156
        L_0x0155:
            r3 = r2
        L_0x0156:
            java.lang.Class r0 = java.lang.Class.forName(r3)     // Catch:{ Exception -> 0x0181 }
            java.lang.Class[] r1 = new java.lang.Class[r7]     // Catch:{ Exception -> 0x0181 }
            java.lang.Class<byte[]> r2 = byte[].class
            r1[r8] = r2     // Catch:{ Exception -> 0x0181 }
            java.lang.Class r2 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x0181 }
            r1[r9] = r2     // Catch:{ Exception -> 0x0181 }
            java.lang.Class r2 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x0181 }
            r1[r6] = r2     // Catch:{ Exception -> 0x0181 }
            java.lang.reflect.Constructor r1 = r0.getDeclaredConstructor(r1)     // Catch:{ Exception -> 0x0181 }
            r1.setAccessible(r9)     // Catch:{ Exception -> 0x0181 }
            mbArrConstructor = r1     // Catch:{ Exception -> 0x0181 }
            java.lang.Class[] r1 = new java.lang.Class[r9]     // Catch:{ Exception -> 0x0181 }
            java.lang.Class<java.nio.ByteBuffer> r2 = java.nio.ByteBuffer.class
            r1[r8] = r2     // Catch:{ Exception -> 0x0181 }
            java.lang.reflect.Constructor r0 = r0.getDeclaredConstructor(r1)     // Catch:{ Exception -> 0x0181 }
            r0.setAccessible(r9)     // Catch:{ Exception -> 0x0181 }
            mbBBConstructor = r0     // Catch:{ Exception -> 0x0181 }
        L_0x0180:
            return
        L_0x0181:
            r0 = move-exception
            java.io.PrintStream r1 = java.lang.System.err
            r0.printStackTrace(r1)
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            r1.<init>(r0)
            throw r1
        L_0x018d:
            r0 = move-exception
        L_0x018e:
            unsafe = r5
            ARRAY_BYTE_BASE_OFFSET = r4
            isUniversalBuffer = r10
            boolean r4 = isUniversalBuffer
            if (r4 != 0) goto L_0x01a8
            java.nio.ByteOrder r3 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r4 = java.nio.ByteOrder.LITTLE_ENDIAN
            if (r3 != r4) goto L_0x01a2
            r3 = 1
            goto L_0x01a3
        L_0x01a2:
            r3 = 0
        L_0x01a3:
            if (r3 == 0) goto L_0x01a7
            r3 = r1
            goto L_0x01a8
        L_0x01a7:
            r3 = r2
        L_0x01a8:
            java.lang.Class r1 = java.lang.Class.forName(r3)     // Catch:{ Exception -> 0x01d3 }
            java.lang.Class[] r2 = new java.lang.Class[r7]     // Catch:{ Exception -> 0x01d3 }
            java.lang.Class<byte[]> r3 = byte[].class
            r2[r8] = r3     // Catch:{ Exception -> 0x01d3 }
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x01d3 }
            r2[r9] = r3     // Catch:{ Exception -> 0x01d3 }
            java.lang.Class r3 = java.lang.Integer.TYPE     // Catch:{ Exception -> 0x01d3 }
            r2[r6] = r3     // Catch:{ Exception -> 0x01d3 }
            java.lang.reflect.Constructor r2 = r1.getDeclaredConstructor(r2)     // Catch:{ Exception -> 0x01d3 }
            r2.setAccessible(r9)     // Catch:{ Exception -> 0x01d3 }
            mbArrConstructor = r2     // Catch:{ Exception -> 0x01d3 }
            java.lang.Class[] r2 = new java.lang.Class[r9]     // Catch:{ Exception -> 0x01d3 }
            java.lang.Class<java.nio.ByteBuffer> r3 = java.nio.ByteBuffer.class
            r2[r8] = r3     // Catch:{ Exception -> 0x01d3 }
            java.lang.reflect.Constructor r1 = r1.getDeclaredConstructor(r2)     // Catch:{ Exception -> 0x01d3 }
            r1.setAccessible(r9)     // Catch:{ Exception -> 0x01d3 }
            mbBBConstructor = r1     // Catch:{ Exception -> 0x01d3 }
            throw r0
        L_0x01d3:
            r0 = move-exception
            java.io.PrintStream r1 = java.lang.System.err
            r0.printStackTrace(r1)
            java.lang.RuntimeException r1 = new java.lang.RuntimeException
            r1.<init>(r0)
            goto L_0x01e0
        L_0x01df:
            throw r1
        L_0x01e0:
            goto L_0x01df
        */
        throw new UnsupportedOperationException("Method not decompiled: org.msgpack.core.buffer.MessageBuffer.<clinit>():void");
    }

    public static MessageBuffer allocate(int i) {
        if (i >= 0) {
            return wrap(new byte[i]);
        }
        throw new IllegalArgumentException("size must not be negative");
    }

    public static MessageBuffer wrap(byte[] bArr) {
        return newMessageBuffer(bArr, 0, bArr.length);
    }

    public static MessageBuffer wrap(byte[] bArr, int i, int i2) {
        return newMessageBuffer(bArr, i, i2);
    }

    public static MessageBuffer wrap(ByteBuffer byteBuffer) {
        return newMessageBuffer(byteBuffer);
    }

    private static MessageBuffer newMessageBuffer(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        return newInstance(mbArrConstructor, bArr, Integer.valueOf(i), Integer.valueOf(i2));
    }

    private static MessageBuffer newMessageBuffer(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        return newInstance(mbBBConstructor, byteBuffer);
    }

    private static MessageBuffer newInstance(Constructor<?> constructor, Object... objArr) {
        try {
            return (MessageBuffer) constructor.newInstance(objArr);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException(e2);
        } catch (InvocationTargetException e3) {
            if (e3.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e3.getCause());
            } else if (e3.getCause() instanceof Error) {
                throw ((Error) e3.getCause());
            } else {
                throw new IllegalStateException(e3.getCause());
            }
        }
    }

    public static void releaseBuffer(MessageBuffer messageBuffer) {
        if (!isUniversalBuffer && !messageBuffer.hasArray()) {
            if (DirectBufferAccess.isDirectByteBufferInstance(messageBuffer.reference)) {
                DirectBufferAccess.clean(messageBuffer.reference);
            } else {
                unsafe.freeMemory(messageBuffer.address);
            }
        }
    }

    MessageBuffer(byte[] bArr, int i, int i2) {
        this.base = bArr;
        this.address = (long) (ARRAY_BYTE_BASE_OFFSET + i);
        this.size = i2;
        this.reference = null;
    }

    MessageBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer.isDirect()) {
            if (!isUniversalBuffer) {
                this.base = null;
                this.address = DirectBufferAccess.getAddress(byteBuffer) + ((long) byteBuffer.position());
                this.size = byteBuffer.remaining();
                this.reference = byteBuffer;
                return;
            }
            throw new UnsupportedOperationException("Cannot create MessageBuffer from a DirectBuffer on this platform");
        } else if (byteBuffer.hasArray()) {
            this.base = byteBuffer.array();
            this.address = (long) (ARRAY_BYTE_BASE_OFFSET + byteBuffer.arrayOffset() + byteBuffer.position());
            this.size = byteBuffer.remaining();
            this.reference = null;
        } else {
            throw new IllegalArgumentException("Only the array-backed ByteBuffer or DirectBuffer is supported");
        }
    }

    protected MessageBuffer(Object obj, long j, int i) {
        this.base = obj;
        this.address = j;
        this.size = i;
        this.reference = null;
    }

    public int size() {
        return this.size;
    }

    public MessageBuffer slice(int i, int i2) {
        if (i == 0 && i2 == size()) {
            return this;
        }
        Preconditions.checkArgument(i + i2 <= size());
        return new MessageBuffer(this.base, this.address + ((long) i), i2);
    }

    public byte getByte(int i) {
        return unsafe.getByte(this.base, this.address + ((long) i));
    }

    public boolean getBoolean(int i) {
        return unsafe.getBoolean(this.base, this.address + ((long) i));
    }

    public short getShort(int i) {
        return Short.reverseBytes(unsafe.getShort(this.base, this.address + ((long) i)));
    }

    public int getInt(int i) {
        return Integer.reverseBytes(unsafe.getInt(this.base, this.address + ((long) i)));
    }

    public float getFloat(int i) {
        return Float.intBitsToFloat(getInt(i));
    }

    public long getLong(int i) {
        return Long.reverseBytes(unsafe.getLong(this.base, this.address + ((long) i)));
    }

    public double getDouble(int i) {
        return Double.longBitsToDouble(getLong(i));
    }

    public void getBytes(int i, byte[] bArr, int i2, int i3) {
        unsafe.copyMemory(this.base, this.address + ((long) i), bArr, (long) (ARRAY_BYTE_BASE_OFFSET + i2), (long) i3);
    }

    public void getBytes(int i, int i2, ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= i2) {
            byteBuffer.put(sliceAsByteBuffer(i, i2));
            return;
        }
        throw new BufferOverflowException();
    }

    public void putByte(int i, byte b) {
        unsafe.putByte(this.base, this.address + ((long) i), b);
    }

    public void putBoolean(int i, boolean z) {
        unsafe.putBoolean(this.base, this.address + ((long) i), z);
    }

    public void putShort(int i, short s) {
        unsafe.putShort(this.base, this.address + ((long) i), Short.reverseBytes(s));
    }

    public void putInt(int i, int i2) {
        unsafe.putInt(this.base, this.address + ((long) i), Integer.reverseBytes(i2));
    }

    public void putFloat(int i, float f) {
        putInt(i, Float.floatToRawIntBits(f));
    }

    public void putLong(int i, long j) {
        unsafe.putLong(this.base, ((long) i) + this.address, Long.reverseBytes(j));
    }

    public void putDouble(int i, double d) {
        putLong(i, Double.doubleToRawLongBits(d));
    }

    public void putBytes(int i, byte[] bArr, int i2, int i3) {
        unsafe.copyMemory(bArr, (long) (ARRAY_BYTE_BASE_OFFSET + i2), this.base, this.address + ((long) i), (long) i3);
    }

    public void putByteBuffer(int i, ByteBuffer byteBuffer, int i2) {
        if (byteBuffer.isDirect()) {
            unsafe.copyMemory(null, DirectBufferAccess.getAddress(byteBuffer) + ((long) byteBuffer.position()), this.base, this.address + ((long) i), (long) i2);
            byteBuffer.position(byteBuffer.position() + i2);
        } else if (byteBuffer.hasArray()) {
            unsafe.copyMemory(byteBuffer.array(), (long) (ARRAY_BYTE_BASE_OFFSET + byteBuffer.position()), this.base, this.address + ((long) i), (long) i2);
            byteBuffer.position(byteBuffer.position() + i2);
        } else if (hasArray()) {
            byteBuffer.get((byte[]) this.base, i, i2);
        } else {
            for (int i3 = 0; i3 < i2; i3++) {
                unsafe.putByte(this.base, this.address + ((long) i), byteBuffer.get());
            }
        }
    }

    public void putMessageBuffer(int i, MessageBuffer messageBuffer, int i2, int i3) {
        unsafe.copyMemory(messageBuffer.base, messageBuffer.address + ((long) i2), this.base, ((long) i) + this.address, (long) i3);
    }

    public ByteBuffer sliceAsByteBuffer(int i, int i2) {
        if (hasArray()) {
            return ByteBuffer.wrap((byte[]) this.base, (int) ((this.address - ((long) ARRAY_BYTE_BASE_OFFSET)) + ((long) i)), i2);
        }
        return DirectBufferAccess.newByteBuffer(this.address, i, i2, this.reference);
    }

    public ByteBuffer sliceAsByteBuffer() {
        return sliceAsByteBuffer(0, size());
    }

    public boolean hasArray() {
        return this.base != null;
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        unsafe.copyMemory(this.base, this.address, bArr, (long) ARRAY_BYTE_BASE_OFFSET, (long) size());
        return bArr;
    }

    public byte[] array() {
        return (byte[]) this.base;
    }

    public int arrayOffset() {
        return ((int) this.address) - ARRAY_BYTE_BASE_OFFSET;
    }

    public void copyTo(int i, MessageBuffer messageBuffer, int i2, int i3) {
        unsafe.copyMemory(this.base, this.address + ((long) i), messageBuffer.base, ((long) i2) + messageBuffer.address, (long) i3);
    }

    public String toHexString(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = i; i3 < i2; i3++) {
            if (i3 != i) {
                sb.append(" ");
            }
            sb.append(String.format("%02x", new Object[]{Byte.valueOf(getByte(i3))}));
        }
        return sb.toString();
    }
}
