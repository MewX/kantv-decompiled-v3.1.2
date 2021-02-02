package com.avos.avoscloud.ops;

import com.avos.avoscloud.ops.AVOp.OpType;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

public class NullOP implements AVOp {
    public static NullOP INSTANCE = new NullOP();

    public Object apply(Object obj) {
        return obj;
    }

    public AVOp get(int i) {
        return null;
    }

    public Object getValues() {
        return null;
    }

    public String key() {
        return "__ALL_POSSIABLE_KEYS";
    }

    public AVOp merge(AVOp aVOp) {
        return aVOp;
    }

    public AVOp remove(int i) {
        return null;
    }

    public int size() {
        return 0;
    }

    public <T extends AVOp> T cast(Class<T> cls) {
        throw new UnsupportedOperationException();
    }

    public Iterator<AVOp> iterator() {
        throw new UnsupportedOperationException();
    }

    public OpType type() {
        return OpType.Null;
    }

    public Map<String, Object> encodeOp() {
        return Collections.emptyMap();
    }
}
