package com.tencent.imsdk.ext.group;

public class TIMGroupPendencyMeta {
    private long nextStartTimestamp;
    private long reportedTimestamp;
    private long unReadCount;

    public long getNextStartTimestamp() {
        return this.nextStartTimestamp;
    }

    /* access modifiers changed from: 0000 */
    public void setNextStartTimestamp(long j) {
        this.nextStartTimestamp = j;
    }

    public long getReportedTimestamp() {
        return this.reportedTimestamp;
    }

    /* access modifiers changed from: 0000 */
    public void setReportedTimestamp(long j) {
        this.reportedTimestamp = j;
    }

    public long getUnReadCount() {
        return this.unReadCount;
    }

    /* access modifiers changed from: 0000 */
    public void setUnReadCount(long j) {
        this.unReadCount = j;
    }
}
