package org.fourthline.cling.support.model.dlna.types;

import org.fourthline.cling.model.types.BytesRange;

public class TimeSeekRangeType {
    private BytesRange bytesRange;
    private NormalPlayTimeRange normalPlayTimeRange;

    public TimeSeekRangeType(NormalPlayTimeRange normalPlayTimeRange2) {
        this.normalPlayTimeRange = normalPlayTimeRange2;
    }

    public TimeSeekRangeType(NormalPlayTimeRange normalPlayTimeRange2, BytesRange bytesRange2) {
        this.normalPlayTimeRange = normalPlayTimeRange2;
        this.bytesRange = bytesRange2;
    }

    public NormalPlayTimeRange getNormalPlayTimeRange() {
        return this.normalPlayTimeRange;
    }

    public BytesRange getBytesRange() {
        return this.bytesRange;
    }

    public void setBytesRange(BytesRange bytesRange2) {
        this.bytesRange = bytesRange2;
    }
}
