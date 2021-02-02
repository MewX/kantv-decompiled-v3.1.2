package com.avos.avoscloud.ops;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.ops.AVOp.OpType;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

public class AddUniqueOp extends CollectionAddOp {
    private Set<Object> values = new HashSet();

    public Set<Object> getValues() {
        return this.values;
    }

    public AddUniqueOp() {
    }

    public AddUniqueOp(String str, Object... objArr) {
        super(str, OpType.AddUnique);
        if (objArr != null) {
            for (Object add : objArr) {
                this.values.add(add);
            }
        }
    }

    public Map<String, Object> encodeOp() {
        return AVUtils.createArrayOpMap(this.key, this.type.name(), getParsedValues());
    }

    public Object apply(Object obj) {
        HashSet hashSet = new HashSet();
        if (obj != null) {
            hashSet.addAll((Collection) obj);
        }
        if (getValues() != null) {
            hashSet.addAll(getValues());
        }
        return new LinkedList(hashSet);
    }

    public AVOp merge(AVOp aVOp) {
        assertKeyEquals(aVOp);
        switch (aVOp.type()) {
            case Null:
                return this;
            case Set:
                return aVOp;
            case AddUnique:
                this.values.addAll(((AddUniqueOp) aVOp.cast(AddUniqueOp.class)).values);
                return this;
            case AddRelation:
            case Remove:
            case Add:
            case RemoveRelation:
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
