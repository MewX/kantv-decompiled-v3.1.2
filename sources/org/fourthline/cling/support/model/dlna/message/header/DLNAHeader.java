package org.fourthline.cling.support.model.dlna.message.header;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.header.UpnpHeader;

public abstract class DLNAHeader<T> extends UpnpHeader<T> {
    private static final Logger log = Logger.getLogger(DLNAHeader.class.getName());

    public enum Type {
        TimeSeekRange("TimeSeekRange.dlna.org", TimeSeekRangeHeader.class),
        XSeekRange("X-Seek-Range", TimeSeekRangeHeader.class),
        PlaySpeed("PlaySpeed.dlna.org", PlaySpeedHeader.class),
        AvailableSeekRange("availableSeekRange.dlna.org", AvailableSeekRangeHeader.class),
        GetAvailableSeekRange("getAvailableSeekRange.dlna.org", GetAvailableSeekRangeHeader.class),
        GetContentFeatures("getcontentFeatures.dlna.org", GetContentFeaturesHeader.class),
        ContentFeatures("contentFeatures.dlna.org", ContentFeaturesHeader.class),
        TransferMode("transferMode.dlna.org", TransferModeHeader.class),
        FriendlyName("friendlyName.dlna.org", FriendlyNameHeader.class),
        PeerManager("peerManager.dlna.org", PeerManagerHeader.class),
        AvailableRange("Available-Range.dlna.org", AvailableRangeHeader.class),
        SCID("scid.dlna.org", SCIDHeader.class),
        RealTimeInfo("realTimeInfo.dlna.org", RealTimeInfoHeader.class),
        ScmsFlag("scmsFlag.dlna.org", ScmsFlagHeader.class),
        WCT("WCT.dlna.org", WCTHeader.class),
        MaxPrate("Max-Prate.dlna.org", MaxPrateHeader.class),
        EventType("Event-Type.dlna.org", EventTypeHeader.class),
        Supported("Supported", SupportedHeader.class),
        BufferInfo("Buffer-Info.dlna.org", BufferInfoHeader.class),
        RTPH264DeInterleaving("rtp-h264-deint-buf-cap.dlna.org", BufferBytesHeader.class),
        RTPAACDeInterleaving("rtp-aac-deint-buf-cap.dlna.org", BufferBytesHeader.class),
        RTPAMRDeInterleaving("rtp-amr-deint-buf-cap.dlna.org", BufferBytesHeader.class),
        RTPAMRWBPlusDeInterleaving("rtp-amrwbplus-deint-buf-cap.dlna.org", BufferBytesHeader.class),
        PRAGMA("PRAGMA", PragmaHeader.class);
        
        private static Map<String, Type> byName;
        private Class<? extends DLNAHeader>[] headerTypes;
        private String httpName;

        static {
            byName = new HashMap<String, Type>() {
                {
                    Type[] values;
                    for (Type type : Type.values()) {
                        put(type.getHttpName(), type);
                    }
                }
            };
        }

        @SafeVarargs
        private Type(String str, Class<? extends DLNAHeader>... clsArr) {
            this.httpName = str;
            this.headerTypes = clsArr;
        }

        public String getHttpName() {
            return this.httpName;
        }

        public Class<? extends DLNAHeader>[] getHeaderTypes() {
            return this.headerTypes;
        }

        public boolean isValidHeaderType(Class<? extends DLNAHeader> cls) {
            for (Class isAssignableFrom : getHeaderTypes()) {
                if (isAssignableFrom.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }

        public static Type getByHttpName(String str) {
            if (str == null) {
                return null;
            }
            return (Type) byName.get(str);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0040, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0041, code lost:
        r3 = r2;
        r2 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0073, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0074, code lost:
        r4 = log;
        r5 = new java.lang.StringBuilder();
        r5.append("Invalid header value for tested type: ");
        r5.append(r3.getSimpleName());
        r5.append(" - ");
        r5.append(r2.getMessage());
        r4.finest(r5.toString());
        r2 = null;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0073 A[ExcHandler: InvalidHeaderException (r2v3 'e' org.fourthline.cling.model.message.header.InvalidHeaderException A[CUSTOM_DECLARE]), Splitter:B:5:0x0012] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.fourthline.cling.support.model.dlna.message.header.DLNAHeader newInstance(org.fourthline.cling.support.model.dlna.message.header.DLNAHeader.Type r7, java.lang.String r8) {
        /*
            r0 = 0
            r1 = 0
            r2 = r0
        L_0x0003:
            java.lang.Class[] r3 = r7.getHeaderTypes()
            int r3 = r3.length
            if (r1 >= r3) goto L_0x009f
            if (r2 != 0) goto L_0x009f
            java.lang.Class[] r3 = r7.getHeaderTypes()
            r3 = r3[r1]
            java.util.logging.Logger r4 = log     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            r5.<init>()     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r6 = "Trying to parse '"
            r5.append(r6)     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            r5.append(r7)     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r6 = "' with class: "
            r5.append(r6)     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r6 = r3.getSimpleName()     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            r5.append(r6)     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            java.lang.String r5 = r5.toString()     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            r4.finest(r5)     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            java.lang.Object r4 = r3.newInstance()     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            org.fourthline.cling.support.model.dlna.message.header.DLNAHeader r4 = (org.fourthline.cling.support.model.dlna.message.header.DLNAHeader) r4     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0046 }
            if (r8 == 0) goto L_0x0044
            r4.setString(r8)     // Catch:{ InvalidHeaderException -> 0x0073, Exception -> 0x0040 }
            goto L_0x0044
        L_0x0040:
            r2 = move-exception
            r3 = r2
            r2 = r4
            goto L_0x0047
        L_0x0044:
            r2 = r4
            goto L_0x009b
        L_0x0046:
            r3 = move-exception
        L_0x0047:
            java.util.logging.Logger r4 = log
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Error instantiating header of type '"
            r5.append(r6)
            r5.append(r7)
            java.lang.String r6 = "' with value: "
            r5.append(r6)
            r5.append(r8)
            java.lang.String r5 = r5.toString()
            r4.severe(r5)
            java.util.logging.Logger r4 = log
            java.util.logging.Level r5 = java.util.logging.Level.SEVERE
            java.lang.Throwable r3 = org.seamless.util.Exceptions.unwrap(r3)
            java.lang.String r6 = "Exception root cause: "
            r4.log(r5, r6, r3)
            goto L_0x009b
        L_0x0073:
            r2 = move-exception
            java.util.logging.Logger r4 = log
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Invalid header value for tested type: "
            r5.append(r6)
            java.lang.String r3 = r3.getSimpleName()
            r5.append(r3)
            java.lang.String r3 = " - "
            r5.append(r3)
            java.lang.String r2 = r2.getMessage()
            r5.append(r2)
            java.lang.String r2 = r5.toString()
            r4.finest(r2)
            r2 = r0
        L_0x009b:
            int r1 = r1 + 1
            goto L_0x0003
        L_0x009f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.support.model.dlna.message.header.DLNAHeader.newInstance(org.fourthline.cling.support.model.dlna.message.header.DLNAHeader$Type, java.lang.String):org.fourthline.cling.support.model.dlna.message.header.DLNAHeader");
    }
}
