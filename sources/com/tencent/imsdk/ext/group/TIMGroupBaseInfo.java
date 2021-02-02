package com.tencent.imsdk.ext.group;

import com.tencent.imsdk.TIMGroupReceiveMessageOpt;

public class TIMGroupBaseInfo {
    private String faceUrl;
    private String groupId;
    private String groupName;
    private String groupType;
    private boolean isSilenceAll = false;
    private long joinTime = 0;
    private int recvOpt;
    private int role;
    private int unReadMessageNum;

    TIMGroupBaseInfo() {
        String str = "";
        this.groupType = str;
        this.groupId = str;
        this.groupName = str;
        this.faceUrl = str;
    }

    public boolean isSilenceAll() {
        return this.isSilenceAll;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public String getGroupType() {
        return this.groupType;
    }

    public String getFaceUrl() {
        return this.faceUrl;
    }

    public long getJoinTime() {
        return this.joinTime;
    }

    public int getRole() {
        return this.role;
    }

    public TIMGroupReceiveMessageOpt getRecvOpt() {
        if (((long) this.recvOpt) == TIMGroupReceiveMessageOpt.ReceiveAndNotify.getValue()) {
            return TIMGroupReceiveMessageOpt.ReceiveAndNotify;
        }
        if (((long) this.recvOpt) == TIMGroupReceiveMessageOpt.NotReceive.getValue()) {
            return TIMGroupReceiveMessageOpt.NotReceive;
        }
        if (((long) this.recvOpt) == TIMGroupReceiveMessageOpt.ReceiveNotNotify.getValue()) {
            return TIMGroupReceiveMessageOpt.ReceiveNotNotify;
        }
        return null;
    }

    public int getUnReadMessageNum() {
        return this.unReadMessageNum;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TIMGroupBaseInfo::::::::groupType=");
        stringBuffer.append(this.groupType);
        stringBuffer.append(";groupId=");
        stringBuffer.append(this.groupId);
        stringBuffer.append(";groupName=");
        stringBuffer.append(this.groupName);
        stringBuffer.append(";faceUrl=");
        stringBuffer.append(this.faceUrl);
        stringBuffer.append(";isSilenceAll=");
        stringBuffer.append(this.isSilenceAll);
        return stringBuffer.toString();
    }
}
