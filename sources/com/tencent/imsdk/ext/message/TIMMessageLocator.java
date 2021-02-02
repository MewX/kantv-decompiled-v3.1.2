package com.tencent.imsdk.ext.message;

import com.tencent.imsdk.TIMConversationType;

public class TIMMessageLocator {
    private boolean isRevokedMsg = false;
    private boolean isSelf = true;
    private long rand = 0;
    private long seq = 0;
    private String sid;
    private TIMConversationType stype = TIMConversationType.Invalid;
    private long timestamp = 0;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ConverSationType: ");
        sb.append(this.stype);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append(", ConversationID: ");
        sb3.append(this.sid);
        String sb4 = sb3.toString();
        StringBuilder sb5 = new StringBuilder();
        sb5.append(sb4);
        sb5.append(", seq: ");
        sb5.append(this.seq);
        sb5.append(", rand: ");
        sb5.append(this.rand);
        sb5.append(", isSelf: ");
        sb5.append(this.isSelf);
        sb5.append(", isRevokedMsg: ");
        sb5.append(this.isRevokedMsg);
        return sb5.toString();
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public TIMMessageLocator setTimestamp(long j) {
        this.timestamp = j;
        return this;
    }

    public long getSeq() {
        return this.seq;
    }

    public TIMMessageLocator setSeq(long j) {
        this.seq = j;
        return this;
    }

    public long getRand() {
        return this.rand;
    }

    public TIMMessageLocator setRand(long j) {
        this.rand = j;
        return this;
    }

    public boolean isSelf() {
        return this.isSelf;
    }

    public TIMMessageLocator setSelf(boolean z) {
        this.isSelf = z;
        return this;
    }

    public boolean isRevokedMsg() {
        return this.isRevokedMsg;
    }

    public TIMConversationType getConversationType() {
        return this.stype;
    }

    public int getTypeValue() {
        return this.stype.value();
    }

    public String getConversationId() {
        return this.sid;
    }

    /* access modifiers changed from: protected */
    public String getSid() {
        return this.sid;
    }

    /* access modifiers changed from: 0000 */
    public void setType(int i) {
        TIMConversationType[] values;
        for (TIMConversationType tIMConversationType : TIMConversationType.values()) {
            if (tIMConversationType.value() == i) {
                this.stype = tIMConversationType;
            }
        }
    }
}
