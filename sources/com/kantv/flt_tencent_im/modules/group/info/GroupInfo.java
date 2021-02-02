package com.kantv.flt_tencent_im.modules.group.info;

import com.kantv.flt_tencent_im.modules.chat.base.ChatInfo;
import com.kantv.flt_tencent_im.modules.group.member.GroupMemberInfo;
import com.tencent.imsdk.TIMConversationType;
import com.tencent.imsdk.TIMManager;
import com.tencent.imsdk.ext.group.TIMGroupDetailInfoResult;
import java.util.List;

public class GroupInfo extends ChatInfo {
    private String groupName;
    private String groupType;
    private int joinType;
    private int memberCount;
    private List<GroupMemberInfo> memberDetails;
    private String notice;
    private String owner;

    public GroupInfo() {
        setType(TIMConversationType.Group);
    }

    public String getGroupName() {
        return this.groupName;
    }

    public void setGroupName(String str) {
        this.groupName = str;
    }

    public String getNotice() {
        return this.notice;
    }

    public void setNotice(String str) {
        this.notice = str;
    }

    public int getJoinType() {
        return this.joinType;
    }

    public void setJoinType(int i) {
        this.joinType = i;
    }

    public String getGroupType() {
        return this.groupType;
    }

    public void setGroupType(String str) {
        this.groupType = str;
    }

    public List<GroupMemberInfo> getMemberDetails() {
        return this.memberDetails;
    }

    public void setMemberDetails(List<GroupMemberInfo> list) {
        this.memberDetails = list;
    }

    public int getMemberCount() {
        List<GroupMemberInfo> list = this.memberDetails;
        if (list != null) {
            return list.size();
        }
        return this.memberCount;
    }

    public void setMemberCount(int i) {
        this.memberCount = i;
    }

    public boolean isOwner() {
        return TIMManager.getInstance().getLoginUser().equals(this.owner);
    }

    public void setOwner(String str) {
        this.owner = str;
    }

    public GroupInfo covertTIMGroupDetailInfo(TIMGroupDetailInfoResult tIMGroupDetailInfoResult) {
        setChatName(tIMGroupDetailInfoResult.getGroupName());
        setGroupName(tIMGroupDetailInfoResult.getGroupName());
        setId(tIMGroupDetailInfoResult.getGroupId());
        setNotice(tIMGroupDetailInfoResult.getGroupNotification());
        setMemberCount((int) tIMGroupDetailInfoResult.getMemberNum());
        setGroupType(tIMGroupDetailInfoResult.getGroupType());
        setOwner(tIMGroupDetailInfoResult.getGroupOwner());
        setJoinType((int) tIMGroupDetailInfoResult.getAddOption().getValue());
        return this;
    }
}
