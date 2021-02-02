package org.fourthline.cling.support.model.dlna.types;

import org.fourthline.cling.model.types.InvalidValueException;

public class NormalPlayTimeRange {
    public static final String PREFIX = "npt=";
    private NormalPlayTime timeDuration;
    private NormalPlayTime timeEnd;
    private NormalPlayTime timeStart;

    public NormalPlayTimeRange(long j, long j2) {
        this.timeStart = new NormalPlayTime(j);
        this.timeEnd = new NormalPlayTime(j2);
    }

    public NormalPlayTimeRange(NormalPlayTime normalPlayTime, NormalPlayTime normalPlayTime2) {
        this.timeStart = normalPlayTime;
        this.timeEnd = normalPlayTime2;
    }

    public NormalPlayTimeRange(NormalPlayTime normalPlayTime, NormalPlayTime normalPlayTime2, NormalPlayTime normalPlayTime3) {
        this.timeStart = normalPlayTime;
        this.timeEnd = normalPlayTime2;
        this.timeDuration = normalPlayTime3;
    }

    public NormalPlayTime getTimeStart() {
        return this.timeStart;
    }

    public NormalPlayTime getTimeEnd() {
        return this.timeEnd;
    }

    public NormalPlayTime getTimeDuration() {
        return this.timeDuration;
    }

    public String getString() {
        return getString(true);
    }

    public String getString(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(PREFIX);
        sb.append(this.timeStart.getString());
        sb.append("-");
        String sb2 = sb.toString();
        if (this.timeEnd != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append(this.timeEnd.getString());
            sb2 = sb3.toString();
        }
        if (!z) {
            return sb2;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(sb2);
        sb4.append("/");
        NormalPlayTime normalPlayTime = this.timeDuration;
        sb4.append(normalPlayTime != null ? normalPlayTime.getString() : "*");
        return sb4.toString();
    }

    public static NormalPlayTimeRange valueOf(String str) throws InvalidValueException {
        return valueOf(str, false);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0040  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange valueOf(java.lang.String r6, boolean r7) throws org.fourthline.cling.model.types.InvalidValueException {
        /*
            java.lang.String r0 = "npt="
            boolean r0 = r6.startsWith(r0)
            if (r0 == 0) goto L_0x0064
            r0 = 4
            java.lang.String r0 = r6.substring(r0)
            java.lang.String r1 = "[-/]"
            java.lang.String[] r0 = r0.split(r1)
            int r1 = r0.length
            r2 = 0
            r3 = 1
            if (r1 == r3) goto L_0x0047
            r4 = 2
            if (r1 == r4) goto L_0x0037
            r5 = 3
            if (r1 != r5) goto L_0x0064
            r1 = r0[r4]
            int r1 = r1.length()
            if (r1 == 0) goto L_0x0037
            r1 = r0[r4]
            java.lang.String r5 = "*"
            boolean r1 = r1.equals(r5)
            if (r1 != 0) goto L_0x0037
            r1 = r0[r4]
            org.fourthline.cling.support.model.dlna.types.NormalPlayTime r1 = org.fourthline.cling.support.model.dlna.types.NormalPlayTime.valueOf(r1)
            goto L_0x0038
        L_0x0037:
            r1 = r2
        L_0x0038:
            r4 = r0[r3]
            int r4 = r4.length()
            if (r4 == 0) goto L_0x0048
            r2 = r0[r3]
            org.fourthline.cling.support.model.dlna.types.NormalPlayTime r2 = org.fourthline.cling.support.model.dlna.types.NormalPlayTime.valueOf(r2)
            goto L_0x0048
        L_0x0047:
            r1 = r2
        L_0x0048:
            r4 = 0
            r5 = r0[r4]
            int r5 = r5.length()
            if (r5 == 0) goto L_0x0064
            if (r7 == 0) goto L_0x0058
            if (r7 == 0) goto L_0x0064
            int r7 = r0.length
            if (r7 <= r3) goto L_0x0064
        L_0x0058:
            r6 = r0[r4]
            org.fourthline.cling.support.model.dlna.types.NormalPlayTime r6 = org.fourthline.cling.support.model.dlna.types.NormalPlayTime.valueOf(r6)
            org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange r7 = new org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange
            r7.<init>(r6, r2, r1)
            return r7
        L_0x0064:
            org.fourthline.cling.model.types.InvalidValueException r7 = new org.fourthline.cling.model.types.InvalidValueException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Can't parse NormalPlayTimeRange: "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange.valueOf(java.lang.String, boolean):org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange");
    }
}
