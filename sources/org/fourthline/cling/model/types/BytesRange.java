package org.fourthline.cling.model.types;

public class BytesRange {
    public static final String PREFIX = "bytes=";
    private Long byteLength;
    private Long firstByte;
    private Long lastByte;

    public BytesRange(Long l, Long l2) {
        this.firstByte = l;
        this.lastByte = l2;
        this.byteLength = null;
    }

    public BytesRange(Long l, Long l2, Long l3) {
        this.firstByte = l;
        this.lastByte = l2;
        this.byteLength = l3;
    }

    public Long getFirstByte() {
        return this.firstByte;
    }

    public Long getLastByte() {
        return this.lastByte;
    }

    public Long getByteLength() {
        return this.byteLength;
    }

    public String getString() {
        return getString(false, null);
    }

    public String getString(boolean z) {
        return getString(z, null);
    }

    public String getString(boolean z, String str) {
        if (str == null) {
            str = PREFIX;
        }
        if (this.firstByte != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(this.firstByte.toString());
            str = sb.toString();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("-");
        String sb3 = sb2.toString();
        if (this.lastByte != null) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb3);
            sb4.append(this.lastByte.toString());
            sb3 = sb4.toString();
        }
        if (!z) {
            return sb3;
        }
        StringBuilder sb5 = new StringBuilder();
        sb5.append(sb3);
        sb5.append("/");
        Long l = this.byteLength;
        sb5.append(l != null ? l.toString() : "*");
        return sb5.toString();
    }

    public static BytesRange valueOf(String str) throws InvalidValueException {
        return valueOf(str, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0050  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x005b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.fourthline.cling.model.types.BytesRange valueOf(java.lang.String r5, java.lang.String r6) throws org.fourthline.cling.model.types.InvalidValueException {
        /*
            java.lang.String r0 = "bytes="
            if (r6 == 0) goto L_0x0006
            r1 = r6
            goto L_0x0007
        L_0x0006:
            r1 = r0
        L_0x0007:
            boolean r1 = r5.startsWith(r1)
            if (r1 == 0) goto L_0x007c
            if (r6 == 0) goto L_0x0010
            goto L_0x0011
        L_0x0010:
            r6 = r0
        L_0x0011:
            int r6 = r6.length()
            java.lang.String r6 = r5.substring(r6)
            java.lang.String r0 = "[-/]"
            java.lang.String[] r6 = r6.split(r0)
            int r0 = r6.length
            r1 = 1
            r2 = 0
            if (r0 == r1) goto L_0x005d
            r3 = 2
            if (r0 == r3) goto L_0x0047
            r4 = 3
            if (r0 != r4) goto L_0x007c
            r0 = r6[r3]
            int r0 = r0.length()
            if (r0 == 0) goto L_0x0047
            r0 = r6[r3]
            java.lang.String r4 = "*"
            boolean r0 = r0.equals(r4)
            if (r0 != 0) goto L_0x0047
            r0 = r6[r3]
            long r3 = java.lang.Long.parseLong(r0)
            java.lang.Long r0 = java.lang.Long.valueOf(r3)
            goto L_0x0048
        L_0x0047:
            r0 = r2
        L_0x0048:
            r3 = r6[r1]
            int r3 = r3.length()
            if (r3 == 0) goto L_0x005b
            r1 = r6[r1]
            long r3 = java.lang.Long.parseLong(r1)
            java.lang.Long r1 = java.lang.Long.valueOf(r3)
            goto L_0x005f
        L_0x005b:
            r1 = r2
            goto L_0x005f
        L_0x005d:
            r0 = r2
            r1 = r0
        L_0x005f:
            r3 = 0
            r4 = r6[r3]
            int r4 = r4.length()
            if (r4 == 0) goto L_0x0072
            r6 = r6[r3]
            long r2 = java.lang.Long.parseLong(r6)
            java.lang.Long r2 = java.lang.Long.valueOf(r2)
        L_0x0072:
            if (r2 != 0) goto L_0x0076
            if (r1 == 0) goto L_0x007c
        L_0x0076:
            org.fourthline.cling.model.types.BytesRange r5 = new org.fourthline.cling.model.types.BytesRange
            r5.<init>(r2, r1, r0)
            return r5
        L_0x007c:
            org.fourthline.cling.model.types.InvalidValueException r6 = new org.fourthline.cling.model.types.InvalidValueException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Can't parse Bytes Range: "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r6.<init>(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.model.types.BytesRange.valueOf(java.lang.String, java.lang.String):org.fourthline.cling.model.types.BytesRange");
    }
}
