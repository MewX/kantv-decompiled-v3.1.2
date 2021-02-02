package com.tencent.imsdk.ext.group;

import com.tencent.imsdk.TIMGroupMemberInfo;
import java.util.List;

public class TIMGroupMemberSucc {
    private List<TIMGroupMemberInfo> memberInfoList;
    private long nextSeq;

    public long getNextSeq() {
        return this.nextSeq;
    }

    /* access modifiers changed from: 0000 */
    public void setNextSeq(long j) {
        this.nextSeq = j;
    }

    public List<TIMGroupMemberInfo> getMemberInfoList() {
        return this.memberInfoList;
    }

    /* access modifiers changed from: 0000 */
    public void setMemberInfoList(List<TIMGroupMemberInfo> list) {
        this.memberInfoList = list;
    }
}
