package org.fourthline.cling.support.model.dlna.types;

import org.fourthline.cling.model.types.BytesRange;

public class AvailableSeekRangeType {
    private BytesRange bytesRange;
    private Mode modeFlag;
    private NormalPlayTimeRange normalPlayTimeRange;

    public enum Mode {
        MODE_0,
        MODE_1
    }

    public AvailableSeekRangeType(Mode mode, NormalPlayTimeRange normalPlayTimeRange2) {
        this.modeFlag = mode;
        this.normalPlayTimeRange = normalPlayTimeRange2;
    }

    public AvailableSeekRangeType(Mode mode, BytesRange bytesRange2) {
        this.modeFlag = mode;
        this.bytesRange = bytesRange2;
    }

    public AvailableSeekRangeType(Mode mode, NormalPlayTimeRange normalPlayTimeRange2, BytesRange bytesRange2) {
        this.modeFlag = mode;
        this.normalPlayTimeRange = normalPlayTimeRange2;
        this.bytesRange = bytesRange2;
    }

    public NormalPlayTimeRange getNormalPlayTimeRange() {
        return this.normalPlayTimeRange;
    }

    public BytesRange getBytesRange() {
        return this.bytesRange;
    }

    public Mode getModeFlag() {
        return this.modeFlag;
    }
}
