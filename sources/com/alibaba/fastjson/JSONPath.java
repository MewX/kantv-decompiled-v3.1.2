package com.alibaba.fastjson;

import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.FieldSerializer;
import com.alibaba.fastjson.serializer.JavaBeanSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;

public class JSONPath implements JSONAware {
    static final long SIZE = 5614464919154503228L;
    private static ConcurrentMap<String, JSONPath> pathCache = new ConcurrentHashMap(128, 0.75f, 1);
    private ParserConfig parserConfig;
    private final String path;
    private Segement[] segments;
    private SerializeConfig serializeConfig;

    static class ArrayAccessSegement implements Segement {
        private final int index;

        public ArrayAccessSegement(int i) {
            this.index = i;
        }

        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.getArrayItem(obj2, this.index);
        }

        public boolean setValue(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.setArrayItem(jSONPath, obj, this.index, obj2);
        }

        public boolean remove(JSONPath jSONPath, Object obj) {
            return jSONPath.removeArrayItem(jSONPath, obj, this.index);
        }
    }

    static class DoubleOpSegement implements Filter {
        private final Operator op;
        private final String propertyName;
        private final long propertyNameHash;
        private final double value;

        public DoubleOpSegement(String str, double d, Operator operator) {
            this.propertyName = str;
            this.value = d;
            this.op = operator;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            boolean z = false;
            if (propertyValue == null || !(propertyValue instanceof Number)) {
                return false;
            }
            double doubleValue = ((Number) propertyValue).doubleValue();
            if (this.op == Operator.EQ) {
                if (doubleValue == this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.NE) {
                if (doubleValue != this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.GE) {
                if (doubleValue >= this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.GT) {
                if (doubleValue > this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.LE) {
                if (doubleValue <= this.value) {
                    z = true;
                }
                return z;
            } else {
                if (this.op == Operator.LT && doubleValue < this.value) {
                    z = true;
                }
                return z;
            }
        }
    }

    interface Filter {
        boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3);
    }

    public static class FilterSegement implements Segement {
        private final Filter filter;

        public FilterSegement(Filter filter2) {
            this.filter = filter2;
        }

        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            if (obj2 == null) {
                return null;
            }
            JSONArray jSONArray = new JSONArray();
            if (obj2 instanceof Iterable) {
                for (Object next : (Iterable) obj2) {
                    if (this.filter.apply(jSONPath, obj, obj2, next)) {
                        jSONArray.add(next);
                    }
                }
                return jSONArray;
            } else if (this.filter.apply(jSONPath, obj, obj2, obj2)) {
                return obj2;
            } else {
                return null;
            }
        }
    }

    static class IntBetweenSegement implements Filter {
        private final long endValue;
        private final boolean not;
        private final String propertyName;
        private final long propertyNameHash;
        private final long startValue;

        public IntBetweenSegement(String str, long j, long j2, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.startValue = j;
            this.endValue = j2;
            this.not = z;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            if (propertyValue == null) {
                return false;
            }
            if (propertyValue instanceof Number) {
                long longValue = ((Number) propertyValue).longValue();
                if (longValue >= this.startValue && longValue <= this.endValue) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    static class IntInSegement implements Filter {
        private final boolean not;
        private final String propertyName;
        private final long propertyNameHash;
        private final long[] values;

        public IntInSegement(String str, long[] jArr, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.values = jArr;
            this.not = z;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            if (propertyValue == null) {
                return false;
            }
            if (propertyValue instanceof Number) {
                long longValue = ((Number) propertyValue).longValue();
                long[] jArr = this.values;
                int length = jArr.length;
                for (int i = 0; i < length; i++) {
                    if (jArr[i] == longValue) {
                        return !this.not;
                    }
                }
            }
            return this.not;
        }
    }

    static class IntObjInSegement implements Filter {
        private final boolean not;
        private final String propertyName;
        private final long propertyNameHash;
        private final Long[] values;

        public IntObjInSegement(String str, Long[] lArr, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.values = lArr;
            this.not = z;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            int i = 0;
            if (propertyValue == null) {
                Long[] lArr = this.values;
                int length = lArr.length;
                while (i < length) {
                    if (lArr[i] == null) {
                        return !this.not;
                    }
                    i++;
                }
                return this.not;
            }
            if (propertyValue instanceof Number) {
                long longValue = ((Number) propertyValue).longValue();
                Long[] lArr2 = this.values;
                int length2 = lArr2.length;
                while (i < length2) {
                    Long l = lArr2[i];
                    if (l != null && l.longValue() == longValue) {
                        return !this.not;
                    }
                    i++;
                }
            }
            return this.not;
        }
    }

    static class IntOpSegement implements Filter {
        private final Operator op;
        private final String propertyName;
        private final long propertyNameHash;
        private final long value;

        public IntOpSegement(String str, long j, Operator operator) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.value = j;
            this.op = operator;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            boolean z = false;
            if (propertyValue == null || !(propertyValue instanceof Number)) {
                return false;
            }
            long longValue = ((Number) propertyValue).longValue();
            if (this.op == Operator.EQ) {
                if (longValue == this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.NE) {
                if (longValue != this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.GE) {
                if (longValue >= this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.GT) {
                if (longValue > this.value) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.LE) {
                if (longValue <= this.value) {
                    z = true;
                }
                return z;
            } else {
                if (this.op == Operator.LT && longValue < this.value) {
                    z = true;
                }
                return z;
            }
        }
    }

    static class JSONPathParser {
        private char ch;
        private int level;
        private final String path;
        private int pos;

        static boolean isDigitFirst(char c) {
            return c == '-' || c == '+' || (c >= '0' && c <= '9');
        }

        public JSONPathParser(String str) {
            this.path = str;
            next();
        }

        /* access modifiers changed from: 0000 */
        public void next() {
            String str = this.path;
            int i = this.pos;
            this.pos = i + 1;
            this.ch = str.charAt(i);
        }

        /* access modifiers changed from: 0000 */
        public boolean isEOF() {
            return this.pos >= this.path.length();
        }

        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Code restructure failed: missing block: B:15:0x0032, code lost:
            if (r0 <= 'Z') goto L_0x0034;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.alibaba.fastjson.JSONPath.Segement readSegement() {
            /*
                r9 = this;
                int r0 = r9.level
                r1 = 0
                r2 = 1
                if (r0 != 0) goto L_0x0040
                java.lang.String r0 = r9.path
                int r0 = r0.length()
                if (r0 != r2) goto L_0x0040
                char r0 = r9.ch
                boolean r0 = isDigitFirst(r0)
                if (r0 == 0) goto L_0x0020
                char r0 = r9.ch
                int r0 = r0 + -48
                com.alibaba.fastjson.JSONPath$ArrayAccessSegement r1 = new com.alibaba.fastjson.JSONPath$ArrayAccessSegement
                r1.<init>(r0)
                return r1
            L_0x0020:
                char r0 = r9.ch
                r3 = 97
                if (r0 < r3) goto L_0x002a
                r3 = 122(0x7a, float:1.71E-43)
                if (r0 <= r3) goto L_0x0034
            L_0x002a:
                char r0 = r9.ch
                r3 = 65
                if (r0 < r3) goto L_0x0040
                r3 = 90
                if (r0 > r3) goto L_0x0040
            L_0x0034:
                com.alibaba.fastjson.JSONPath$PropertySegement r0 = new com.alibaba.fastjson.JSONPath$PropertySegement
                char r2 = r9.ch
                java.lang.String r2 = java.lang.Character.toString(r2)
                r0.<init>(r2, r1)
                return r0
            L_0x0040:
                boolean r0 = r9.isEOF()
                if (r0 != 0) goto L_0x0151
                r9.skipWhitespace()
                char r0 = r9.ch
                r3 = 36
                if (r0 != r3) goto L_0x0053
                r9.next()
                goto L_0x0040
            L_0x0053:
                r3 = 91
                java.lang.String r4 = "not support jsonpath : "
                r5 = 46
                if (r0 == r5) goto L_0x008c
                r6 = 47
                if (r0 != r6) goto L_0x0060
                goto L_0x008c
            L_0x0060:
                if (r0 != r3) goto L_0x0067
                com.alibaba.fastjson.JSONPath$Segement r0 = r9.parseArrayAccess(r2)
                return r0
            L_0x0067:
                int r0 = r9.level
                if (r0 != 0) goto L_0x0075
                java.lang.String r0 = r9.readName()
                com.alibaba.fastjson.JSONPath$PropertySegement r2 = new com.alibaba.fastjson.JSONPath$PropertySegement
                r2.<init>(r0, r1)
                return r2
            L_0x0075:
                com.alibaba.fastjson.JSONPathException r0 = new com.alibaba.fastjson.JSONPathException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                r1.append(r4)
                java.lang.String r2 = r9.path
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x008c:
                char r0 = r9.ch
                r9.next()
                r6 = 42
                if (r0 != r5) goto L_0x00da
                char r0 = r9.ch
                if (r0 != r5) goto L_0x00da
                r9.next()
                java.lang.String r0 = r9.path
                int r0 = r0.length()
                int r7 = r9.pos
                int r8 = r7 + 3
                if (r0 <= r8) goto L_0x00db
                char r0 = r9.ch
                if (r0 != r3) goto L_0x00db
                java.lang.String r0 = r9.path
                char r0 = r0.charAt(r7)
                if (r0 != r6) goto L_0x00db
                java.lang.String r0 = r9.path
                int r3 = r9.pos
                int r3 = r3 + r2
                char r0 = r0.charAt(r3)
                r3 = 93
                if (r0 != r3) goto L_0x00db
                java.lang.String r0 = r9.path
                int r3 = r9.pos
                int r3 = r3 + 2
                char r0 = r0.charAt(r3)
                if (r0 != r5) goto L_0x00db
                r9.next()
                r9.next()
                r9.next()
                r9.next()
                goto L_0x00db
            L_0x00da:
                r2 = 0
            L_0x00db:
                char r0 = r9.ch
                if (r0 != r6) goto L_0x00eb
                boolean r0 = r9.isEOF()
                if (r0 != 0) goto L_0x00e8
                r9.next()
            L_0x00e8:
                com.alibaba.fastjson.JSONPath$WildCardSegement r0 = com.alibaba.fastjson.JSONPath.WildCardSegement.instance
                return r0
            L_0x00eb:
                boolean r0 = isDigitFirst(r0)
                if (r0 == 0) goto L_0x00f6
                com.alibaba.fastjson.JSONPath$Segement r0 = r9.parseArrayAccess(r1)
                return r0
            L_0x00f6:
                java.lang.String r0 = r9.readName()
                char r1 = r9.ch
                r3 = 40
                if (r1 != r3) goto L_0x014b
                r9.next()
                char r1 = r9.ch
                r2 = 41
                if (r1 != r2) goto L_0x0134
                boolean r1 = r9.isEOF()
                if (r1 != 0) goto L_0x0112
                r9.next()
            L_0x0112:
                java.lang.String r1 = "size"
                boolean r0 = r1.equals(r0)
                if (r0 == 0) goto L_0x011d
                com.alibaba.fastjson.JSONPath$SizeSegement r0 = com.alibaba.fastjson.JSONPath.SizeSegement.instance
                return r0
            L_0x011d:
                com.alibaba.fastjson.JSONPathException r0 = new com.alibaba.fastjson.JSONPathException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                r1.append(r4)
                java.lang.String r2 = r9.path
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x0134:
                com.alibaba.fastjson.JSONPathException r0 = new com.alibaba.fastjson.JSONPathException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                r1.append(r4)
                java.lang.String r2 = r9.path
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                throw r0
            L_0x014b:
                com.alibaba.fastjson.JSONPath$PropertySegement r1 = new com.alibaba.fastjson.JSONPath$PropertySegement
                r1.<init>(r0, r2)
                return r1
            L_0x0151:
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.JSONPathParser.readSegement():com.alibaba.fastjson.JSONPath$Segement");
        }

        public final void skipWhitespace() {
            while (true) {
                char c = this.ch;
                if (c > ' ') {
                    return;
                }
                if (c == ' ' || c == 13 || c == 10 || c == 9 || c == 12 || c == 8) {
                    next();
                } else {
                    return;
                }
            }
        }

        /* access modifiers changed from: 0000 */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0060  */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x0064  */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x007f  */
        /* JADX WARNING: Removed duplicated region for block: B:39:0x008b  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public com.alibaba.fastjson.JSONPath.Segement parseArrayAccess(boolean r15) {
            /*
                r14 = this;
                if (r15 == 0) goto L_0x0007
                r0 = 91
                r14.accept(r0)
            L_0x0007:
                char r0 = r14.ch
                r1 = 63
                r2 = 40
                r3 = 46
                r4 = 0
                r5 = 1
                if (r0 != r1) goto L_0x0027
                r14.next()
                r14.accept(r2)
                char r0 = r14.ch
                r1 = 64
                if (r0 != r1) goto L_0x0025
                r14.next()
                r14.accept(r3)
            L_0x0025:
                r0 = 1
                goto L_0x0028
            L_0x0027:
                r0 = 0
            L_0x0028:
                r1 = -1
                r6 = 93
                if (r0 != 0) goto L_0x009b
                char r7 = r14.ch
                boolean r7 = com.alibaba.fastjson.util.IOUtils.firstIdentifier(r7)
                if (r7 == 0) goto L_0x0037
                goto L_0x009b
            L_0x0037:
                int r2 = r14.pos
                int r2 = r2 - r5
            L_0x003a:
                char r7 = r14.ch
                r8 = 47
                if (r7 == r6) goto L_0x005e
                if (r7 == r8) goto L_0x005e
                boolean r7 = r14.isEOF()
                if (r7 != 0) goto L_0x005e
                char r7 = r14.ch
                if (r7 != r3) goto L_0x0051
                if (r0 != 0) goto L_0x0051
                if (r0 != 0) goto L_0x0051
                goto L_0x005e
            L_0x0051:
                char r7 = r14.ch
                r8 = 92
                if (r7 != r8) goto L_0x005a
                r14.next()
            L_0x005a:
                r14.next()
                goto L_0x003a
            L_0x005e:
                if (r15 == 0) goto L_0x0064
                int r0 = r14.pos
            L_0x0062:
                int r0 = r0 - r5
                goto L_0x0071
            L_0x0064:
                char r0 = r14.ch
                if (r0 == r8) goto L_0x006e
                if (r0 != r3) goto L_0x006b
                goto L_0x006e
            L_0x006b:
                int r0 = r14.pos
                goto L_0x0071
            L_0x006e:
                int r0 = r14.pos
                goto L_0x0062
            L_0x0071:
                java.lang.String r3 = r14.path
                java.lang.String r0 = r3.substring(r2, r0)
                java.lang.String r2 = "\\."
                int r3 = r0.indexOf(r2)
                if (r3 == r1) goto L_0x008b
                java.lang.String r15 = "\\\\\\."
                java.lang.String r15 = r0.replaceAll(r15, r2)
                com.alibaba.fastjson.JSONPath$PropertySegement r0 = new com.alibaba.fastjson.JSONPath$PropertySegement
                r0.<init>(r15, r4)
                return r0
            L_0x008b:
                com.alibaba.fastjson.JSONPath$Segement r0 = r14.buildArraySegement(r0)
                if (r15 == 0) goto L_0x009a
                boolean r15 = r14.isEOF()
                if (r15 != 0) goto L_0x009a
                r14.accept(r6)
            L_0x009a:
                return r0
            L_0x009b:
                java.lang.String r8 = r14.readName()
                r14.skipWhitespace()
                r7 = 41
                if (r0 == 0) goto L_0x00bd
                char r9 = r14.ch
                if (r9 != r7) goto L_0x00bd
                r14.next()
                if (r15 == 0) goto L_0x00b2
                r14.accept(r6)
            L_0x00b2:
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$NotNullSegement r0 = new com.alibaba.fastjson.JSONPath$NotNullSegement
                r0.<init>(r8)
                r15.<init>(r0)
                return r15
            L_0x00bd:
                if (r15 == 0) goto L_0x00d1
                char r9 = r14.ch
                if (r9 != r6) goto L_0x00d1
                r14.next()
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$NotNullSegement r0 = new com.alibaba.fastjson.JSONPath$NotNullSegement
                r0.<init>(r8)
                r15.<init>(r0)
                return r15
            L_0x00d1:
                com.alibaba.fastjson.JSONPath$Operator r9 = r14.readOp()
                r14.skipWhitespace()
                com.alibaba.fastjson.JSONPath$Operator r10 = com.alibaba.fastjson.JSONPath.Operator.BETWEEN
                if (r9 == r10) goto L_0x040f
                com.alibaba.fastjson.JSONPath$Operator r10 = com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN
                if (r9 != r10) goto L_0x00e2
                goto L_0x040f
            L_0x00e2:
                com.alibaba.fastjson.JSONPath$Operator r10 = com.alibaba.fastjson.JSONPath.Operator.IN
                if (r9 == r10) goto L_0x02d0
                com.alibaba.fastjson.JSONPath$Operator r10 = com.alibaba.fastjson.JSONPath.Operator.NOT_IN
                if (r9 != r10) goto L_0x00ec
                goto L_0x02d0
            L_0x00ec:
                char r2 = r14.ch
                r10 = 39
                if (r2 == r10) goto L_0x01f6
                r10 = 34
                if (r2 != r10) goto L_0x00f8
                goto L_0x01f6
            L_0x00f8:
                boolean r1 = isDigitFirst(r2)
                if (r1 == 0) goto L_0x0132
                long r1 = r14.readLongValue()
                char r4 = r14.ch
                r10 = 0
                if (r4 != r3) goto L_0x010d
                double r3 = r14.readDoubleValue(r1)
                goto L_0x010e
            L_0x010d:
                r3 = r10
            L_0x010e:
                if (r0 == 0) goto L_0x0113
                r14.accept(r7)
            L_0x0113:
                if (r15 == 0) goto L_0x0118
                r14.accept(r6)
            L_0x0118:
                int r15 = (r3 > r10 ? 1 : (r3 == r10 ? 0 : -1))
                if (r15 != 0) goto L_0x0127
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$IntOpSegement r0 = new com.alibaba.fastjson.JSONPath$IntOpSegement
                r0.<init>(r8, r1, r9)
                r15.<init>(r0)
                return r15
            L_0x0127:
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$DoubleOpSegement r0 = new com.alibaba.fastjson.JSONPath$DoubleOpSegement
                r0.<init>(r8, r3, r9)
                r15.<init>(r0)
                return r15
            L_0x0132:
                char r15 = r14.ch
                r1 = 110(0x6e, float:1.54E-43)
                if (r15 != r1) goto L_0x0170
                java.lang.String r15 = r14.readName()
                java.lang.String r1 = "null"
                boolean r15 = r1.equals(r15)
                if (r15 == 0) goto L_0x01f0
                if (r0 == 0) goto L_0x0149
                r14.accept(r7)
            L_0x0149:
                r14.accept(r6)
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.EQ
                if (r9 != r15) goto L_0x015b
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$NullSegement r0 = new com.alibaba.fastjson.JSONPath$NullSegement
                r0.<init>(r8)
                r15.<init>(r0)
                return r15
            L_0x015b:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NE
                if (r9 != r15) goto L_0x016a
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$NotNullSegement r0 = new com.alibaba.fastjson.JSONPath$NotNullSegement
                r0.<init>(r8)
                r15.<init>(r0)
                return r15
            L_0x016a:
                java.lang.UnsupportedOperationException r15 = new java.lang.UnsupportedOperationException
                r15.<init>()
                throw r15
            L_0x0170:
                r1 = 116(0x74, float:1.63E-43)
                if (r15 != r1) goto L_0x01b0
                java.lang.String r15 = r14.readName()
                java.lang.String r1 = "true"
                boolean r15 = r1.equals(r15)
                if (r15 == 0) goto L_0x01f0
                if (r0 == 0) goto L_0x0185
                r14.accept(r7)
            L_0x0185:
                r14.accept(r6)
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.EQ
                if (r9 != r15) goto L_0x0199
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$ValueSegment r0 = new com.alibaba.fastjson.JSONPath$ValueSegment
                java.lang.Boolean r1 = java.lang.Boolean.TRUE
                r0.<init>(r8, r1, r5)
                r15.<init>(r0)
                return r15
            L_0x0199:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NE
                if (r9 != r15) goto L_0x01aa
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$ValueSegment r0 = new com.alibaba.fastjson.JSONPath$ValueSegment
                java.lang.Boolean r1 = java.lang.Boolean.TRUE
                r0.<init>(r8, r1, r4)
                r15.<init>(r0)
                return r15
            L_0x01aa:
                java.lang.UnsupportedOperationException r15 = new java.lang.UnsupportedOperationException
                r15.<init>()
                throw r15
            L_0x01b0:
                r1 = 102(0x66, float:1.43E-43)
                if (r15 != r1) goto L_0x01f0
                java.lang.String r15 = r14.readName()
                java.lang.String r1 = "false"
                boolean r15 = r1.equals(r15)
                if (r15 == 0) goto L_0x01f0
                if (r0 == 0) goto L_0x01c5
                r14.accept(r7)
            L_0x01c5:
                r14.accept(r6)
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.EQ
                if (r9 != r15) goto L_0x01d9
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$ValueSegment r0 = new com.alibaba.fastjson.JSONPath$ValueSegment
                java.lang.Boolean r1 = java.lang.Boolean.FALSE
                r0.<init>(r8, r1, r5)
                r15.<init>(r0)
                return r15
            L_0x01d9:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NE
                if (r9 != r15) goto L_0x01ea
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$ValueSegment r0 = new com.alibaba.fastjson.JSONPath$ValueSegment
                java.lang.Boolean r1 = java.lang.Boolean.FALSE
                r0.<init>(r8, r1, r4)
                r15.<init>(r0)
                return r15
            L_0x01ea:
                java.lang.UnsupportedOperationException r15 = new java.lang.UnsupportedOperationException
                r15.<init>()
                throw r15
            L_0x01f0:
                java.lang.UnsupportedOperationException r15 = new java.lang.UnsupportedOperationException
                r15.<init>()
                throw r15
            L_0x01f6:
                java.lang.String r2 = r14.readString()
                if (r0 == 0) goto L_0x01ff
                r14.accept(r7)
            L_0x01ff:
                if (r15 == 0) goto L_0x0204
                r14.accept(r6)
            L_0x0204:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.RLIKE
                if (r9 != r15) goto L_0x0213
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$RlikeSegement r0 = new com.alibaba.fastjson.JSONPath$RlikeSegement
                r0.<init>(r8, r2, r4)
                r15.<init>(r0)
                return r15
            L_0x0213:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NOT_RLIKE
                if (r9 != r15) goto L_0x0222
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$RlikeSegement r0 = new com.alibaba.fastjson.JSONPath$RlikeSegement
                r0.<init>(r8, r2, r5)
                r15.<init>(r0)
                return r15
            L_0x0222:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.LIKE
                if (r9 == r15) goto L_0x022a
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE
                if (r9 != r15) goto L_0x0251
            L_0x022a:
                java.lang.String r15 = "%%"
                int r0 = r2.indexOf(r15)
                java.lang.String r3 = "%"
                if (r0 == r1) goto L_0x0239
                java.lang.String r2 = r2.replaceAll(r15, r3)
                goto L_0x022a
            L_0x0239:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NOT_LIKE
                if (r9 != r15) goto L_0x023f
                r12 = 1
                goto L_0x0240
            L_0x023f:
                r12 = 0
            L_0x0240:
                r15 = 37
                int r0 = r2.indexOf(r15)
                if (r0 != r1) goto L_0x025c
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.LIKE
                if (r9 != r15) goto L_0x024f
                com.alibaba.fastjson.JSONPath$Operator r9 = com.alibaba.fastjson.JSONPath.Operator.EQ
                goto L_0x0251
            L_0x024f:
                com.alibaba.fastjson.JSONPath$Operator r9 = com.alibaba.fastjson.JSONPath.Operator.NE
            L_0x0251:
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$StringOpSegement r0 = new com.alibaba.fastjson.JSONPath$StringOpSegement
                r0.<init>(r8, r2, r9)
                r15.<init>(r0)
                return r15
            L_0x025c:
                java.lang.String[] r1 = r2.split(r3)
                r3 = 0
                r6 = 2
                if (r0 != 0) goto L_0x0290
                int r0 = r2.length()
                int r0 = r0 - r5
                char r0 = r2.charAt(r0)
                if (r0 != r15) goto L_0x0279
                int r15 = r1.length
                int r15 = r15 - r5
                java.lang.String[] r15 = new java.lang.String[r15]
                int r0 = r15.length
                java.lang.System.arraycopy(r1, r5, r15, r4, r0)
                r11 = r15
                goto L_0x029c
            L_0x0279:
                int r15 = r1.length
                int r15 = r15 - r5
                r15 = r1[r15]
                int r0 = r1.length
                if (r0 <= r6) goto L_0x028c
                int r0 = r1.length
                int r0 = r0 - r6
                java.lang.String[] r0 = new java.lang.String[r0]
                int r2 = r0.length
                java.lang.System.arraycopy(r1, r5, r0, r4, r2)
                r10 = r15
                r11 = r0
                r9 = r3
                goto L_0x02c4
            L_0x028c:
                r10 = r15
                r9 = r3
                r11 = r9
                goto L_0x02c4
            L_0x0290:
                int r0 = r2.length()
                int r0 = r0 - r5
                char r0 = r2.charAt(r0)
                if (r0 != r15) goto L_0x029f
                r11 = r1
            L_0x029c:
                r9 = r3
                r10 = r9
                goto L_0x02c4
            L_0x029f:
                int r15 = r1.length
                if (r15 != r5) goto L_0x02a8
                r15 = r1[r4]
                r9 = r15
                r10 = r3
                r11 = r10
                goto L_0x02c4
            L_0x02a8:
                int r15 = r1.length
                if (r15 != r6) goto L_0x02b3
                r15 = r1[r4]
                r0 = r1[r5]
                r9 = r15
                r10 = r0
                r11 = r3
                goto L_0x02c4
            L_0x02b3:
                r15 = r1[r4]
                int r0 = r1.length
                int r0 = r0 - r5
                r0 = r1[r0]
                int r2 = r1.length
                int r2 = r2 - r6
                java.lang.String[] r2 = new java.lang.String[r2]
                int r3 = r2.length
                java.lang.System.arraycopy(r1, r5, r2, r4, r3)
                r9 = r15
                r10 = r0
                r11 = r2
            L_0x02c4:
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$MatchSegement r0 = new com.alibaba.fastjson.JSONPath$MatchSegement
                r7 = r0
                r7.<init>(r8, r9, r10, r11, r12)
                r15.<init>(r0)
                return r15
            L_0x02d0:
                com.alibaba.fastjson.JSONPath$Operator r1 = com.alibaba.fastjson.JSONPath.Operator.NOT_IN
                if (r9 != r1) goto L_0x02d6
                r1 = 1
                goto L_0x02d7
            L_0x02d6:
                r1 = 0
            L_0x02d7:
                r14.accept(r2)
                com.alibaba.fastjson.JSONArray r2 = new com.alibaba.fastjson.JSONArray
                r2.<init>()
                java.lang.Object r3 = r14.readValue()
                r2.add(r3)
            L_0x02e6:
                r14.skipWhitespace()
                char r3 = r14.ch
                r9 = 44
                if (r3 == r9) goto L_0x0403
                r14.accept(r7)
                if (r0 == 0) goto L_0x02f7
                r14.accept(r7)
            L_0x02f7:
                if (r15 == 0) goto L_0x02fc
                r14.accept(r6)
            L_0x02fc:
                java.util.Iterator r15 = r2.iterator()
                r0 = 1
                r3 = 1
                r6 = 1
            L_0x0303:
                boolean r7 = r15.hasNext()
                if (r7 == 0) goto L_0x0333
                java.lang.Object r7 = r15.next()
                if (r7 != 0) goto L_0x0313
                if (r0 == 0) goto L_0x0303
                r0 = 0
                goto L_0x0303
            L_0x0313:
                java.lang.Class r7 = r7.getClass()
                if (r0 == 0) goto L_0x032b
                java.lang.Class<java.lang.Byte> r9 = java.lang.Byte.class
                if (r7 == r9) goto L_0x032b
                java.lang.Class<java.lang.Short> r9 = java.lang.Short.class
                if (r7 == r9) goto L_0x032b
                java.lang.Class<java.lang.Integer> r9 = java.lang.Integer.class
                if (r7 == r9) goto L_0x032b
                java.lang.Class<java.lang.Long> r9 = java.lang.Long.class
                if (r7 == r9) goto L_0x032b
                r0 = 0
                r6 = 0
            L_0x032b:
                if (r3 == 0) goto L_0x0303
                java.lang.Class<java.lang.String> r9 = java.lang.String.class
                if (r7 == r9) goto L_0x0303
                r3 = 0
                goto L_0x0303
            L_0x0333:
                int r15 = r2.size()
                if (r15 != r5) goto L_0x0357
                java.lang.Object r15 = r2.get(r4)
                if (r15 != 0) goto L_0x0357
                if (r1 == 0) goto L_0x034c
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$NotNullSegement r0 = new com.alibaba.fastjson.JSONPath$NotNullSegement
                r0.<init>(r8)
                r15.<init>(r0)
                return r15
            L_0x034c:
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$NullSegement r0 = new com.alibaba.fastjson.JSONPath$NullSegement
                r0.<init>(r8)
                r15.<init>(r0)
                return r15
            L_0x0357:
                if (r0 == 0) goto L_0x039e
                int r15 = r2.size()
                if (r15 != r5) goto L_0x037b
                java.lang.Object r15 = r2.get(r4)
                java.lang.Number r15 = (java.lang.Number) r15
                long r2 = r15.longValue()
                if (r1 == 0) goto L_0x036e
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NE
                goto L_0x0370
            L_0x036e:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.EQ
            L_0x0370:
                com.alibaba.fastjson.JSONPath$FilterSegement r0 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$IntOpSegement r1 = new com.alibaba.fastjson.JSONPath$IntOpSegement
                r1.<init>(r8, r2, r15)
                r0.<init>(r1)
                return r0
            L_0x037b:
                int r15 = r2.size()
                long[] r15 = new long[r15]
            L_0x0381:
                int r0 = r15.length
                if (r4 >= r0) goto L_0x0393
                java.lang.Object r0 = r2.get(r4)
                java.lang.Number r0 = (java.lang.Number) r0
                long r5 = r0.longValue()
                r15[r4] = r5
                int r4 = r4 + 1
                goto L_0x0381
            L_0x0393:
                com.alibaba.fastjson.JSONPath$FilterSegement r0 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$IntInSegement r2 = new com.alibaba.fastjson.JSONPath$IntInSegement
                r2.<init>(r8, r15, r1)
                r0.<init>(r2)
                return r0
            L_0x039e:
                if (r3 == 0) goto L_0x03d2
                int r15 = r2.size()
                if (r15 != r5) goto L_0x03be
                java.lang.Object r15 = r2.get(r4)
                java.lang.String r15 = (java.lang.String) r15
                if (r1 == 0) goto L_0x03b1
                com.alibaba.fastjson.JSONPath$Operator r0 = com.alibaba.fastjson.JSONPath.Operator.NE
                goto L_0x03b3
            L_0x03b1:
                com.alibaba.fastjson.JSONPath$Operator r0 = com.alibaba.fastjson.JSONPath.Operator.EQ
            L_0x03b3:
                com.alibaba.fastjson.JSONPath$FilterSegement r1 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$StringOpSegement r2 = new com.alibaba.fastjson.JSONPath$StringOpSegement
                r2.<init>(r8, r15, r0)
                r1.<init>(r2)
                return r1
            L_0x03be:
                int r15 = r2.size()
                java.lang.String[] r15 = new java.lang.String[r15]
                r2.toArray(r15)
                com.alibaba.fastjson.JSONPath$FilterSegement r0 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$StringInSegement r2 = new com.alibaba.fastjson.JSONPath$StringInSegement
                r2.<init>(r8, r15, r1)
                r0.<init>(r2)
                return r0
            L_0x03d2:
                if (r6 == 0) goto L_0x03fd
                int r15 = r2.size()
                java.lang.Long[] r15 = new java.lang.Long[r15]
            L_0x03da:
                int r0 = r15.length
                if (r4 >= r0) goto L_0x03f2
                java.lang.Object r0 = r2.get(r4)
                java.lang.Number r0 = (java.lang.Number) r0
                if (r0 == 0) goto L_0x03ef
                long r5 = r0.longValue()
                java.lang.Long r0 = java.lang.Long.valueOf(r5)
                r15[r4] = r0
            L_0x03ef:
                int r4 = r4 + 1
                goto L_0x03da
            L_0x03f2:
                com.alibaba.fastjson.JSONPath$FilterSegement r0 = new com.alibaba.fastjson.JSONPath$FilterSegement
                com.alibaba.fastjson.JSONPath$IntObjInSegement r2 = new com.alibaba.fastjson.JSONPath$IntObjInSegement
                r2.<init>(r8, r15, r1)
                r0.<init>(r2)
                return r0
            L_0x03fd:
                java.lang.UnsupportedOperationException r15 = new java.lang.UnsupportedOperationException
                r15.<init>()
                throw r15
            L_0x0403:
                r14.next()
                java.lang.Object r3 = r14.readValue()
                r2.add(r3)
                goto L_0x02e6
            L_0x040f:
                com.alibaba.fastjson.JSONPath$Operator r15 = com.alibaba.fastjson.JSONPath.Operator.NOT_BETWEEN
                if (r9 != r15) goto L_0x0415
                r13 = 1
                goto L_0x0416
            L_0x0415:
                r13 = 0
            L_0x0416:
                java.lang.Object r15 = r14.readValue()
                java.lang.String r0 = r14.readName()
                java.lang.String r1 = "and"
                boolean r0 = r1.equalsIgnoreCase(r0)
                if (r0 == 0) goto L_0x046a
                java.lang.Object r0 = r14.readValue()
                if (r15 == 0) goto L_0x0462
                if (r0 == 0) goto L_0x0462
                java.lang.Class r1 = r15.getClass()
                boolean r1 = com.alibaba.fastjson.JSONPath.isInt(r1)
                if (r1 == 0) goto L_0x045a
                java.lang.Class r1 = r0.getClass()
                boolean r1 = com.alibaba.fastjson.JSONPath.isInt(r1)
                if (r1 == 0) goto L_0x045a
                com.alibaba.fastjson.JSONPath$IntBetweenSegement r1 = new com.alibaba.fastjson.JSONPath$IntBetweenSegement
                java.lang.Number r15 = (java.lang.Number) r15
                long r9 = r15.longValue()
                java.lang.Number r0 = (java.lang.Number) r0
                long r11 = r0.longValue()
                r7 = r1
                r7.<init>(r8, r9, r11, r13)
                com.alibaba.fastjson.JSONPath$FilterSegement r15 = new com.alibaba.fastjson.JSONPath$FilterSegement
                r15.<init>(r1)
                return r15
            L_0x045a:
                com.alibaba.fastjson.JSONPathException r15 = new com.alibaba.fastjson.JSONPathException
                java.lang.String r0 = r14.path
                r15.<init>(r0)
                throw r15
            L_0x0462:
                com.alibaba.fastjson.JSONPathException r15 = new com.alibaba.fastjson.JSONPathException
                java.lang.String r0 = r14.path
                r15.<init>(r0)
                throw r15
            L_0x046a:
                com.alibaba.fastjson.JSONPathException r15 = new com.alibaba.fastjson.JSONPathException
                java.lang.String r0 = r14.path
                r15.<init>(r0)
                goto L_0x0473
            L_0x0472:
                throw r15
            L_0x0473:
                goto L_0x0472
            */
            throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.JSONPathParser.parseArrayAccess(boolean):com.alibaba.fastjson.JSONPath$Segement");
        }

        /* access modifiers changed from: protected */
        public long readLongValue() {
            int i = this.pos - 1;
            char c = this.ch;
            if (c == '+' || c == '-') {
                next();
            }
            while (true) {
                char c2 = this.ch;
                if (c2 < '0' || c2 > '9') {
                } else {
                    next();
                }
            }
            return Long.parseLong(this.path.substring(i, this.pos - 1));
        }

        /* access modifiers changed from: protected */
        public double readDoubleValue(long j) {
            int i = this.pos - 1;
            next();
            while (true) {
                char c = this.ch;
                if (c < '0' || c > '9') {
                    double parseDouble = Double.parseDouble(this.path.substring(i, this.pos - 1));
                    double d = (double) j;
                    Double.isNaN(d);
                } else {
                    next();
                }
            }
            double parseDouble2 = Double.parseDouble(this.path.substring(i, this.pos - 1));
            double d2 = (double) j;
            Double.isNaN(d2);
            return parseDouble2 + d2;
        }

        /* access modifiers changed from: protected */
        public Object readValue() {
            skipWhitespace();
            if (isDigitFirst(this.ch)) {
                return Long.valueOf(readLongValue());
            }
            char c = this.ch;
            if (c == '\"' || c == '\'') {
                return readString();
            }
            if (c == 'n') {
                if ("null".equals(readName())) {
                    return null;
                }
                throw new JSONPathException(this.path);
            }
            throw new UnsupportedOperationException();
        }

        /* access modifiers changed from: protected */
        public Operator readOp() {
            Operator operator;
            char c = this.ch;
            if (c == '=') {
                next();
                operator = Operator.EQ;
            } else if (c == '!') {
                next();
                accept('=');
                operator = Operator.NE;
            } else if (c == '<') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = Operator.LE;
                } else {
                    operator = Operator.LT;
                }
            } else if (c == '>') {
                next();
                if (this.ch == '=') {
                    next();
                    operator = Operator.GE;
                } else {
                    operator = Operator.GT;
                }
            } else {
                operator = null;
            }
            if (operator != null) {
                return operator;
            }
            String readName = readName();
            String str = "between";
            String str2 = "in";
            String str3 = "rlike";
            String str4 = "like";
            if ("not".equalsIgnoreCase(readName)) {
                skipWhitespace();
                String readName2 = readName();
                if (str4.equalsIgnoreCase(readName2)) {
                    return Operator.NOT_LIKE;
                }
                if (str3.equalsIgnoreCase(readName2)) {
                    return Operator.NOT_RLIKE;
                }
                if (str2.equalsIgnoreCase(readName2)) {
                    return Operator.NOT_IN;
                }
                if (str.equalsIgnoreCase(readName2)) {
                    return Operator.NOT_BETWEEN;
                }
                throw new UnsupportedOperationException();
            } else if (str4.equalsIgnoreCase(readName)) {
                return Operator.LIKE;
            } else {
                if (str3.equalsIgnoreCase(readName)) {
                    return Operator.RLIKE;
                }
                if (str2.equalsIgnoreCase(readName)) {
                    return Operator.IN;
                }
                if (str.equalsIgnoreCase(readName)) {
                    return Operator.BETWEEN;
                }
                throw new UnsupportedOperationException();
            }
        }

        /* access modifiers changed from: 0000 */
        public String readName() {
            skipWhitespace();
            char c = this.ch;
            if (c == '\\' || IOUtils.firstIdentifier(c)) {
                StringBuilder sb = new StringBuilder();
                while (!isEOF()) {
                    char c2 = this.ch;
                    if (c2 == '\\') {
                        next();
                        sb.append(this.ch);
                        if (isEOF()) {
                            break;
                        }
                        next();
                    } else if (!IOUtils.isIdent(c2)) {
                        break;
                    } else {
                        sb.append(this.ch);
                        next();
                    }
                }
                if (isEOF() && IOUtils.isIdent(this.ch)) {
                    sb.append(this.ch);
                }
                return sb.toString();
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("illeal jsonpath syntax. ");
            sb2.append(this.path);
            throw new JSONPathException(sb2.toString());
        }

        /* access modifiers changed from: 0000 */
        public String readString() {
            char c = this.ch;
            next();
            int i = this.pos - 1;
            while (this.ch != c && !isEOF()) {
                next();
            }
            String substring = this.path.substring(i, isEOF() ? this.pos : this.pos - 1);
            accept(c);
            return substring;
        }

        /* access modifiers changed from: 0000 */
        public void accept(char c) {
            if (this.ch != c) {
                StringBuilder sb = new StringBuilder();
                sb.append("expect '");
                sb.append(c);
                sb.append(", but '");
                sb.append(this.ch);
                sb.append("'");
                throw new JSONPathException(sb.toString());
            } else if (!isEOF()) {
                next();
            }
        }

        public Segement[] explain() {
            String str = this.path;
            if (str == null || str.length() == 0) {
                throw new IllegalArgumentException();
            }
            Segement[] segementArr = new Segement[8];
            while (true) {
                Segement readSegement = readSegement();
                if (readSegement == null) {
                    break;
                }
                int i = this.level;
                if (i == segementArr.length) {
                    Segement[] segementArr2 = new Segement[((i * 3) / 2)];
                    System.arraycopy(segementArr, 0, segementArr2, 0, i);
                    segementArr = segementArr2;
                }
                int i2 = this.level;
                this.level = i2 + 1;
                segementArr[i2] = readSegement;
            }
            int i3 = this.level;
            if (i3 == segementArr.length) {
                return segementArr;
            }
            Segement[] segementArr3 = new Segement[i3];
            System.arraycopy(segementArr, 0, segementArr3, 0, i3);
            return segementArr3;
        }

        /* access modifiers changed from: 0000 */
        public Segement buildArraySegement(String str) {
            int length = str.length();
            int i = 0;
            char charAt = str.charAt(0);
            int i2 = 1;
            int i3 = length - 1;
            char charAt2 = str.charAt(i3);
            int indexOf = str.indexOf(44);
            String str2 = ",";
            int i4 = -1;
            if (str.length() <= 2 || charAt != '\'' || charAt2 != '\'') {
                int indexOf2 = str.indexOf(58);
                if (indexOf == -1 && indexOf2 == -1) {
                    if (!TypeUtils.isNumber(str)) {
                        return new PropertySegement(str, false);
                    }
                    try {
                        return new ArrayAccessSegement(Integer.parseInt(str));
                    } catch (NumberFormatException unused) {
                        return new PropertySegement(str, false);
                    }
                } else if (indexOf != -1) {
                    String[] split = str.split(str2);
                    int[] iArr = new int[split.length];
                    while (i < split.length) {
                        iArr[i] = Integer.parseInt(split[i]);
                        i++;
                    }
                    return new MultiIndexSegement(iArr);
                } else if (indexOf2 != -1) {
                    String[] split2 = str.split(":");
                    int[] iArr2 = new int[split2.length];
                    for (int i5 = 0; i5 < split2.length; i5++) {
                        String str3 = split2[i5];
                        if (str3.length() != 0) {
                            iArr2[i5] = Integer.parseInt(str3);
                        } else if (i5 == 0) {
                            iArr2[i5] = 0;
                        } else {
                            throw new UnsupportedOperationException();
                        }
                    }
                    int i6 = iArr2[0];
                    if (iArr2.length > 1) {
                        i4 = iArr2[1];
                    }
                    if (iArr2.length == 3) {
                        i2 = iArr2[2];
                    }
                    if (i4 >= 0 && i4 < i6) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("end must greater than or equals start. start ");
                        sb.append(i6);
                        sb.append(",  end ");
                        sb.append(i4);
                        throw new UnsupportedOperationException(sb.toString());
                    } else if (i2 > 0) {
                        return new RangeSegement(i6, i4, i2);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("step must greater than zero : ");
                        sb2.append(i2);
                        throw new UnsupportedOperationException(sb2.toString());
                    }
                } else {
                    throw new UnsupportedOperationException();
                }
            } else if (indexOf == -1) {
                return new PropertySegement(str.substring(1, i3), false);
            } else {
                String[] split3 = str.split(str2);
                String[] strArr = new String[split3.length];
                while (i < split3.length) {
                    String str4 = split3[i];
                    strArr[i] = str4.substring(1, str4.length() - 1);
                    i++;
                }
                return new MultiPropertySegement(strArr);
            }
        }
    }

    static class MatchSegement implements Filter {
        private final String[] containsValues;
        private final String endsWithValue;
        private final int minLength;
        private final boolean not;
        private final String propertyName;
        private final long propertyNameHash;
        private final String startsWithValue;

        public MatchSegement(String str, String str2, String str3, String[] strArr, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.startsWithValue = str2;
            this.endsWithValue = str3;
            this.containsValues = strArr;
            this.not = z;
            int length = str2 != null ? str2.length() + 0 : 0;
            if (str3 != null) {
                length += str3.length();
            }
            if (strArr != null) {
                for (String length2 : strArr) {
                    length += length2.length();
                }
            }
            this.minLength = length;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            int i;
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            if (propertyValue == null) {
                return false;
            }
            String obj4 = propertyValue.toString();
            if (obj4.length() < this.minLength) {
                return this.not;
            }
            String str = this.startsWithValue;
            if (str == null) {
                i = 0;
            } else if (!obj4.startsWith(str)) {
                return this.not;
            } else {
                i = this.startsWithValue.length() + 0;
            }
            String[] strArr = this.containsValues;
            if (strArr != null) {
                for (String str2 : strArr) {
                    int indexOf = obj4.indexOf(str2, i);
                    if (indexOf == -1) {
                        return this.not;
                    }
                    i = indexOf + str2.length();
                }
            }
            String str3 = this.endsWithValue;
            if (str3 == null || obj4.endsWith(str3)) {
                return !this.not;
            }
            return this.not;
        }
    }

    static class MultiIndexSegement implements Segement {
        private final int[] indexes;

        public MultiIndexSegement(int[] iArr) {
            this.indexes = iArr;
        }

        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.indexes.length);
            int i = 0;
            while (true) {
                int[] iArr = this.indexes;
                if (i >= iArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.getArrayItem(obj2, iArr[i]));
                i++;
            }
        }
    }

    static class MultiPropertySegement implements Segement {
        private final String[] propertyNames;
        private final long[] propertyNamesHash;

        public MultiPropertySegement(String[] strArr) {
            this.propertyNames = strArr;
            this.propertyNamesHash = new long[strArr.length];
            int i = 0;
            while (true) {
                long[] jArr = this.propertyNamesHash;
                if (i < jArr.length) {
                    jArr[i] = TypeUtils.fnv1a_64(strArr[i]);
                    i++;
                } else {
                    return;
                }
            }
        }

        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            ArrayList arrayList = new ArrayList(this.propertyNames.length);
            int i = 0;
            while (true) {
                String[] strArr = this.propertyNames;
                if (i >= strArr.length) {
                    return arrayList;
                }
                arrayList.add(jSONPath.getPropertyValue(obj2, strArr[i], this.propertyNamesHash[i]));
                i++;
            }
        }
    }

    static class NotNullSegement implements Filter {
        private final String propertyName;
        private final long propertyNameHash;

        public NotNullSegement(String str) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash) != null;
        }
    }

    static class NullSegement implements Filter {
        private final String propertyName;
        private final long propertyNameHash;

        public NullSegement(String str) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            return jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash) == null;
        }
    }

    enum Operator {
        EQ,
        NE,
        GT,
        GE,
        LT,
        LE,
        LIKE,
        NOT_LIKE,
        RLIKE,
        NOT_RLIKE,
        IN,
        NOT_IN,
        BETWEEN,
        NOT_BETWEEN
    }

    static class PropertySegement implements Segement {
        private final boolean deep;
        /* access modifiers changed from: private */
        public final String propertyName;
        private final long propertyNameHash;

        public PropertySegement(String str, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.deep = z;
        }

        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            if (!this.deep) {
                return jSONPath.getPropertyValue(obj2, this.propertyName, this.propertyNameHash);
            }
            ArrayList arrayList = new ArrayList();
            jSONPath.deepScan(obj2, this.propertyName, arrayList);
            return arrayList;
        }

        public void setValue(JSONPath jSONPath, Object obj, Object obj2) {
            if (this.deep) {
                jSONPath.deepSet(obj, this.propertyName, this.propertyNameHash, obj2);
                return;
            }
            jSONPath.setPropertyValue(obj, this.propertyName, this.propertyNameHash, obj2);
        }

        public boolean remove(JSONPath jSONPath, Object obj) {
            return jSONPath.removePropertyValue(obj, this.propertyName);
        }
    }

    static class RangeSegement implements Segement {
        private final int end;
        private final int start;
        private final int step;

        public RangeSegement(int i, int i2, int i3) {
            this.start = i;
            this.end = i2;
            this.step = i3;
        }

        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            int intValue = SizeSegement.instance.eval(jSONPath, obj, obj2).intValue();
            int i = this.start;
            if (i < 0) {
                i += intValue;
            }
            int i2 = this.end;
            if (i2 < 0) {
                i2 += intValue;
            }
            int i3 = ((i2 - i) / this.step) + 1;
            if (i3 == -1) {
                return null;
            }
            ArrayList arrayList = new ArrayList(i3);
            while (i <= i2 && i < intValue) {
                arrayList.add(jSONPath.getArrayItem(obj2, i));
                i += this.step;
            }
            return arrayList;
        }
    }

    static class RlikeSegement implements Filter {
        private final boolean not;
        private final Pattern pattern;
        private final String propertyName;
        private final long propertyNameHash;

        public RlikeSegement(String str, String str2, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.pattern = Pattern.compile(str2);
            this.not = z;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            if (propertyValue == null) {
                return false;
            }
            boolean matches = this.pattern.matcher(propertyValue.toString()).matches();
            if (this.not) {
                matches = !matches;
            }
            return matches;
        }
    }

    interface Segement {
        Object eval(JSONPath jSONPath, Object obj, Object obj2);
    }

    static class SizeSegement implements Segement {
        public static final SizeSegement instance = new SizeSegement();

        SizeSegement() {
        }

        public Integer eval(JSONPath jSONPath, Object obj, Object obj2) {
            return Integer.valueOf(jSONPath.evalSize(obj2));
        }
    }

    static class StringInSegement implements Filter {
        private final boolean not;
        private final String propertyName;
        private final long propertyNameHash;
        private final String[] values;

        public StringInSegement(String str, String[] strArr, boolean z) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.values = strArr;
            this.not = z;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            String[] strArr;
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            for (String str : this.values) {
                if (str == propertyValue) {
                    return !this.not;
                }
                if (str != null && str.equals(propertyValue)) {
                    return !this.not;
                }
            }
            return this.not;
        }
    }

    static class StringOpSegement implements Filter {
        private final Operator op;
        private final String propertyName;
        private final long propertyNameHash;
        private final String value;

        public StringOpSegement(String str, String str2, Operator operator) {
            this.propertyName = str;
            this.propertyNameHash = TypeUtils.fnv1a_64(str);
            this.value = str2;
            this.op = operator;
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            Object propertyValue = jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash);
            if (this.op == Operator.EQ) {
                return this.value.equals(propertyValue);
            }
            if (this.op == Operator.NE) {
                return !this.value.equals(propertyValue);
            }
            boolean z = false;
            if (propertyValue == null) {
                return false;
            }
            int compareTo = this.value.compareTo(propertyValue.toString());
            if (this.op == Operator.GE) {
                if (compareTo <= 0) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.GT) {
                if (compareTo < 0) {
                    z = true;
                }
                return z;
            } else if (this.op == Operator.LE) {
                if (compareTo >= 0) {
                    z = true;
                }
                return z;
            } else {
                if (this.op == Operator.LT && compareTo > 0) {
                    z = true;
                }
                return z;
            }
        }
    }

    static class ValueSegment implements Filter {
        private boolean eq = true;
        private final String propertyName;
        private final long propertyNameHash;
        private final Object value;

        public ValueSegment(String str, Object obj, boolean z) {
            if (obj != null) {
                this.propertyName = str;
                this.propertyNameHash = TypeUtils.fnv1a_64(str);
                this.value = obj;
                this.eq = z;
                return;
            }
            throw new IllegalArgumentException("value is null");
        }

        public boolean apply(JSONPath jSONPath, Object obj, Object obj2, Object obj3) {
            boolean equals = this.value.equals(jSONPath.getPropertyValue(obj3, this.propertyName, this.propertyNameHash));
            return !this.eq ? !equals : equals;
        }
    }

    static class WildCardSegement implements Segement {
        public static WildCardSegement instance = new WildCardSegement();

        WildCardSegement() {
        }

        public Object eval(JSONPath jSONPath, Object obj, Object obj2) {
            return jSONPath.getPropertyValues(obj2);
        }
    }

    public JSONPath(String str) {
        this(str, SerializeConfig.getGlobalInstance(), ParserConfig.getGlobalInstance());
    }

    public JSONPath(String str, SerializeConfig serializeConfig2, ParserConfig parserConfig2) {
        if (str == null || str.length() == 0) {
            throw new JSONPathException("json-path can not be null or empty");
        }
        this.path = str;
        this.serializeConfig = serializeConfig2;
        this.parserConfig = parserConfig2;
    }

    /* access modifiers changed from: protected */
    public void init() {
        if (this.segments == null) {
            if ("*".equals(this.path)) {
                this.segments = new Segement[]{WildCardSegement.instance};
            } else {
                this.segments = new JSONPathParser(this.path).explain();
            }
        }
    }

    public Object eval(Object obj) {
        if (obj == null) {
            return null;
        }
        init();
        int i = 0;
        Object obj2 = obj;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                return obj2;
            }
            obj2 = segementArr[i].eval(this, obj, obj2);
            i++;
        }
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        init();
        Object obj2 = obj;
        int i = 0;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                return true;
            }
            obj2 = segementArr[i].eval(this, obj, obj2);
            if (obj2 == null) {
                return false;
            }
            i++;
        }
    }

    public boolean containsValue(Object obj, Object obj2) {
        Object eval = eval(obj);
        if (eval == obj2) {
            return true;
        }
        if (eval == null) {
            return false;
        }
        if (!(eval instanceof Iterable)) {
            return eq(eval, obj2);
        }
        for (Object eq : (Iterable) eval) {
            if (eq(eq, obj2)) {
                return true;
            }
        }
        return false;
    }

    public int size(Object obj) {
        if (obj == null) {
            return -1;
        }
        init();
        int i = 0;
        Object obj2 = obj;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                return evalSize(obj2);
            }
            obj2 = segementArr[i].eval(this, obj, obj2);
            i++;
        }
    }

    public void arrayAdd(Object obj, Object... objArr) {
        if (objArr != null && objArr.length != 0 && obj != null) {
            init();
            int i = 0;
            Object obj2 = obj;
            Object obj3 = null;
            int i2 = 0;
            while (true) {
                Segement[] segementArr = this.segments;
                if (i2 >= segementArr.length) {
                    break;
                }
                if (i2 == segementArr.length - 1) {
                    obj3 = obj2;
                }
                obj2 = this.segments[i2].eval(this, obj, obj2);
                i2++;
            }
            if (obj2 == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("value not found in path ");
                sb.append(this.path);
                throw new JSONPathException(sb.toString());
            } else if (obj2 instanceof Collection) {
                Collection collection = (Collection) obj2;
                int length = objArr.length;
                while (i < length) {
                    collection.add(objArr[i]);
                    i++;
                }
            } else {
                Class cls = obj2.getClass();
                if (cls.isArray()) {
                    int length2 = Array.getLength(obj2);
                    Object newInstance = Array.newInstance(cls.getComponentType(), objArr.length + length2);
                    System.arraycopy(obj2, 0, newInstance, 0, length2);
                    while (i < objArr.length) {
                        Array.set(newInstance, length2 + i, objArr[i]);
                        i++;
                    }
                    Segement[] segementArr2 = this.segments;
                    Segement segement = segementArr2[segementArr2.length - 1];
                    if (segement instanceof PropertySegement) {
                        ((PropertySegement) segement).setValue(this, obj3, newInstance);
                    } else if (segement instanceof ArrayAccessSegement) {
                        ((ArrayAccessSegement) segement).setValue(this, obj3, newInstance);
                    } else {
                        throw new UnsupportedOperationException();
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("unsupported array put operation. ");
                    sb2.append(cls);
                    throw new JSONException(sb2.toString());
                }
            }
        }
    }

    public boolean remove(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        init();
        Collection<Object> collection = null;
        Object obj2 = obj;
        int i = 0;
        while (true) {
            Segement[] segementArr = this.segments;
            if (i >= segementArr.length) {
                break;
            } else if (i == segementArr.length - 1) {
                collection = obj2;
                break;
            } else {
                obj2 = segementArr[i].eval(this, obj, obj2);
                if (obj2 == null) {
                    break;
                }
                i++;
            }
        }
        if (collection == null) {
            return false;
        }
        Segement[] segementArr2 = this.segments;
        Segement segement = segementArr2[segementArr2.length - 1];
        if (segement instanceof PropertySegement) {
            PropertySegement propertySegement = (PropertySegement) segement;
            if ((collection instanceof Collection) && segementArr2.length > 1) {
                Segement segement2 = segementArr2[segementArr2.length - 2];
                if ((segement2 instanceof RangeSegement) || (segement2 instanceof MultiIndexSegement)) {
                    for (Object remove : collection) {
                        if (propertySegement.remove(this, remove)) {
                            z = true;
                        }
                    }
                    return z;
                }
            }
            return propertySegement.remove(this, collection);
        } else if (segement instanceof ArrayAccessSegement) {
            return ((ArrayAccessSegement) segement).remove(this, collection);
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public boolean set(Object obj, Object obj2) {
        return set(obj, obj2, true);
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean set(java.lang.Object r9, java.lang.Object r10, boolean r11) {
        /*
            r8 = this;
            r11 = 0
            if (r9 != 0) goto L_0x0004
            return r11
        L_0x0004:
            r8.init()
            r0 = 0
            r2 = r9
            r3 = r0
            r1 = 0
        L_0x000b:
            com.alibaba.fastjson.JSONPath$Segement[] r4 = r8.segments
            int r5 = r4.length
            r6 = 1
            if (r1 >= r5) goto L_0x0086
            r3 = r4[r1]
            java.lang.Object r4 = r3.eval(r8, r9, r2)
            if (r4 != 0) goto L_0x0081
            com.alibaba.fastjson.JSONPath$Segement[] r4 = r8.segments
            int r5 = r4.length
            int r5 = r5 - r6
            if (r1 >= r5) goto L_0x0024
            int r5 = r1 + 1
            r4 = r4[r5]
            goto L_0x0025
        L_0x0024:
            r4 = r0
        L_0x0025:
            boolean r5 = r4 instanceof com.alibaba.fastjson.JSONPath.PropertySegement
            if (r5 == 0) goto L_0x0061
            boolean r4 = r3 instanceof com.alibaba.fastjson.JSONPath.PropertySegement
            if (r4 == 0) goto L_0x004b
            r4 = r3
            com.alibaba.fastjson.JSONPath$PropertySegement r4 = (com.alibaba.fastjson.JSONPath.PropertySegement) r4
            java.lang.String r4 = r4.propertyName
            java.lang.Class r5 = r2.getClass()
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r5 = r8.getJavaBeanDeserializer(r5)
            if (r5 == 0) goto L_0x004b
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer r4 = r5.getFieldDeserializer(r4)
            com.alibaba.fastjson.util.FieldInfo r4 = r4.fieldInfo
            java.lang.Class<?> r4 = r4.fieldClass
            com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer r5 = r8.getJavaBeanDeserializer(r4)
            goto L_0x004d
        L_0x004b:
            r4 = r0
            r5 = r4
        L_0x004d:
            if (r5 == 0) goto L_0x005b
            com.alibaba.fastjson.util.JavaBeanInfo r7 = r5.beanInfo
            java.lang.reflect.Constructor<?> r7 = r7.defaultConstructor
            if (r7 == 0) goto L_0x005a
            java.lang.Object r4 = r5.createInstance(r0, r4)
            goto L_0x006c
        L_0x005a:
            return r11
        L_0x005b:
            com.alibaba.fastjson.JSONObject r4 = new com.alibaba.fastjson.JSONObject
            r4.<init>()
            goto L_0x006c
        L_0x0061:
            boolean r4 = r4 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegement
            if (r4 == 0) goto L_0x006b
            com.alibaba.fastjson.JSONArray r4 = new com.alibaba.fastjson.JSONArray
            r4.<init>()
            goto L_0x006c
        L_0x006b:
            r4 = r0
        L_0x006c:
            if (r4 == 0) goto L_0x0087
            boolean r5 = r3 instanceof com.alibaba.fastjson.JSONPath.PropertySegement
            if (r5 == 0) goto L_0x0078
            com.alibaba.fastjson.JSONPath$PropertySegement r3 = (com.alibaba.fastjson.JSONPath.PropertySegement) r3
            r3.setValue(r8, r2, r4)
            goto L_0x0081
        L_0x0078:
            boolean r5 = r3 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegement
            if (r5 == 0) goto L_0x0087
            com.alibaba.fastjson.JSONPath$ArrayAccessSegement r3 = (com.alibaba.fastjson.JSONPath.ArrayAccessSegement) r3
            r3.setValue(r8, r2, r4)
        L_0x0081:
            int r1 = r1 + 1
            r3 = r2
            r2 = r4
            goto L_0x000b
        L_0x0086:
            r2 = r3
        L_0x0087:
            if (r2 != 0) goto L_0x008a
            return r11
        L_0x008a:
            com.alibaba.fastjson.JSONPath$Segement[] r9 = r8.segments
            int r11 = r9.length
            int r11 = r11 - r6
            r9 = r9[r11]
            boolean r11 = r9 instanceof com.alibaba.fastjson.JSONPath.PropertySegement
            if (r11 == 0) goto L_0x009a
            com.alibaba.fastjson.JSONPath$PropertySegement r9 = (com.alibaba.fastjson.JSONPath.PropertySegement) r9
            r9.setValue(r8, r2, r10)
            return r6
        L_0x009a:
            boolean r11 = r9 instanceof com.alibaba.fastjson.JSONPath.ArrayAccessSegement
            if (r11 == 0) goto L_0x00a5
            com.alibaba.fastjson.JSONPath$ArrayAccessSegement r9 = (com.alibaba.fastjson.JSONPath.ArrayAccessSegement) r9
            boolean r9 = r9.setValue(r8, r2, r10)
            return r9
        L_0x00a5:
            java.lang.UnsupportedOperationException r9 = new java.lang.UnsupportedOperationException
            r9.<init>()
            goto L_0x00ac
        L_0x00ab:
            throw r9
        L_0x00ac:
            goto L_0x00ab
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONPath.set(java.lang.Object, java.lang.Object, boolean):boolean");
    }

    public static Object eval(Object obj, String str) {
        return compile(str).eval(obj);
    }

    public static int size(Object obj, String str) {
        JSONPath compile = compile(str);
        return compile.evalSize(compile.eval(obj));
    }

    public static boolean contains(Object obj, String str) {
        if (obj == null) {
            return false;
        }
        return compile(str).contains(obj);
    }

    public static boolean containsValue(Object obj, String str, Object obj2) {
        return compile(str).containsValue(obj, obj2);
    }

    public static void arrayAdd(Object obj, String str, Object... objArr) {
        compile(str).arrayAdd(obj, objArr);
    }

    public static boolean set(Object obj, String str, Object obj2) {
        return compile(str).set(obj, obj2);
    }

    public static boolean remove(Object obj, String str) {
        return compile(str).remove(obj);
    }

    public static JSONPath compile(String str) {
        if (str != null) {
            JSONPath jSONPath = (JSONPath) pathCache.get(str);
            if (jSONPath != null) {
                return jSONPath;
            }
            JSONPath jSONPath2 = new JSONPath(str);
            if (pathCache.size() >= 1024) {
                return jSONPath2;
            }
            pathCache.putIfAbsent(str, jSONPath2);
            return (JSONPath) pathCache.get(str);
        }
        throw new JSONPathException("jsonpath can not be null");
    }

    public static Object read(String str, String str2) {
        return compile(str2).eval(JSON.parse(str));
    }

    public static Map<String, Object> paths(Object obj) {
        return paths(obj, SerializeConfig.globalInstance);
    }

    public static Map<String, Object> paths(Object obj, SerializeConfig serializeConfig2) {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        HashMap hashMap = new HashMap();
        paths(identityHashMap, hashMap, "/", obj, serializeConfig2);
        return hashMap;
    }

    private static void paths(Map<Object, String> map, Map<String, Object> map2, String str, Object obj, SerializeConfig serializeConfig2) {
        StringBuilder sb;
        StringBuilder sb2;
        StringBuilder sb3;
        StringBuilder sb4;
        if (obj != null) {
            int i = 0;
            if (((String) map.put(obj, str)) != null) {
                if (!((obj instanceof String) || (obj instanceof Number) || (obj instanceof Date) || (obj instanceof UUID))) {
                    return;
                }
            }
            map2.put(str, obj);
            String str2 = "/";
            if (obj instanceof Map) {
                for (Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    if (key instanceof String) {
                        if (str.equals(str2)) {
                            sb4 = new StringBuilder();
                        } else {
                            sb4 = new StringBuilder();
                            sb4.append(str);
                        }
                        sb4.append(str2);
                        sb4.append(key);
                        paths(map, map2, sb4.toString(), entry.getValue(), serializeConfig2);
                    }
                }
            } else if (obj instanceof Collection) {
                for (Object next : (Collection) obj) {
                    if (str.equals(str2)) {
                        sb3 = new StringBuilder();
                    } else {
                        sb3 = new StringBuilder();
                        sb3.append(str);
                    }
                    sb3.append(str2);
                    sb3.append(i);
                    paths(map, map2, sb3.toString(), next, serializeConfig2);
                    i++;
                }
            } else {
                Class cls = obj.getClass();
                if (cls.isArray()) {
                    int length = Array.getLength(obj);
                    while (i < length) {
                        Object obj2 = Array.get(obj, i);
                        if (str.equals(str2)) {
                            sb2 = new StringBuilder();
                        } else {
                            sb2 = new StringBuilder();
                            sb2.append(str);
                        }
                        sb2.append(str2);
                        sb2.append(i);
                        paths(map, map2, sb2.toString(), obj2, serializeConfig2);
                        i++;
                    }
                    return;
                }
                if (!ParserConfig.isPrimitive2(cls) && !cls.isEnum()) {
                    ObjectSerializer objectWriter = serializeConfig2.getObjectWriter(cls);
                    if (objectWriter instanceof JavaBeanSerializer) {
                        try {
                            for (Entry entry2 : ((JavaBeanSerializer) objectWriter).getFieldValuesMap(obj).entrySet()) {
                                String str3 = (String) entry2.getKey();
                                if (str3 instanceof String) {
                                    if (str.equals(str2)) {
                                        sb = new StringBuilder();
                                        sb.append(str2);
                                        sb.append(str3);
                                    } else {
                                        sb = new StringBuilder();
                                        sb.append(str);
                                        sb.append(str2);
                                        sb.append(str3);
                                    }
                                    paths(map, map2, sb.toString(), entry2.getValue(), serializeConfig2);
                                }
                            }
                        } catch (Exception e) {
                            throw new JSONException("toJSON error", e);
                        }
                    }
                }
            }
        }
    }

    private static void paths(Map<Object, String> map, String str, Object obj, SerializeConfig serializeConfig2) {
        StringBuilder sb;
        StringBuilder sb2;
        StringBuilder sb3;
        StringBuilder sb4;
        if (obj != null && !map.containsKey(obj)) {
            map.put(obj, str);
            String str2 = "/";
            if (obj instanceof Map) {
                for (Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    if (key instanceof String) {
                        if (str.equals(str2)) {
                            sb4 = new StringBuilder();
                        } else {
                            sb4 = new StringBuilder();
                            sb4.append(str);
                        }
                        sb4.append(str2);
                        sb4.append(key);
                        paths(map, sb4.toString(), entry.getValue(), serializeConfig2);
                    }
                }
                return;
            }
            int i = 0;
            if (obj instanceof Collection) {
                for (Object next : (Collection) obj) {
                    if (str.equals(str2)) {
                        sb3 = new StringBuilder();
                    } else {
                        sb3 = new StringBuilder();
                        sb3.append(str);
                    }
                    sb3.append(str2);
                    sb3.append(i);
                    paths(map, sb3.toString(), next, serializeConfig2);
                    i++;
                }
                return;
            }
            Class cls = obj.getClass();
            if (cls.isArray()) {
                int length = Array.getLength(obj);
                while (i < length) {
                    Object obj2 = Array.get(obj, i);
                    if (str.equals(str2)) {
                        sb2 = new StringBuilder();
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(str);
                    }
                    sb2.append(str2);
                    sb2.append(i);
                    paths(map, sb2.toString(), obj2, serializeConfig2);
                    i++;
                }
                return;
            }
            if (!ParserConfig.isPrimitive2(cls) && !cls.isEnum()) {
                ObjectSerializer objectWriter = serializeConfig2.getObjectWriter(cls);
                if (objectWriter instanceof JavaBeanSerializer) {
                    try {
                        for (Entry entry2 : ((JavaBeanSerializer) objectWriter).getFieldValuesMap(obj).entrySet()) {
                            String str3 = (String) entry2.getKey();
                            if (str3 instanceof String) {
                                if (str.equals(str2)) {
                                    sb = new StringBuilder();
                                    sb.append(str2);
                                    sb.append(str3);
                                } else {
                                    sb = new StringBuilder();
                                    sb.append(str);
                                    sb.append(str2);
                                    sb.append(str3);
                                }
                                paths(map, sb.toString(), entry2.getValue(), serializeConfig2);
                            }
                        }
                    } catch (Exception e) {
                        throw new JSONException("toJSON error", e);
                    }
                }
            }
        }
    }

    public String getPath() {
        return this.path;
    }

    /* access modifiers changed from: protected */
    public Object getArrayItem(Object obj, int i) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            if (i >= 0) {
                if (i < list.size()) {
                    return list.get(i);
                }
                return null;
            } else if (Math.abs(i) <= list.size()) {
                return list.get(list.size() + i);
            } else {
                return null;
            }
        } else if (obj.getClass().isArray()) {
            int length = Array.getLength(obj);
            if (i >= 0) {
                if (i < length) {
                    return Array.get(obj, i);
                }
                return null;
            } else if (Math.abs(i) <= length) {
                return Array.get(obj, length + i);
            } else {
                return null;
            }
        } else if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj2 = map.get(Integer.valueOf(i));
            if (obj2 == null) {
                obj2 = map.get(Integer.toString(i));
            }
            return obj2;
        } else if (obj instanceof Collection) {
            int i2 = 0;
            for (Object next : (Collection) obj) {
                if (i2 == i) {
                    return next;
                }
                i2++;
            }
            return null;
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public boolean setArrayItem(JSONPath jSONPath, Object obj, int i, Object obj2) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (i >= 0) {
                list.set(i, obj2);
            } else {
                list.set(list.size() + i, obj2);
            }
            return true;
        }
        Class cls = obj.getClass();
        if (cls.isArray()) {
            int length = Array.getLength(obj);
            if (i >= 0) {
                if (i < length) {
                    Array.set(obj, i, obj2);
                }
            } else if (Math.abs(i) <= length) {
                Array.set(obj, length + i, obj2);
            }
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("unsupported set operation.");
        sb.append(cls);
        throw new JSONPathException(sb.toString());
    }

    public boolean removeArrayItem(JSONPath jSONPath, Object obj, int i) {
        if (obj instanceof List) {
            List list = (List) obj;
            if (i < 0) {
                int size = list.size() + i;
                if (size < 0) {
                    return false;
                }
                list.remove(size);
            } else if (i >= list.size()) {
                return false;
            } else {
                list.remove(i);
            }
            return true;
        }
        Class cls = obj.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append("unsupported set operation.");
        sb.append(cls);
        throw new JSONPathException(sb.toString());
    }

    /* access modifiers changed from: protected */
    public Collection<Object> getPropertyValues(Object obj) {
        JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer != null) {
            try {
                return javaBeanSerializer.getFieldValues(obj);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("jsonpath error, path ");
                sb.append(this.path);
                throw new JSONPathException(sb.toString(), e);
            }
        } else if (obj instanceof Map) {
            return ((Map) obj).values();
        } else {
            throw new UnsupportedOperationException();
        }
    }

    static boolean eq(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if (obj.getClass() == obj2.getClass()) {
            return obj.equals(obj2);
        }
        if (!(obj instanceof Number)) {
            return obj.equals(obj2);
        }
        if (obj2 instanceof Number) {
            return eqNotNull((Number) obj, (Number) obj2);
        }
        return false;
    }

    static boolean eqNotNull(Number number, Number number2) {
        Class cls = number.getClass();
        boolean isInt = isInt(cls);
        Class cls2 = number2.getClass();
        boolean isInt2 = isInt(cls2);
        if (number instanceof BigDecimal) {
            BigDecimal bigDecimal = (BigDecimal) number;
            if (isInt2) {
                return bigDecimal.equals(BigDecimal.valueOf(number2.longValue()));
            }
        }
        boolean z = true;
        if (isInt) {
            if (isInt2) {
                if (number.longValue() != number2.longValue()) {
                    z = false;
                }
                return z;
            } else if (number2 instanceof BigInteger) {
                return BigInteger.valueOf(number.longValue()).equals((BigInteger) number);
            }
        }
        if (isInt2 && (number instanceof BigInteger)) {
            return ((BigInteger) number).equals(BigInteger.valueOf(number2.longValue()));
        }
        boolean isDouble = isDouble(cls);
        boolean isDouble2 = isDouble(cls2);
        if ((!isDouble || !isDouble2) && ((!isDouble || !isInt2) && (!isDouble2 || !isInt))) {
            return false;
        }
        if (number.doubleValue() != number2.doubleValue()) {
            z = false;
        }
        return z;
    }

    protected static boolean isDouble(Class<?> cls) {
        return cls == Float.class || cls == Double.class;
    }

    protected static boolean isInt(Class<?> cls) {
        return cls == Byte.class || cls == Short.class || cls == Integer.class || cls == Long.class;
    }

    /* access modifiers changed from: protected */
    public Object getPropertyValue(Object obj, String str, long j) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            Object obj2 = map.get(str);
            if (obj2 == null && SIZE == j) {
                obj2 = Integer.valueOf(map.size());
            }
            return obj2;
        }
        JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer != null) {
            try {
                return javaBeanSerializer.getFieldValue(obj, str, j, false);
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder();
                sb.append("jsonpath error, path ");
                sb.append(this.path);
                sb.append(", segement ");
                sb.append(str);
                throw new JSONPathException(sb.toString(), e);
            }
        } else if (obj instanceof List) {
            List list = (List) obj;
            if (SIZE == j) {
                return Integer.valueOf(list.size());
            }
            JSONArray jSONArray = new JSONArray(list.size());
            for (int i = 0; i < list.size(); i++) {
                Object propertyValue = getPropertyValue(list.get(i), str, j);
                if (propertyValue instanceof Collection) {
                    jSONArray.addAll((Collection) propertyValue);
                } else if (propertyValue != null) {
                    jSONArray.add(propertyValue);
                }
            }
            return jSONArray;
        } else {
            if (obj instanceof Enum) {
                Enum enumR = (Enum) obj;
                if (-4270347329889690746L == j) {
                    return enumR.name();
                }
                if (-1014497654951707614L == j) {
                    return Integer.valueOf(enumR.ordinal());
                }
            }
            if (obj instanceof Calendar) {
                Calendar calendar = (Calendar) obj;
                if (8963398325558730460L == j) {
                    return Integer.valueOf(calendar.get(1));
                }
                if (-811277319855450459L == j) {
                    return Integer.valueOf(calendar.get(2));
                }
                if (-3851359326990528739L == j) {
                    return Integer.valueOf(calendar.get(5));
                }
                if (4647432019745535567L == j) {
                    return Integer.valueOf(calendar.get(11));
                }
                if (6607618197526598121L == j) {
                    return Integer.valueOf(calendar.get(12));
                }
                if (-6586085717218287427L == j) {
                    return Integer.valueOf(calendar.get(13));
                }
            }
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void deepScan(Object obj, String str, List<Object> list) {
        String str2 = "getFieldValue error.";
        if (obj != null) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (map.containsKey(str)) {
                    list.add(map.get(str));
                    return;
                }
                for (Object deepScan : map.values()) {
                    deepScan(deepScan, str, list);
                }
                return;
            }
            JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
            if (javaBeanSerializer != null) {
                try {
                    FieldSerializer fieldSerializer = javaBeanSerializer.getFieldSerializer(str);
                    if (fieldSerializer != null) {
                        list.add(fieldSerializer.getPropertyValueDirect(obj));
                        return;
                    }
                    for (Object deepScan2 : javaBeanSerializer.getFieldValues(obj)) {
                        deepScan(deepScan2, str, list);
                    }
                } catch (InvocationTargetException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(str);
                    throw new JSONException(sb.toString(), e);
                } catch (IllegalAccessException e2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append(str);
                    throw new JSONException(sb2.toString(), e2);
                } catch (Exception e3) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("jsonpath error, path ");
                    sb3.append(this.path);
                    sb3.append(", segement ");
                    sb3.append(str);
                    throw new JSONPathException(sb3.toString(), e3);
                }
            } else {
                if (obj instanceof List) {
                    List list2 = (List) obj;
                    for (int i = 0; i < list2.size(); i++) {
                        deepScan(list2.get(i), str, list);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void deepSet(Object obj, String str, long j, Object obj2) {
        if (obj != null) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (map.containsKey(str)) {
                    map.get(str);
                    map.put(str, obj2);
                    return;
                }
                for (Object deepSet : map.values()) {
                    deepSet(deepSet, str, j, obj2);
                }
                return;
            }
            Class cls = obj.getClass();
            JavaBeanDeserializer javaBeanDeserializer = getJavaBeanDeserializer(cls);
            if (javaBeanDeserializer != null) {
                try {
                    FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
                    if (fieldDeserializer != null) {
                        fieldDeserializer.setValue(obj, obj2);
                        return;
                    }
                    for (Object deepSet2 : getJavaBeanSerializer(cls).getObjectFieldValues(obj)) {
                        deepSet(deepSet2, str, j, obj2);
                    }
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("jsonpath error, path ");
                    sb.append(this.path);
                    sb.append(", segement ");
                    sb.append(str);
                    throw new JSONPathException(sb.toString(), e);
                }
            } else {
                if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i = 0; i < list.size(); i++) {
                        deepSet(list.get(i), str, j, obj2);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean setPropertyValue(Object obj, String str, long j, Object obj2) {
        if (obj instanceof Map) {
            ((Map) obj).put(str, obj2);
            return true;
        } else if (obj instanceof List) {
            for (Object next : (List) obj) {
                if (next != null) {
                    setPropertyValue(next, str, j, obj2);
                }
            }
            return true;
        } else {
            ObjectDeserializer deserializer = this.parserConfig.getDeserializer((Type) obj.getClass());
            JavaBeanDeserializer javaBeanDeserializer = null;
            if (deserializer instanceof JavaBeanDeserializer) {
                javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
            }
            if (javaBeanDeserializer != null) {
                FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(j);
                if (fieldDeserializer == null) {
                    return false;
                }
                fieldDeserializer.setValue(obj, obj2);
                return true;
            }
            throw new UnsupportedOperationException();
        }
    }

    /* access modifiers changed from: protected */
    public boolean removePropertyValue(Object obj, String str) {
        boolean z = true;
        if (obj instanceof Map) {
            if (((Map) obj).remove(str) == null) {
                z = false;
            }
            return z;
        }
        ObjectDeserializer deserializer = this.parserConfig.getDeserializer((Type) obj.getClass());
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (javaBeanDeserializer != null) {
            FieldDeserializer fieldDeserializer = javaBeanDeserializer.getFieldDeserializer(str);
            if (fieldDeserializer == null) {
                return false;
            }
            fieldDeserializer.setValue(obj, (String) null);
            return true;
        }
        throw new UnsupportedOperationException();
    }

    /* access modifiers changed from: protected */
    public JavaBeanSerializer getJavaBeanSerializer(Class<?> cls) {
        ObjectSerializer objectWriter = this.serializeConfig.getObjectWriter(cls);
        if (objectWriter instanceof JavaBeanSerializer) {
            return (JavaBeanSerializer) objectWriter;
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public JavaBeanDeserializer getJavaBeanDeserializer(Class<?> cls) {
        ObjectDeserializer deserializer = this.parserConfig.getDeserializer((Type) cls);
        if (deserializer instanceof JavaBeanDeserializer) {
            return (JavaBeanDeserializer) deserializer;
        }
        return null;
    }

    /* access modifiers changed from: 0000 */
    public int evalSize(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size();
        }
        if (obj instanceof Object[]) {
            return ((Object[]) obj).length;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj);
        }
        if (obj instanceof Map) {
            int i = 0;
            for (Object obj2 : ((Map) obj).values()) {
                if (obj2 != null) {
                    i++;
                }
            }
            return i;
        }
        JavaBeanSerializer javaBeanSerializer = getJavaBeanSerializer(obj.getClass());
        if (javaBeanSerializer == null) {
            return -1;
        }
        try {
            return javaBeanSerializer.getSize(obj);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append("evalSize error : ");
            sb.append(this.path);
            throw new JSONPathException(sb.toString(), e);
        }
    }

    public String toJSONString() {
        return JSON.toJSONString(this.path);
    }
}
