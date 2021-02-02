package com.kantv.flt_tencent_im.modules.group.interfaces;

import com.kantv.flt_tencent_im.base.ILayout;
import com.kantv.flt_tencent_im.modules.group.info.GroupInfo;

public interface IGroupMemberLayout extends ILayout {
    void setDataSource(GroupInfo groupInfo);
}
