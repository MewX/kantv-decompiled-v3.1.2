package com.avos.avoscloud.ops;

import com.avos.avoscloud.ops.AVOp.OpType;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class BaseOp implements AVOp {
    protected String key;
    protected LinkedList<AVOp> ops = null;
    protected OpType type;

    public OpType getType() {
        return this.type;
    }

    public void setType(OpType opType) {
        this.type = opType;
    }

    public List<AVOp> getOps() {
        return this.ops;
    }

    public void setOps(LinkedList<AVOp> linkedList) {
        this.ops = linkedList;
    }

    public String getKey() {
        return this.key;
    }

    public BaseOp() {
    }

    public BaseOp(String str, OpType opType) {
        this.key = str;
        this.type = opType;
    }

    public String key() {
        return this.key;
    }

    public OpType type() {
        return this.type;
    }

    public <T extends AVOp> T cast(Class<T> cls) {
        return (AVOp) cls.cast(this);
    }

    public void setKey(String str) {
        this.key = str;
    }

    public AVOp merge(AVOp aVOp) {
        assertKeyEquals(aVOp);
        if (this.ops == null) {
            this.ops = new LinkedList<>();
        }
        if (aVOp.type() == OpType.Compound) {
            this.ops.addAll(((CompoundOp) aVOp.cast(CompoundOp.class)).ops);
        } else {
            this.ops.add(aVOp);
        }
        return this;
    }

    public int size() {
        LinkedList<AVOp> linkedList = this.ops;
        if (linkedList == null) {
            return 0;
        }
        return linkedList.size();
    }

    public AVOp remove(int i) {
        LinkedList<AVOp> linkedList = this.ops;
        if (linkedList == null || linkedList.size() <= i) {
            return NullOP.INSTANCE;
        }
        return (AVOp) this.ops.remove(i);
    }

    public Object apply(Object obj) {
        LinkedList<AVOp> linkedList = this.ops;
        if (linkedList != null) {
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                obj = ((AVOp) it.next()).apply(obj);
            }
        }
        return obj;
    }

    public void assertKeyEquals(AVOp aVOp) {
        if (aVOp != NullOP.INSTANCE && !aVOp.key().equals(this.key)) {
            throw new IllegalArgumentException("invalid key");
        }
    }

    public Iterator<AVOp> iterator() {
        LinkedList<AVOp> linkedList = this.ops;
        if (linkedList != null) {
            return linkedList.iterator();
        }
        throw new UnsupportedOperationException();
    }

    public AVOp get(int i) {
        LinkedList<AVOp> linkedList = this.ops;
        if (linkedList != null) {
            if (linkedList.size() > i) {
                return (AVOp) this.ops.get(i);
            }
            return NullOP.INSTANCE;
        } else if (i == 0) {
            return this;
        } else {
            return NullOP.INSTANCE;
        }
    }
}
