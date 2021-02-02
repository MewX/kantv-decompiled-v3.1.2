package com.avos.avoscloud.ops;

import com.avos.avoscloud.ops.AVOp.OpType;
import java.util.Collection;
import java.util.LinkedList;

public abstract class CollectionAddOp extends CollectionOp {
    public CollectionAddOp() {
    }

    public CollectionAddOp(String str, OpType opType) {
        super(str, opType);
    }

    public Object apply(Object obj) {
        LinkedList linkedList = new LinkedList();
        if (obj != null) {
            linkedList.addAll((Collection) obj);
        }
        if (getValues() != null) {
            linkedList.addAll(getValues());
        }
        return linkedList;
    }
}
