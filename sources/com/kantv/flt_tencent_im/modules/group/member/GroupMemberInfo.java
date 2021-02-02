package com.kantv.flt_tencent_im.modules.group.member;

import com.tencent.imsdk.TIMGroupMemberInfo;
import java.io.Serializable;

public class GroupMemberInfo implements Serializable {
    private String account;
    private String birthday;
    private TIMGroupMemberInfo detail;
    private String iconUrl;
    private boolean isFriend;
    private boolean isTopChat;
    private long joinTime;
    private String location;
    private int memberType;
    private String signature;
    private long tinyId;

    public String getIconUrl() {
        return this.iconUrl;
    }

    public void setIconUrl(String str) {
        this.iconUrl = str;
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public String getSignature() {
        return this.signature;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public boolean isTopChat() {
        return this.isTopChat;
    }

    public void setTopChat(boolean z) {
        this.isTopChat = z;
    }

    public boolean isFriend() {
        return this.isFriend;
    }

    public void setFriend(boolean z) {
        this.isFriend = z;
    }

    public long getJoinTime() {
        return this.joinTime;
    }

    public void setJoinTime(long j) {
        this.joinTime = j;
    }

    public long getTinyId() {
        return this.tinyId;
    }

    public void setTinyId(long j) {
        this.tinyId = j;
    }

    public int getMemberType() {
        return this.memberType;
    }

    public void setMemberType(int i) {
        this.memberType = i;
    }

    public TIMGroupMemberInfo getDetail() {
        return this.detail;
    }

    public void setDetail(TIMGroupMemberInfo tIMGroupMemberInfo) {
        this.detail = tIMGroupMemberInfo;
    }

    public GroupMemberInfo covertTIMGroupMemberInfo(TIMGroupMemberInfo tIMGroupMemberInfo) {
        setAccount(tIMGroupMemberInfo.getUser());
        setTinyId(tIMGroupMemberInfo.getTinyId());
        setJoinTime(tIMGroupMemberInfo.getJoinTime());
        setMemberType(tIMGroupMemberInfo.getRole());
        return this;
    }
}
