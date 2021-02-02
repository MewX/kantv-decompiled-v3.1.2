package com.tencent.imsdk.ext.group;

import com.tencent.imsdk.TIMGroupAddOpt;
import com.tencent.imsdk.TIMMessage;
import java.util.HashMap;
import java.util.Map;

public class TIMGroupDetailInfo {
    private static final String tag = "TIMGroupDetailInfo";
    private TIMGroupAddOpt addOption;
    private long createTime;
    private Map<String, byte[]> custom = new HashMap();
    private String groupFaceUrl;
    private String groupId;
    private String groupIntroduction;
    private String groupName;
    private String groupNotice;
    private String groupOwner;
    private String groupType;
    private int intAddOption;
    private boolean isSilenceAll = false;
    private long lastInfoTime;
    private TIMMessage lastMsg = null;
    private long lastMsgTime;
    private long maxMemberNum;
    private long memberNum;
    private long onlineMemberNum;

    public TIMGroupDetailInfo() {
        String str = "";
        this.groupId = str;
        this.groupName = str;
        this.groupOwner = str;
        this.groupNotice = str;
        this.groupIntroduction = str;
        this.groupFaceUrl = str;
        this.groupType = str;
    }

    public String getGroupId() {
        return this.groupId;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupId(String str) {
        this.groupId = str;
    }

    public String getGroupName() {
        return this.groupName;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupName(String str) {
        this.groupName = str;
    }

    public String getGroupOwner() {
        return this.groupOwner;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupOwner(String str) {
        this.groupOwner = str;
    }

    public long getCreateTime() {
        return this.createTime;
    }

    /* access modifiers changed from: 0000 */
    public void setCreateTime(long j) {
        this.createTime = j;
    }

    public long getLastInfoTime() {
        return this.lastInfoTime;
    }

    /* access modifiers changed from: 0000 */
    public void setLastInfoTime(long j) {
        this.lastInfoTime = j;
    }

    public long getLastMsgTime() {
        return this.lastMsgTime;
    }

    /* access modifiers changed from: 0000 */
    public void setLastMsgTime(long j) {
        this.lastMsgTime = j;
    }

    public long getMemberNum() {
        return this.memberNum;
    }

    /* access modifiers changed from: 0000 */
    public void setMemberNum(long j) {
        this.memberNum = j;
    }

    public long getMaxMemberNum() {
        return this.maxMemberNum;
    }

    /* access modifiers changed from: 0000 */
    public void setMaxMemberNum(long j) {
        this.maxMemberNum = j;
    }

    public String getGroupIntroduction() {
        return this.groupIntroduction;
    }

    /* access modifiers changed from: 0000 */
    public void setIntroduction(String str) {
        this.groupIntroduction = str;
    }

    public String getGroupNotification() {
        return this.groupNotice;
    }

    /* access modifiers changed from: 0000 */
    public void setNotice(String str) {
        this.groupNotice = str;
    }

    public String getFaceUrl() {
        return this.groupFaceUrl;
    }

    /* access modifiers changed from: 0000 */
    public void setFaceUrl(String str) {
        this.groupFaceUrl = str;
    }

    public String getGroupType() {
        return this.groupType;
    }

    /* access modifiers changed from: 0000 */
    public void setGroupType(String str) {
        this.groupType = str;
    }

    public TIMMessage getLastMsg() {
        return this.lastMsg;
    }

    /* access modifiers changed from: 0000 */
    public void setLastMsg(TIMMessage tIMMessage) {
        this.lastMsg = tIMMessage;
    }

    public Map<String, byte[]> getCustom() {
        return this.custom;
    }

    public long getOnlineMemberNum() {
        return this.onlineMemberNum;
    }

    /* access modifiers changed from: 0000 */
    public void setOnlineMemberNum(long j) {
        this.onlineMemberNum = j;
    }

    public boolean isSilenceAll() {
        return this.isSilenceAll;
    }

    /* access modifiers changed from: 0000 */
    public void setSilenceAll(boolean z) {
        this.isSilenceAll = z;
    }

    public TIMGroupAddOpt getAddOption() {
        this.addOption = TIMGroupAddOpt.values()[this.intAddOption];
        return this.addOption;
    }

    public void setAddOption(TIMGroupAddOpt tIMGroupAddOpt) {
        this.intAddOption = (int) tIMGroupAddOpt.getValue();
        this.addOption = tIMGroupAddOpt;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TIMGroupDetailInfo::::::::groupType=");
        stringBuffer.append(this.groupType);
        stringBuffer.append(";groupId=");
        stringBuffer.append(this.groupId);
        stringBuffer.append(";groupName=");
        stringBuffer.append(this.groupName);
        stringBuffer.append(";groupNotice=");
        stringBuffer.append(this.groupNotice);
        stringBuffer.append(";groupOwner=");
        stringBuffer.append(this.groupOwner);
        stringBuffer.append(";groupFaceUrl=");
        stringBuffer.append(this.groupFaceUrl);
        stringBuffer.append(";createTime=");
        stringBuffer.append(this.createTime);
        stringBuffer.append(";lastInfoTime=");
        stringBuffer.append(this.lastInfoTime);
        stringBuffer.append(";lastMsgTime=");
        stringBuffer.append(this.lastMsgTime);
        stringBuffer.append(";memberNum=");
        stringBuffer.append(this.memberNum);
        stringBuffer.append(";maxMemberNum=");
        stringBuffer.append(this.maxMemberNum);
        stringBuffer.append(";onlineMemberNum=");
        stringBuffer.append(this.onlineMemberNum);
        stringBuffer.append(";groupIntroduction=");
        stringBuffer.append(this.groupIntroduction);
        return stringBuffer.toString();
    }
}
