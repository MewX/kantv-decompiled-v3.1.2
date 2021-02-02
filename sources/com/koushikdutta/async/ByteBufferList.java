package com.koushikdutta.async;

import android.annotation.TargetApi;
import android.os.Looper;
import com.koushikdutta.async.util.Charsets;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

@TargetApi(9)
public class ByteBufferList {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final ByteBuffer EMPTY_BYTEBUFFER = ByteBuffer.allocate(0);
    private static final Object LOCK = new Object();
    public static int MAX_ITEM_SIZE = 262144;
    private static int MAX_SIZE = 1048576;
    static int currentSize = 0;
    static int maxItem = 0;
    static PriorityQueue<ByteBuffer> reclaimed = new PriorityQueue<>(8, new Reclaimer());
    ArrayDeque<ByteBuffer> mBuffers = new ArrayDeque<>();
    ByteOrder order = ByteOrder.BIG_ENDIAN;
    private int remaining = 0;

    static class Reclaimer implements Comparator<ByteBuffer> {
        Reclaimer() {
        }

        public int compare(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
            if (byteBuffer.capacity() == byteBuffer2.capacity()) {
                return 0;
            }
            return byteBuffer.capacity() > byteBuffer2.capacity() ? 1 : -1;
        }
    }

    public ByteOrder order() {
        return this.order;
    }

    public ByteBufferList order(ByteOrder byteOrder) {
        this.order = byteOrder;
        return this;
    }

    public ByteBufferList() {
    }

    public ByteBufferList(ByteBuffer... byteBufferArr) {
        addAll(byteBufferArr);
    }

    public ByteBufferList(byte[] bArr) {
        add(ByteBuffer.wrap(bArr));
    }

    public ByteBufferList addAll(ByteBuffer... byteBufferArr) {
        for (ByteBuffer add : byteBufferArr) {
            add(add);
        }
        return this;
    }

    public ByteBufferList addAll(ByteBufferList... byteBufferListArr) {
        for (ByteBufferList byteBufferList : byteBufferListArr) {
            byteBufferList.get(this);
        }
        return this;
    }

    public byte[] getBytes(int i) {
        byte[] bArr = new byte[i];
        get(bArr);
        return bArr;
    }

    public byte[] getAllByteArray() {
        if (this.mBuffers.size() == 1) {
            ByteBuffer byteBuffer = (ByteBuffer) this.mBuffers.peek();
            if (byteBuffer.capacity() == remaining() && byteBuffer.isDirect()) {
                this.remaining = 0;
                return ((ByteBuffer) this.mBuffers.remove()).array();
            }
        }
        byte[] bArr = new byte[remaining()];
        get(bArr);
        return bArr;
    }

    public ByteBuffer[] getAllArray() {
        ByteBuffer[] byteBufferArr = (ByteBuffer[]) this.mBuffers.toArray(new ByteBuffer[this.mBuffers.size()]);
        this.mBuffers.clear();
        this.remaining = 0;
        return byteBufferArr;
    }

    public boolean isEmpty() {
        return this.remaining == 0;
    }

    public int remaining() {
        return this.remaining;
    }

    public boolean hasRemaining() {
        return remaining() > 0;
    }

    public short peekShort() {
        return read(2).duplicate().getShort();
    }

    public int peekInt() {
        return read(4).duplicate().getInt();
    }

    public long peekLong() {
        return read(8).duplicate().getLong();
    }

    public byte[] peekBytes(int i) {
        byte[] bArr = new byte[i];
        read(i).duplicate().get(bArr);
        return bArr;
    }

    public ByteBufferList skip(int i) {
        get(null, 0, i);
        return this;
    }

    public int getInt() {
        int i = read(4).getInt();
        this.remaining -= 4;
        return i;
    }

    public char getByteChar() {
        char c = (char) read(1).get();
        this.remaining--;
        return c;
    }

    public short getShort() {
        short s = read(2).getShort();
        this.remaining -= 2;
        return s;
    }

    public byte get() {
        byte b = read(1).get();
        this.remaining--;
        return b;
    }

    public long getLong() {
        long j = read(8).getLong();
        this.remaining -= 8;
        return j;
    }

    public void get(byte[] bArr) {
        get(bArr, 0, bArr.length);
    }

    public void get(byte[] bArr, int i, int i2) {
        if (remaining() >= i2) {
            int i3 = i;
            int i4 = i2;
            while (i4 > 0) {
                ByteBuffer byteBuffer = (ByteBuffer) this.mBuffers.peek();
                int min = Math.min(byteBuffer.remaining(), i4);
                if (bArr != null) {
                    byteBuffer.get(bArr, i3, min);
                } else {
                    byteBuffer.position(byteBuffer.position() + min);
                }
                i4 -= min;
                i3 += min;
                if (byteBuffer.remaining() == 0) {
                    ByteBuffer byteBuffer2 = (ByteBuffer) this.mBuffers.remove();
                    reclaim(byteBuffer);
                }
            }
            this.remaining -= i2;
            return;
        }
        throw new IllegalArgumentException("length");
    }

    public void get(ByteBufferList byteBufferList, int i) {
        if (remaining() >= i) {
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                ByteBuffer byteBuffer = (ByteBuffer) this.mBuffers.remove();
                int remaining2 = byteBuffer.remaining();
                if (remaining2 == 0) {
                    reclaim(byteBuffer);
                } else {
                    int i3 = remaining2 + i2;
                    if (i3 > i) {
                        int i4 = i - i2;
                        ByteBuffer obtain = obtain(i4);
                        obtain.limit(i4);
                        byteBuffer.get(obtain.array(), 0, i4);
                        byteBufferList.add(obtain);
                        this.mBuffers.addFirst(byteBuffer);
                        break;
                    }
                    byteBufferList.add(byteBuffer);
                    i2 = i3;
                }
            }
            this.remaining -= i;
            return;
        }
        throw new IllegalArgumentException("length");
    }

    public void get(ByteBufferList byteBufferList) {
        get(byteBufferList, remaining());
    }

    public ByteBufferList get(int i) {
        ByteBufferList byteBufferList = new ByteBufferList();
        get(byteBufferList, i);
        return byteBufferList.order(this.order);
    }

    public ByteBuffer getAll() {
        if (remaining() == 0) {
            return EMPTY_BYTEBUFFER;
        }
        read(remaining());
        return remove();
    }

    private ByteBuffer read(int i) {
        ByteBuffer byteBuffer;
        if (remaining() >= i) {
            ByteBuffer byteBuffer2 = (ByteBuffer) this.mBuffers.peek();
            while (byteBuffer2 != null && !byteBuffer2.hasRemaining()) {
                reclaim((ByteBuffer) this.mBuffers.remove());
                byteBuffer2 = (ByteBuffer) this.mBuffers.peek();
            }
            if (byteBuffer2 == null) {
                return EMPTY_BYTEBUFFER;
            }
            if (byteBuffer2.remaining() >= i) {
                return byteBuffer2.order(this.order);
            }
            ByteBuffer obtain = obtain(i);
            obtain.limit(i);
            byte[] array = obtain.array();
            int i2 = 0;
            loop1:
            while (true) {
                byteBuffer = null;
                while (i2 < i) {
                    byteBuffer = (ByteBuffer) this.mBuffers.remove();
                    int min = Math.min(i - i2, byteBuffer.remaining());
                    byteBuffer.get(array, i2, min);
                    i2 += min;
                    if (byteBuffer.remaining() == 0) {
                        reclaim(byteBuffer);
                    }
                }
                break loop1;
            }
            if (byteBuffer != null && byteBuffer.remaining() > 0) {
                this.mBuffers.addFirst(byteBuffer);
            }
            this.mBuffers.addFirst(obtain);
            return obtain.order(this.order);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("count : ");
        sb.append(remaining());
        sb.append("/");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    public void trim() {
        read(0);
    }

    public ByteBufferList add(ByteBufferList byteBufferList) {
        byteBufferList.get(this);
        return this;
    }

    public ByteBufferList add(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            reclaim(byteBuffer);
            return this;
        }
        addRemaining(byteBuffer.remaining());
        if (this.mBuffers.size() > 0) {
            ByteBuffer byteBuffer2 = (ByteBuffer) this.mBuffers.getLast();
            if (byteBuffer2.capacity() - byteBuffer2.limit() >= byteBuffer.remaining()) {
                byteBuffer2.mark();
                byteBuffer2.position(byteBuffer2.limit());
                byteBuffer2.limit(byteBuffer2.capacity());
                byteBuffer2.put(byteBuffer);
                byteBuffer2.limit(byteBuffer2.position());
                byteBuffer2.reset();
                reclaim(byteBuffer);
                trim();
                return this;
            }
        }
        this.mBuffers.add(byteBuffer);
        trim();
        return this;
    }

    public void addFirst(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            reclaim(byteBuffer);
            return;
        }
        addRemaining(byteBuffer.remaining());
        if (this.mBuffers.size() > 0) {
            ByteBuffer byteBuffer2 = (ByteBuffer) this.mBuffers.getFirst();
            if (byteBuffer2.position() >= byteBuffer.remaining()) {
                byteBuffer2.position(byteBuffer2.position() - byteBuffer.remaining());
                byteBuffer2.mark();
                byteBuffer2.put(byteBuffer);
                byteBuffer2.reset();
                reclaim(byteBuffer);
                return;
            }
        }
        this.mBuffers.addFirst(byteBuffer);
    }

    private void addRemaining(int i) {
        if (remaining() >= 0) {
            this.remaining += i;
        }
    }

    public void recycle() {
        while (this.mBuffers.size() > 0) {
            reclaim((ByteBuffer) this.mBuffers.remove());
        }
        this.remaining = 0;
    }

    public ByteBuffer remove() {
        ByteBuffer byteBuffer = (ByteBuffer) this.mBuffers.remove();
        this.remaining -= byteBuffer.remaining();
        return byteBuffer;
    }

    public int size() {
        return this.mBuffers.size();
    }

    public void spewString() {
        System.out.println(peekString());
    }

    public String peekString() {
        return peekString(null);
    }

    public String peekString(Charset charset) {
        int i;
        int i2;
        byte[] bArr;
        if (charset == null) {
            charset = Charsets.US_ASCII;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = this.mBuffers.iterator();
        while (it.hasNext()) {
            ByteBuffer byteBuffer = (ByteBuffer) it.next();
            if (byteBuffer.isDirect()) {
                bArr = new byte[byteBuffer.remaining()];
                i2 = 0;
                i = byteBuffer.remaining();
                byteBuffer.get(bArr);
            } else {
                bArr = byteBuffer.array();
                i2 = byteBuffer.arrayOffset() + byteBuffer.position();
                i = byteBuffer.remaining();
            }
            sb.append(new String(bArr, i2, i, charset));
        }
        return sb.toString();
    }

    public String readString() {
        return readString(null);
    }

    public String readString(Charset charset) {
        String peekString = peekString(charset);
        recycle();
        return peekString;
    }

    private static PriorityQueue<ByteBuffer> getReclaimed() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null || Thread.currentThread() != mainLooper.getThread()) {
            return reclaimed;
        }
        return null;
    }

    public static void setMaxPoolSize(int i) {
        MAX_SIZE = i;
    }

    public static void setMaxItemSize(int i) {
        MAX_ITEM_SIZE = i;
    }

    private static boolean reclaimedContains(ByteBuffer byteBuffer) {
        Iterator it = reclaimed.iterator();
        while (it.hasNext()) {
            if (((ByteBuffer) it.next()) == byteBuffer) {
                return true;
            }
        }
        return false;
    }

    public static void reclaim(ByteBuffer byteBuffer) {
        if (byteBuffer != null && !byteBuffer.isDirect() && byteBuffer.arrayOffset() == 0 && byteBuffer.array().length == byteBuffer.capacity() && byteBuffer.capacity() >= 8192 && byteBuffer.capacity() <= MAX_ITEM_SIZE) {
            PriorityQueue reclaimed2 = getReclaimed();
            if (reclaimed2 != null) {
                synchronized (LOCK) {
                    while (currentSize > MAX_SIZE && reclaimed2.size() > 0 && ((ByteBuffer) reclaimed2.peek()).capacity() < byteBuffer.capacity()) {
                        currentSize -= ((ByteBuffer) reclaimed2.remove()).capacity();
                    }
                    if (currentSize <= MAX_SIZE) {
                        byteBuffer.position(0);
                        byteBuffer.limit(byteBuffer.capacity());
                        currentSize += byteBuffer.capacity();
                        reclaimed2.add(byteBuffer);
                        maxItem = Math.max(maxItem, byteBuffer.capacity());
                    }
                }
            }
        }
    }

    public static ByteBuffer obtain(int i) {
        ByteBuffer byteBuffer;
        if (i <= maxItem) {
            PriorityQueue reclaimed2 = getReclaimed();
            if (reclaimed2 != null) {
                synchronized (LOCK) {
                    do {
                        if (reclaimed2.size() > 0) {
                            byteBuffer = (ByteBuffer) reclaimed2.remove();
                            if (reclaimed2.size() == 0) {
                                maxItem = 0;
                            }
                            currentSize -= byteBuffer.capacity();
                        }
                    } while (byteBuffer.capacity() < i);
                    return byteBuffer;
                }
            }
        }
        return ByteBuffer.allocate(Math.max(8192, i));
    }

    public static void obtainArray(ByteBuffer[] byteBufferArr, int i) {
        int i2;
        int i3;
        PriorityQueue reclaimed2 = getReclaimed();
        int i4 = 0;
        if (reclaimed2 != null) {
            synchronized (LOCK) {
                i2 = 0;
                while (reclaimed2.size() > 0 && i4 < i && i2 < byteBufferArr.length - 1) {
                    ByteBuffer byteBuffer = (ByteBuffer) reclaimed2.remove();
                    currentSize -= byteBuffer.capacity();
                    i4 += Math.min(i - i4, byteBuffer.capacity());
                    int i5 = i2 + 1;
                    byteBufferArr[i2] = byteBuffer;
                    i2 = i5;
                }
            }
        } else {
            i2 = 0;
        }
        if (i4 < i) {
            i3 = i2 + 1;
            byteBufferArr[i2] = ByteBuffer.allocate(Math.max(8192, i - i4));
        } else {
            i3 = i2;
        }
        while (i3 < byteBufferArr.length) {
            byteBufferArr[i3] = EMPTY_BYTEBUFFER;
            i3++;
        }
    }

    public static void writeOutputStream(OutputStream outputStream, ByteBuffer byteBuffer) throws IOException {
        int i;
        int i2;
        byte[] bArr;
        if (byteBuffer.isDirect()) {
            bArr = new byte[byteBuffer.remaining()];
            i2 = 0;
            i = byteBuffer.remaining();
            byteBuffer.get(bArr);
        } else {
            bArr = byteBuffer.array();
            i2 = byteBuffer.arrayOffset() + byteBuffer.position();
            i = byteBuffer.remaining();
        }
        outputStream.write(bArr, i2, i);
    }
}
