package com.samsung.multiscreen.ble.adparser;

public class AdParser {
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0054, code lost:
        r5 = new com.samsung.multiscreen.ble.adparser.Type128BitUUIDs(r6, r7, r3, r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0060, code lost:
        r5 = new com.samsung.multiscreen.ble.adparser.Type16BitUUIDs(r6, r7, r3, r4);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.ArrayList<com.samsung.multiscreen.ble.adparser.AdElement> parseAdData(byte[] r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            int r1 = r7.length
            r2 = 0
        L_0x0007:
            int r3 = r2 + 1
            if (r3 >= r1) goto L_0x0077
            byte r4 = r7[r2]
            r5 = 255(0xff, float:3.57E-43)
            r4 = r4 & r5
            if (r4 != 0) goto L_0x0014
            goto L_0x0077
        L_0x0014:
            int r2 = r2 + r4
            if (r2 <= r1) goto L_0x0018
            goto L_0x0077
        L_0x0018:
            byte r6 = r7[r3]
            r6 = r6 & r5
            int r3 = r3 + 1
            int r4 = r4 + -1
            if (r6 == r5) goto L_0x006c
            switch(r6) {
                case 1: goto L_0x0066;
                case 2: goto L_0x0060;
                case 3: goto L_0x0060;
                case 4: goto L_0x005a;
                case 5: goto L_0x005a;
                case 6: goto L_0x0054;
                case 7: goto L_0x0054;
                case 8: goto L_0x004e;
                case 9: goto L_0x004e;
                case 10: goto L_0x0048;
                default: goto L_0x0024;
            }
        L_0x0024:
            switch(r6) {
                case 13: goto L_0x0042;
                case 14: goto L_0x0042;
                case 15: goto L_0x0042;
                case 16: goto L_0x0042;
                case 17: goto L_0x003c;
                case 18: goto L_0x0036;
                default: goto L_0x0027;
            }
        L_0x0027:
            switch(r6) {
                case 20: goto L_0x0060;
                case 21: goto L_0x0054;
                case 22: goto L_0x0030;
                default: goto L_0x002a;
            }
        L_0x002a:
            com.samsung.multiscreen.ble.adparser.TypeUnknown r5 = new com.samsung.multiscreen.ble.adparser.TypeUnknown
            r5.<init>(r6, r7, r3, r4)
            goto L_0x0071
        L_0x0030:
            com.samsung.multiscreen.ble.adparser.TypeServiceData r5 = new com.samsung.multiscreen.ble.adparser.TypeServiceData
            r5.<init>(r7, r3, r4)
            goto L_0x0071
        L_0x0036:
            com.samsung.multiscreen.ble.adparser.TypeSlaveConnectionIntervalRange r5 = new com.samsung.multiscreen.ble.adparser.TypeSlaveConnectionIntervalRange
            r5.<init>(r7, r3, r4)
            goto L_0x0071
        L_0x003c:
            com.samsung.multiscreen.ble.adparser.TypeSecOOBFlags r5 = new com.samsung.multiscreen.ble.adparser.TypeSecOOBFlags
            r5.<init>(r7, r3)
            goto L_0x0071
        L_0x0042:
            com.samsung.multiscreen.ble.adparser.TypeByteDump r5 = new com.samsung.multiscreen.ble.adparser.TypeByteDump
            r5.<init>(r6, r7, r3, r4)
            goto L_0x0071
        L_0x0048:
            com.samsung.multiscreen.ble.adparser.TypeTXPowerLevel r5 = new com.samsung.multiscreen.ble.adparser.TypeTXPowerLevel
            r5.<init>(r7, r3)
            goto L_0x0071
        L_0x004e:
            com.samsung.multiscreen.ble.adparser.TypeString r5 = new com.samsung.multiscreen.ble.adparser.TypeString
            r5.<init>(r6, r7, r3, r4)
            goto L_0x0071
        L_0x0054:
            com.samsung.multiscreen.ble.adparser.Type128BitUUIDs r5 = new com.samsung.multiscreen.ble.adparser.Type128BitUUIDs
            r5.<init>(r6, r7, r3, r4)
            goto L_0x0071
        L_0x005a:
            com.samsung.multiscreen.ble.adparser.Type32BitUUIDs r5 = new com.samsung.multiscreen.ble.adparser.Type32BitUUIDs
            r5.<init>(r6, r7, r3, r4)
            goto L_0x0071
        L_0x0060:
            com.samsung.multiscreen.ble.adparser.Type16BitUUIDs r5 = new com.samsung.multiscreen.ble.adparser.Type16BitUUIDs
            r5.<init>(r6, r7, r3, r4)
            goto L_0x0071
        L_0x0066:
            com.samsung.multiscreen.ble.adparser.TypeFlags r5 = new com.samsung.multiscreen.ble.adparser.TypeFlags
            r5.<init>(r7, r3)
            goto L_0x0071
        L_0x006c:
            com.samsung.multiscreen.ble.adparser.TypeManufacturerData r5 = new com.samsung.multiscreen.ble.adparser.TypeManufacturerData
            r5.<init>(r7, r3, r4)
        L_0x0071:
            r0.add(r5)
            int r2 = r2 + 1
            goto L_0x0007
        L_0x0077:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.multiscreen.ble.adparser.AdParser.parseAdData(byte[]):java.util.ArrayList");
    }
}
