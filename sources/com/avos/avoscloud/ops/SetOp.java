package com.avos.avoscloud.ops;

import com.avos.avoscloud.AVUtils;
import com.avos.avoscloud.ops.AVOp.OpType;
import java.util.HashMap;
import java.util.Map;

public class SetOp extends BaseOp implements SingleValueOp {
    private Object value;

    public SetOp() {
    }

    public Object getValues() {
        return this.value;
    }

    /* access modifiers changed from: 0000 */
    public void setValue(Object obj) {
        this.value = obj;
    }

    public SetOp(String str, Object obj) {
        super(str, OpType.Set);
        this.value = obj;
    }

    public Object apply(Object obj) {
        return getValues();
    }

    public Map<String, Object> encodeOp() {
        HashMap hashMap = new HashMap();
        hashMap.put(this.key, AVUtils.getParsedObject(this.value));
        return hashMap;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0081, code lost:
        return r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0038, code lost:
        return r5;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.avos.avoscloud.ops.AVOp merge(com.avos.avoscloud.ops.AVOp r5) {
        /*
            r4 = this;
            r4.assertKeyEquals(r5)
            int[] r0 = com.avos.avoscloud.ops.SetOp.AnonymousClass1.$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType
            com.avos.avoscloud.ops.AVOp$OpType r1 = r5.type()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x0081;
                case 2: goto L_0x0075;
                case 3: goto L_0x0064;
                case 4: goto L_0x0064;
                case 5: goto L_0x0064;
                case 6: goto L_0x0064;
                case 7: goto L_0x0064;
                case 8: goto L_0x0039;
                case 9: goto L_0x0038;
                case 10: goto L_0x002d;
                default: goto L_0x0012;
            }
        L_0x0012:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unknow op type "
            r1.append(r2)
            com.avos.avoscloud.ops.AVOp$OpType r5 = r5.type()
            r1.append(r5)
            java.lang.String r5 = r1.toString()
            r0.<init>(r5)
            throw r0
        L_0x002d:
            java.lang.Class<com.avos.avoscloud.ops.CompoundOp> r0 = com.avos.avoscloud.ops.CompoundOp.class
            com.avos.avoscloud.ops.AVOp r0 = r5.cast(r0)
            com.avos.avoscloud.ops.CompoundOp r0 = (com.avos.avoscloud.ops.CompoundOp) r0
            r0.addFirst(r4)
        L_0x0038:
            return r5
        L_0x0039:
            java.lang.Object r0 = r4.value
            boolean r1 = r0 instanceof java.lang.Number
            if (r1 == 0) goto L_0x005c
            java.lang.Number r0 = (java.lang.Number) r0
            long r0 = r0.longValue()
            java.lang.Class<com.avos.avoscloud.ops.IncrementOp> r2 = com.avos.avoscloud.ops.IncrementOp.class
            com.avos.avoscloud.ops.AVOp r5 = r5.cast(r2)
            com.avos.avoscloud.ops.IncrementOp r5 = (com.avos.avoscloud.ops.IncrementOp) r5
            java.lang.Number r5 = r5.amount
            int r5 = r5.intValue()
            long r2 = (long) r5
            long r0 = r0 + r2
            java.lang.Long r5 = java.lang.Long.valueOf(r0)
            r4.value = r5
            return r4
        L_0x005c:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Could not increment non-numberic value."
            r5.<init>(r0)
            throw r5
        L_0x0064:
            com.avos.avoscloud.ops.CompoundOp r0 = new com.avos.avoscloud.ops.CompoundOp
            java.lang.String r1 = r4.key
            r2 = 2
            com.avos.avoscloud.ops.AVOp[] r2 = new com.avos.avoscloud.ops.AVOp[r2]
            r3 = 0
            r2[r3] = r4
            r3 = 1
            r2[r3] = r5
            r0.<init>(r1, r2)
            return r0
        L_0x0075:
            java.lang.Class<com.avos.avoscloud.ops.SetOp> r0 = com.avos.avoscloud.ops.SetOp.class
            com.avos.avoscloud.ops.AVOp r5 = r5.cast(r0)
            com.avos.avoscloud.ops.SetOp r5 = (com.avos.avoscloud.ops.SetOp) r5
            java.lang.Object r5 = r5.value
            r4.value = r5
        L_0x0081:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avos.avoscloud.ops.SetOp.merge(com.avos.avoscloud.ops.AVOp):com.avos.avoscloud.ops.AVOp");
    }

    public void setValues(Object obj) {
        this.value = obj;
    }
}
