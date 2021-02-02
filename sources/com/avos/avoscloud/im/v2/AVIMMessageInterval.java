package com.avos.avoscloud.im.v2;

public class AVIMMessageInterval {
    public AVIMMessageIntervalBound endIntervalBound;
    public AVIMMessageIntervalBound startIntervalBound;

    public static class AVIMMessageIntervalBound {
        public boolean closed;
        public String messageId;
        public long timestamp;

        private AVIMMessageIntervalBound(String str, long j, boolean z) {
            this.messageId = str;
            this.timestamp = j;
            this.closed = z;
        }
    }

    public static AVIMMessageIntervalBound createBound(String str, long j, boolean z) {
        AVIMMessageIntervalBound aVIMMessageIntervalBound = new AVIMMessageIntervalBound(str, j, z);
        return aVIMMessageIntervalBound;
    }

    public AVIMMessageInterval(AVIMMessageIntervalBound aVIMMessageIntervalBound, AVIMMessageIntervalBound aVIMMessageIntervalBound2) {
        this.startIntervalBound = aVIMMessageIntervalBound;
        this.endIntervalBound = aVIMMessageIntervalBound2;
    }
}
