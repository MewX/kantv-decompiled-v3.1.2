package com.tencent.imsdk.ext.group;

public class TIMGroupMemberResult {
    private long result;
    private String user;

    public long getResult() {
        return this.result;
    }

    /* access modifiers changed from: 0000 */
    public void setResult(long j) {
        this.result = j;
    }

    public String getUser() {
        return this.user;
    }

    /* access modifiers changed from: 0000 */
    public void setUser(String str) {
        this.user = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TIMGroupMemberResult::user=");
        sb.append(this.user);
        sb.append(",result=");
        sb.append(this.result);
        return sb.toString();
    }
}
