package org.fourthline.cling.support.model;

public enum SeekMode {
    TRACK_NR(r2),
    ABS_TIME(r3),
    REL_TIME(r4),
    ABS_COUNT(r5),
    REL_COUNT(r6),
    CHANNEL_FREQ(r7),
    TAPE_INDEX("TAPE-INDEX"),
    FRAME(r9);
    
    private String protocolString;

    private SeekMode(String str) {
        this.protocolString = str;
    }

    public String toString() {
        return this.protocolString;
    }

    public static SeekMode valueOrExceptionOf(String str) throws IllegalArgumentException {
        SeekMode[] values;
        for (SeekMode seekMode : values()) {
            if (seekMode.protocolString.equals(str)) {
                return seekMode;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Invalid seek mode string: ");
        sb.append(str);
        throw new IllegalArgumentException(sb.toString());
    }
}
