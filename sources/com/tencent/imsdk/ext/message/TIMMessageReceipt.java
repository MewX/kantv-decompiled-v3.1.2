package com.tencent.imsdk.ext.message;

import com.tencent.imsdk.TIMConversation;

public class TIMMessageReceipt {
    private TIMConversation conversation;
    private long timestamp = 0;

    TIMMessageReceipt(TIMConversation tIMConversation, long j) {
        this.conversation = tIMConversation;
        this.timestamp = j;
    }

    public TIMConversation getConversation() {
        return this.conversation;
    }

    /* access modifiers changed from: 0000 */
    public void setConversation(TIMConversation tIMConversation) {
        this.conversation = tIMConversation;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    /* access modifiers changed from: 0000 */
    public void setTimestamp(long j) {
        this.timestamp = j;
    }
}
