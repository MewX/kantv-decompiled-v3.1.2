package org.fourthline.cling.support.model.dlna.message.header;

import org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType;

public class AvailableSeekRangeHeader extends DLNAHeader<AvailableSeekRangeType> {
    public AvailableSeekRangeHeader() {
    }

    public AvailableSeekRangeHeader(AvailableSeekRangeType availableSeekRangeType) {
        setValue(availableSeekRangeType);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:9|10|11) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0038, code lost:
        r4 = null;
        r5 = org.fourthline.cling.model.types.BytesRange.valueOf(r0[1]);
        r3 = false;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x0032 */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setString(java.lang.String r8) throws org.fourthline.cling.model.message.header.InvalidHeaderException {
        /*
            r7 = this;
            int r0 = r8.length()
            java.lang.String r1 = "Invalid AvailableSeekRange header value: "
            if (r0 == 0) goto L_0x0095
            java.lang.String r0 = " "
            java.lang.String[] r0 = r8.split(r0)
            int r2 = r0.length
            r3 = 1
            if (r2 <= r3) goto L_0x0095
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ IllegalArgumentException -> 0x006c }
            r2.<init>()     // Catch:{ IllegalArgumentException -> 0x006c }
            java.lang.String r4 = "MODE_"
            r2.append(r4)     // Catch:{ IllegalArgumentException -> 0x006c }
            r4 = 0
            r5 = r0[r4]     // Catch:{ IllegalArgumentException -> 0x006c }
            r2.append(r5)     // Catch:{ IllegalArgumentException -> 0x006c }
            java.lang.String r2 = r2.toString()     // Catch:{ IllegalArgumentException -> 0x006c }
            org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType$Mode r2 = org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType.Mode.valueOf(r2)     // Catch:{ IllegalArgumentException -> 0x006c }
            r5 = 0
            r6 = r0[r3]     // Catch:{ InvalidValueException -> 0x0032 }
            org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange r4 = org.fourthline.cling.support.model.dlna.types.NormalPlayTimeRange.valueOf(r6, r3)     // Catch:{ InvalidValueException -> 0x0032 }
            goto L_0x003b
        L_0x0032:
            r3 = r0[r3]     // Catch:{ InvalidValueException -> 0x0062 }
            org.fourthline.cling.model.types.BytesRange r3 = org.fourthline.cling.model.types.BytesRange.valueOf(r3)     // Catch:{ InvalidValueException -> 0x0062 }
            r4 = r5
            r5 = r3
            r3 = 0
        L_0x003b:
            if (r3 == 0) goto L_0x0059
            int r3 = r0.length     // Catch:{ InvalidValueException -> 0x006a }
            r5 = 2
            if (r3 <= r5) goto L_0x0050
            r0 = r0[r5]     // Catch:{ InvalidValueException -> 0x006a }
            org.fourthline.cling.model.types.BytesRange r0 = org.fourthline.cling.model.types.BytesRange.valueOf(r0)     // Catch:{ InvalidValueException -> 0x006a }
            org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType r3 = new org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType     // Catch:{ InvalidValueException -> 0x006a }
            r3.<init>(r2, r4, r0)     // Catch:{ InvalidValueException -> 0x006a }
            r7.setValue(r3)     // Catch:{ InvalidValueException -> 0x006a }
            goto L_0x0061
        L_0x0050:
            org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType r0 = new org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType     // Catch:{ InvalidValueException -> 0x006a }
            r0.<init>(r2, r4)     // Catch:{ InvalidValueException -> 0x006a }
            r7.setValue(r0)     // Catch:{ InvalidValueException -> 0x006a }
            goto L_0x0061
        L_0x0059:
            org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType r0 = new org.fourthline.cling.support.model.dlna.types.AvailableSeekRangeType     // Catch:{ InvalidValueException -> 0x006a }
            r0.<init>(r2, r5)     // Catch:{ InvalidValueException -> 0x006a }
            r7.setValue(r0)     // Catch:{ InvalidValueException -> 0x006a }
        L_0x0061:
            return
        L_0x0062:
            org.fourthline.cling.model.types.InvalidValueException r0 = new org.fourthline.cling.model.types.InvalidValueException     // Catch:{ InvalidValueException -> 0x006a }
            java.lang.String r2 = "Invalid AvailableSeekRange Range"
            r0.<init>(r2)     // Catch:{ InvalidValueException -> 0x006a }
            throw r0     // Catch:{ InvalidValueException -> 0x006a }
        L_0x006a:
            r0 = move-exception
            goto L_0x0074
        L_0x006c:
            org.fourthline.cling.model.types.InvalidValueException r0 = new org.fourthline.cling.model.types.InvalidValueException     // Catch:{ InvalidValueException -> 0x006a }
            java.lang.String r2 = "Invalid AvailableSeekRange Mode"
            r0.<init>(r2)     // Catch:{ InvalidValueException -> 0x006a }
            throw r0     // Catch:{ InvalidValueException -> 0x006a }
        L_0x0074:
            org.fourthline.cling.model.message.header.InvalidHeaderException r2 = new org.fourthline.cling.model.message.header.InvalidHeaderException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r1)
            r3.append(r8)
            java.lang.String r8 = "; "
            r3.append(r8)
            java.lang.String r8 = r0.getMessage()
            r3.append(r8)
            java.lang.String r8 = r3.toString()
            r2.<init>(r8)
            throw r2
        L_0x0095:
            org.fourthline.cling.model.message.header.InvalidHeaderException r0 = new org.fourthline.cling.model.message.header.InvalidHeaderException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            r2.append(r8)
            java.lang.String r8 = r2.toString()
            r0.<init>(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.support.model.dlna.message.header.AvailableSeekRangeHeader.setString(java.lang.String):void");
    }

    public String getString() {
        AvailableSeekRangeType availableSeekRangeType = (AvailableSeekRangeType) getValue();
        String num = Integer.toString(availableSeekRangeType.getModeFlag().ordinal());
        String str = " ";
        if (availableSeekRangeType.getNormalPlayTimeRange() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(num);
            sb.append(str);
            sb.append(availableSeekRangeType.getNormalPlayTimeRange().getString(false));
            num = sb.toString();
        }
        if (availableSeekRangeType.getBytesRange() == null) {
            return num;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(num);
        sb2.append(str);
        sb2.append(availableSeekRangeType.getBytesRange().getString(false));
        return sb2.toString();
    }
}
