package com.koushikdutta.async;

import android.util.Log;
import com.koushikdutta.async.callback.DataCallback;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;

public class PushParser implements DataCallback {
    static Hashtable<Class, Method> mTable = new Hashtable<>();
    /* access modifiers changed from: private */
    public ArrayList<Object> args = new ArrayList<>();
    private Waiter byteArgWaiter = new Waiter(1) {
        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.args.add(Byte.valueOf(byteBufferList.get()));
            return null;
        }
    };
    private ParseCallback<byte[]> byteArrayArgCallback = new ParseCallback<byte[]>() {
        public void parsed(byte[] bArr) {
            PushParser.this.args.add(bArr);
        }
    };
    private ParseCallback<ByteBufferList> byteBufferListArgCallback = new ParseCallback<ByteBufferList>() {
        public void parsed(ByteBufferList byteBufferList) {
            PushParser.this.args.add(byteBufferList);
        }
    };
    private Waiter intArgWaiter = new Waiter(4) {
        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.args.add(Integer.valueOf(byteBufferList.getInt()));
            return null;
        }
    };
    private Waiter longArgWaiter = new Waiter(8) {
        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.args.add(Long.valueOf(byteBufferList.getLong()));
            return null;
        }
    };
    DataEmitter mEmitter;
    private LinkedList<Waiter> mWaiting = new LinkedList<>();
    private Waiter noopArgWaiter = new Waiter(0) {
        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.args.add(null);
            return null;
        }
    };
    ByteOrder order = ByteOrder.BIG_ENDIAN;
    ByteBufferList pending = new ByteBufferList();
    private Waiter shortArgWaiter = new Waiter(2) {
        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            PushParser.this.args.add(Short.valueOf(byteBufferList.getShort()));
            return null;
        }
    };
    private ParseCallback<byte[]> stringArgCallback = new ParseCallback<byte[]>() {
        public void parsed(byte[] bArr) {
            PushParser.this.args.add(new String(bArr));
        }
    };

    static class ByteArrayWaiter extends Waiter {
        ParseCallback<byte[]> callback;

        public ByteArrayWaiter(int i, ParseCallback<byte[]> parseCallback) {
            super(i);
            if (i > 0) {
                this.callback = parseCallback;
                return;
            }
            throw new IllegalArgumentException("length should be > 0");
        }

        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            byte[] bArr = new byte[this.length];
            byteBufferList.get(bArr);
            this.callback.parsed(bArr);
            return null;
        }
    }

    static class ByteBufferListWaiter extends Waiter {
        ParseCallback<ByteBufferList> callback;

        public ByteBufferListWaiter(int i, ParseCallback<ByteBufferList> parseCallback) {
            super(i);
            if (i > 0) {
                this.callback = parseCallback;
                return;
            }
            throw new IllegalArgumentException("length should be > 0");
        }

        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            this.callback.parsed(byteBufferList.get(this.length));
            return null;
        }
    }

    static class IntWaiter extends Waiter {
        ParseCallback<Integer> callback;

        public IntWaiter(ParseCallback<Integer> parseCallback) {
            super(4);
            this.callback = parseCallback;
        }

        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            this.callback.parsed(Integer.valueOf(byteBufferList.getInt()));
            return null;
        }
    }

    static class LenByteArrayWaiter extends Waiter {
        private final ParseCallback<byte[]> callback;

        public LenByteArrayWaiter(ParseCallback<byte[]> parseCallback) {
            super(4);
            this.callback = parseCallback;
        }

        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            int i = byteBufferList.getInt();
            if (i != 0) {
                return new ByteArrayWaiter(i, this.callback);
            }
            this.callback.parsed(new byte[0]);
            return null;
        }
    }

    static class LenByteBufferListWaiter extends Waiter {
        private final ParseCallback<ByteBufferList> callback;

        public LenByteBufferListWaiter(ParseCallback<ByteBufferList> parseCallback) {
            super(4);
            this.callback = parseCallback;
        }

        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            return new ByteBufferListWaiter(byteBufferList.getInt(), this.callback);
        }
    }

    public interface ParseCallback<T> {
        void parsed(T t);
    }

    private class TapWaiter extends Waiter {
        private final TapCallback callback;

        public TapWaiter(TapCallback tapCallback) {
            super(0);
            this.callback = tapCallback;
        }

        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            Method tap = PushParser.getTap(this.callback);
            tap.setAccessible(true);
            try {
                tap.invoke(this.callback, PushParser.this.args.toArray());
            } catch (Exception e) {
                Log.e("PushParser", "Error while invoking tap callback", e);
            }
            PushParser.this.args.clear();
            return null;
        }
    }

    static class UntilWaiter extends Waiter {
        DataCallback callback;
        byte value;

        public UntilWaiter(byte b, DataCallback dataCallback) {
            super(1);
            this.value = b;
            this.callback = dataCallback;
        }

        public Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            ByteBufferList byteBufferList2 = new ByteBufferList();
            boolean z = true;
            while (true) {
                if (byteBufferList.size() <= 0) {
                    break;
                }
                ByteBuffer remove = byteBufferList.remove();
                remove.mark();
                int i = 0;
                while (remove.remaining() > 0) {
                    z = remove.get() == this.value;
                    if (z) {
                        break;
                    }
                    i++;
                }
                remove.reset();
                if (z) {
                    byteBufferList.addFirst(remove);
                    byteBufferList.get(byteBufferList2, i);
                    byteBufferList.get();
                    break;
                }
                byteBufferList2.add(remove);
            }
            this.callback.onDataAvailable(dataEmitter, byteBufferList2);
            if (z) {
                return null;
            }
            return this;
        }
    }

    static abstract class Waiter {
        int length;

        public abstract Waiter onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList);

        public Waiter(int i) {
            this.length = i;
        }
    }

    public PushParser setOrder(ByteOrder byteOrder) {
        this.order = byteOrder;
        return this;
    }

    public PushParser(DataEmitter dataEmitter) {
        this.mEmitter = dataEmitter;
        this.mEmitter.setDataCallback(this);
    }

    public PushParser readInt(ParseCallback<Integer> parseCallback) {
        this.mWaiting.add(new IntWaiter(parseCallback));
        return this;
    }

    public PushParser readByteArray(int i, ParseCallback<byte[]> parseCallback) {
        this.mWaiting.add(new ByteArrayWaiter(i, parseCallback));
        return this;
    }

    public PushParser readByteBufferList(int i, ParseCallback<ByteBufferList> parseCallback) {
        this.mWaiting.add(new ByteBufferListWaiter(i, parseCallback));
        return this;
    }

    public PushParser until(byte b, DataCallback dataCallback) {
        this.mWaiting.add(new UntilWaiter(b, dataCallback));
        return this;
    }

    public PushParser readByte() {
        this.mWaiting.add(this.byteArgWaiter);
        return this;
    }

    public PushParser readShort() {
        this.mWaiting.add(this.shortArgWaiter);
        return this;
    }

    public PushParser readInt() {
        this.mWaiting.add(this.intArgWaiter);
        return this;
    }

    public PushParser readLong() {
        this.mWaiting.add(this.longArgWaiter);
        return this;
    }

    public PushParser readByteArray(int i) {
        return i == -1 ? readLenByteArray() : readByteArray(i, this.byteArrayArgCallback);
    }

    public PushParser readLenByteArray() {
        this.mWaiting.add(new LenByteArrayWaiter(this.byteArrayArgCallback));
        return this;
    }

    public PushParser readByteBufferList(int i) {
        return i == -1 ? readLenByteBufferList() : readByteBufferList(i, this.byteBufferListArgCallback);
    }

    public PushParser readLenByteBufferList() {
        return readLenByteBufferList(this.byteBufferListArgCallback);
    }

    public PushParser readLenByteBufferList(ParseCallback<ByteBufferList> parseCallback) {
        this.mWaiting.add(new LenByteBufferListWaiter(parseCallback));
        return this;
    }

    public PushParser readString() {
        this.mWaiting.add(new LenByteArrayWaiter(this.stringArgCallback));
        return this;
    }

    public PushParser noop() {
        this.mWaiting.add(this.noopArgWaiter);
        return this;
    }

    public void onDataAvailable(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        byteBufferList.get(this.pending);
        while (this.mWaiting.size() > 0 && this.pending.remaining() >= ((Waiter) this.mWaiting.peek()).length) {
            this.pending.order(this.order);
            Waiter onDataAvailable = ((Waiter) this.mWaiting.poll()).onDataAvailable(dataEmitter, this.pending);
            if (onDataAvailable != null) {
                this.mWaiting.addFirst(onDataAvailable);
            }
        }
        if (this.mWaiting.size() == 0) {
            this.pending.get(byteBufferList);
        }
    }

    public void tap(TapCallback tapCallback) {
        this.mWaiting.add(new TapWaiter(tapCallback));
    }

    static Method getTap(TapCallback tapCallback) {
        Method[] methods;
        Method method = (Method) mTable.get(tapCallback.getClass());
        if (method != null) {
            return method;
        }
        for (Method method2 : tapCallback.getClass().getMethods()) {
            if ("tap".equals(method2.getName())) {
                mTable.put(tapCallback.getClass(), method2);
                return method2;
            }
        }
        Method[] declaredMethods = tapCallback.getClass().getDeclaredMethods();
        if (declaredMethods.length == 1) {
            return declaredMethods[0];
        }
        throw new AssertionError("-keep class * extends com.koushikdutta.async.TapCallback {\n    *;\n}\n");
    }
}
