package com.avos.avoscloud.ops;

import com.alibaba.fastjson.annotation.JSONType;
import com.avos.avoscloud.ops.AVOp.OpType;
import java.util.HashMap;
import java.util.Map;

@JSONType(ignores = {"amount"})
public class IncrementOp extends BaseOp implements SingleValueOp {
    protected Number amount;

    public IncrementOp() {
    }

    public void setValues(Object obj) {
        this.amount = (Number) obj;
    }

    public Number getAmount() {
        return this.amount;
    }

    public void setAmount(Number number) {
        this.amount = number;
    }

    public IncrementOp(String str, Number number) {
        super(str, OpType.Increment);
        this.amount = number;
    }

    public Map<String, Object> encodeOp() {
        HashMap hashMap = new HashMap();
        hashMap.put("__op", "Increment");
        hashMap.put("amount", Long.valueOf(this.amount.longValue()));
        HashMap hashMap2 = new HashMap();
        hashMap2.put(this.key, hashMap);
        return hashMap2;
    }

    public AVOp merge(AVOp aVOp) {
        assertKeyEquals(aVOp);
        switch (aVOp.type()) {
            case Set:
            case Delete:
                return aVOp;
            case Increment:
                this.amount = Integer.valueOf(this.amount.intValue() + ((IncrementOp) aVOp.cast(IncrementOp.class)).amount.intValue());
                return this;
            case Compound:
                ((CompoundOp) aVOp.cast(CompoundOp.class)).addFirst(this);
                return aVOp;
            case Add:
            case AddUnique:
            case Remove:
                return new CompoundOp(this.key, this, aVOp);
            case AddRelation:
            case RemoveRelation:
                throw new UnsupportedOperationException("Could not add or remove relation on an numberic value.");
            case Null:
                return this;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("Unknow op type ");
                sb.append(aVOp.type());
                throw new IllegalStateException(sb.toString());
        }
    }

    public Number getValues() {
        return this.amount;
    }

    public Number apply(Object obj) {
        Long.valueOf(0);
        if (obj == null) {
            return this.amount;
        }
        if (!(obj instanceof Double) && !(obj instanceof Float)) {
            Number number = this.amount;
            if (!(number instanceof Double) && !(number instanceof Float)) {
                return Long.valueOf(((Number) obj).longValue() + this.amount.longValue());
            }
        }
        return Double.valueOf(((Number) obj).doubleValue() + this.amount.doubleValue());
    }
}
