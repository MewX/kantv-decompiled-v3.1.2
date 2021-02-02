package com.tencent.imsdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TIMGroupTipsElem extends TIMElem {
    private static final String TAG = "TIMGroupTipsElem";
    private Map<String, TIMGroupMemberInfo> changedGroupMemberInfo;
    private Map<String, TIMUserProfile> changedUserInfo;
    private String groupId;
    private List<TIMGroupTipsElemGroupInfo> groupInfoList;
    private String groupName;
    private int intType;
    private List<TIMGroupTipsElemMemberInfo> memberInfoList;
    private long memberNum;
    private TIMGroupMemberInfo opGroupMemberInfo;
    private String opUser;
    private TIMUserProfile opUserInfo;
    private String platform;
    private TIMGroupTipsType tipsType = TIMGroupTipsType.Invalid;
    private List<String> userList;

    public TIMGroupTipsElem() {
        String str = "";
        this.opUser = str;
        this.userList = new ArrayList();
        this.groupName = str;
        this.groupId = str;
        this.memberNum = 0;
        this.groupInfoList = new ArrayList();
        this.memberInfoList = new ArrayList();
        this.changedUserInfo = new HashMap();
        this.changedGroupMemberInfo = new HashMap();
        this.platform = str;
        this.type = TIMElemType.GroupTips;
    }

    public String getOpUser() {
        return this.opUser;
    }

    public List<String> getUserList() {
        return this.userList;
    }

    public String getGroupName() {
        return this.groupName;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupName(String str) {
        this.groupName = str;
    }

    public TIMGroupTipsType getTipsType() {
        return this.tipsType;
    }

    /* access modifiers changed from: 0000 */
    public void setTipsType(long j) {
        TIMGroupTipsType[] values;
        for (TIMGroupTipsType tIMGroupTipsType : TIMGroupTipsType.values()) {
            if (((long) tIMGroupTipsType.value()) == j) {
                this.tipsType = tIMGroupTipsType;
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void setTipsType(TIMGroupTipsType tIMGroupTipsType) {
        this.tipsType = tIMGroupTipsType;
    }

    public List<TIMGroupTipsElemGroupInfo> getGroupInfoList() {
        return this.groupInfoList;
    }

    public List<TIMGroupTipsElemMemberInfo> getMemberInfoList() {
        return this.memberInfoList;
    }

    public TIMUserProfile getOpUserInfo() {
        return this.opUserInfo;
    }

    /* access modifiers changed from: 0000 */
    public void setOpUserInfo(TIMUserProfile tIMUserProfile) {
        this.opUserInfo = tIMUserProfile;
    }

    public TIMGroupMemberInfo getOpGroupMemberInfo() {
        return this.opGroupMemberInfo;
    }

    /* access modifiers changed from: 0000 */
    public void setOpGroupMemberInfo(TIMGroupMemberInfo tIMGroupMemberInfo) {
        this.opGroupMemberInfo = tIMGroupMemberInfo;
    }

    public Map<String, TIMUserProfile> getChangedUserInfo() {
        return this.changedUserInfo;
    }

    public Map<String, TIMGroupMemberInfo> getChangedGroupMemberInfo() {
        return this.changedGroupMemberInfo;
    }

    public String getGroupId() {
        return this.groupId;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupId(String str) {
        this.groupId = str;
    }

    public String getPlatform() {
        return this.platform;
    }

    /* access modifiers changed from: 0000 */
    public void setPlatform(String str) {
        this.platform = str;
    }

    public long getMemberNum() {
        return this.memberNum;
    }

    /* access modifiers changed from: 0000 */
    public void addUser(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.userList.add(str);
        }
    }

    /* access modifiers changed from: 0000 */
    public void addGroupInfo(TIMGroupTipsElemGroupInfo tIMGroupTipsElemGroupInfo) {
        if (tIMGroupTipsElemGroupInfo != null) {
            this.groupInfoList.add(tIMGroupTipsElemGroupInfo);
        }
    }

    /* access modifiers changed from: 0000 */
    public void addMemberInfo(TIMGroupTipsElemMemberInfo tIMGroupTipsElemMemberInfo) {
        if (tIMGroupTipsElemMemberInfo != null) {
            this.memberInfoList.add(tIMGroupTipsElemMemberInfo);
        }
    }

    /* access modifiers changed from: 0000 */
    public void addChangedUserInfo(String str, TIMUserProfile tIMUserProfile) {
        if (!TextUtils.isEmpty(str) && tIMUserProfile != null) {
            this.changedUserInfo.put(str, tIMUserProfile);
        }
    }

    /* access modifiers changed from: 0000 */
    public void addChangedGroupMemberInfo(String str, TIMGroupMemberInfo tIMGroupMemberInfo) {
        if (!TextUtils.isEmpty(str) && tIMGroupMemberInfo != null) {
            this.changedGroupMemberInfo.put(str, tIMGroupMemberInfo);
        }
    }
}
