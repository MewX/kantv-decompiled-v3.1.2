package com.avos.avoscloud;

import android.text.TextUtils;
import java.util.HashMap;

public class QueryOperation {
    public static final String AND_OP = "$and";
    public static final String EQUAL_OP = "__eq";
    public static final String OR_OP = "$or";
    String key;
    String op;
    Object value;

    public QueryOperation(String str, String str2, Object obj) {
        this.key = str;
        this.op = str2;
        this.value = obj;
    }

    public String getKey() {
        return this.key;
    }

    public Object getValue() {
        return this.value;
    }

    public String getOp() {
        return this.op;
    }

    public Object toResult() {
        String str = this.op;
        if (str == null || str.equals(EQUAL_OP) || this.op.equals(OR_OP)) {
            return this.value;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(this.op, this.value);
        return hashMap;
    }

    public Object toResult(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(str, toResult());
        return hashMap;
    }

    public boolean sameOp(QueryOperation queryOperation) {
        return TextUtils.equals(this.key, queryOperation.key) && TextUtils.equals(this.op, queryOperation.op);
    }

    public int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.op;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Object obj = this.value;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode2 + i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        QueryOperation queryOperation = (QueryOperation) obj;
        String str = this.key;
        if (str == null) {
            if (queryOperation.key != null) {
                return false;
            }
        } else if (!str.equals(queryOperation.key)) {
            return false;
        }
        String str2 = this.op;
        if (str2 == null) {
            if (queryOperation.op != null) {
                return false;
            }
        } else if (!str2.equals(queryOperation.op)) {
            return false;
        }
        Object obj2 = this.value;
        if (obj2 == null) {
            if (queryOperation.value != null) {
                return false;
            }
        } else if (!obj2.equals(queryOperation.value)) {
            return false;
        }
        return true;
    }
}
