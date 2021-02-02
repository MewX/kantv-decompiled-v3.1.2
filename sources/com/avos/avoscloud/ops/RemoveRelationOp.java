package com.avos.avoscloud.ops;

import com.avos.avoscloud.AVObject;
import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.ops.AVOp.OpType;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class RemoveRelationOp extends CollectionOp {
    private Set<AVObject> values = new HashSet();

    public Object apply(Object obj) {
        return obj;
    }

    public RemoveRelationOp(String str, AVObject... aVObjectArr) {
        super(str, OpType.RemoveRelation);
        if (aVObjectArr != null) {
            for (AVObject add : aVObjectArr) {
                this.values.add(add);
            }
        }
    }

    public Set<AVObject> getValues() {
        return this.values;
    }

    public RemoveRelationOp() {
    }

    public Map<String, Object> encodeOp() {
        return AVUtils.createPointerArrayOpMap(this.key, "RemoveRelation", getValues());
    }

    public AVOp merge(AVOp aVOp) {
        assertKeyEquals(aVOp);
        switch (aVOp.type()) {
            case Null:
                return this;
            case Set:
                return aVOp;
            case RemoveRelation:
                this.values.addAll(((RemoveRelationOp) aVOp.cast(RemoveRelationOp.class)).values);
                return this;
            case AddUnique:
            case Remove:
            case Add:
            case AddRelation:
                return new CompoundOp(this.key, this, aVOp);
            case Increment:
                throw new UnsupportedOperationException("Could not increment an non-numberic value.");
            case Delete:
                break;
            case Compound:
                ((CompoundOp) aVOp.cast(CompoundOp.class)).addFirst(this);
                break;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("Unknow op type ");
                sb.append(aVOp.type());
                throw new IllegalStateException(sb.toString());
        }
        return aVOp;
    }
}
