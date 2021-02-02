package com.tencent.imsdk;

public class TIMElem {
    private static final String TAG;
    protected TIMElemType type = TIMElemType.Invalid;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("imsdk.");
        sb.append(TIMElem.class.getSimpleName());
        TAG = sb.toString();
    }

    public TIMElemType getType() {
        return this.type;
    }

    /* access modifiers changed from: 0000 */
    public int getTypeValue() {
        return this.type.value();
    }
}
