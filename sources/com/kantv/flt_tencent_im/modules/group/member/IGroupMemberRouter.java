package com.kantv.flt_tencent_im.modules.group.member;

import com.kantv.flt_tencent_im.modules.group.info.GroupInfo;

public interface IGroupMemberRouter {
    void forwardAddMember(GroupInfo groupInfo);

    void forwardDeleteMember(GroupInfo groupInfo);

    void forwardListMember(GroupInfo groupInfo);
}
