package com.kantv.flt_tencent_im.modules.group.apply;

import com.tencent.imsdk.ext.group.TIMGroupPendencyItem;
import java.io.Serializable;

public class GroupApplyInfo implements Serializable {
    public static final int APPLIED = 1;
    public static final int REFUSED = -1;
    public static final int UNHANDLED = 0;
    private TIMGroupPendencyItem pendencyItem;
    private int status;

    public GroupApplyInfo(TIMGroupPendencyItem tIMGroupPendencyItem) {
        this.pendencyItem = tIMGroupPendencyItem;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public TIMGroupPendencyItem getPendencyItem() {
        return this.pendencyItem;
    }
}
