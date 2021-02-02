package com.tencent.imsdk;

import androidx.annotation.NonNull;
import com.tencent.imsdk.log.QLog;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class TIMGroupMemberInfo implements Serializable {
    private static final String TAG = "TIMGroupMemberInfo";
    private Map<String, byte[]> custom;
    private long joinTime;
    private long msgFlag;
    private long msgSeq;
    private String nameCard;
    private int role = 0;
    private long silenceSeconds;
    private long tinyId;
    private String user;

    public TIMGroupMemberInfo() {
        String str = "";
        this.user = str;
        this.nameCard = str;
        this.custom = new HashMap();
    }

    public TIMGroupMemberInfo(@NonNull String str) {
        String str2 = "";
        this.user = str2;
        this.nameCard = str2;
        this.custom = new HashMap();
        if (str != null) {
            this.user = str;
        }
    }

    public long getJoinTime() {
        return this.joinTime;
    }

    /* access modifiers changed from: protected */
    public void setJoinTime(long j) {
        this.joinTime = j;
    }

    public int getRole() {
        return this.role;
    }

    public void setRole(int i) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("setRole = ");
        sb.append(i);
        QLog.i(str, sb.toString());
        this.role = i;
    }

    public String getUser() {
        return this.user;
    }

    /* access modifiers changed from: protected */
    public void setUser(String str) {
        this.user = str;
    }

    public String getNameCard() {
        return this.nameCard;
    }

    public void setNameCard(String str) {
        if (str != null) {
            this.nameCard = str;
        }
    }

    public Map<String, byte[]> getCustomInfo() {
        return this.custom;
    }

    public void setCustomInfo(Map<String, byte[]> map) {
        if (map != null && !map.isEmpty()) {
            this.custom = map;
        }
    }

    /* access modifiers changed from: 0000 */
    public void addCustom(String str, byte[] bArr) {
        this.custom.put(str, bArr);
    }

    public long getSilenceSeconds() {
        return this.silenceSeconds;
    }

    /* access modifiers changed from: protected */
    public void setSilenceSeconds(long j) {
        this.silenceSeconds = j;
    }

    public long getTinyId() {
        return this.tinyId;
    }

    /* access modifiers changed from: protected */
    public void setTinyId(long j) {
        this.tinyId = j;
    }

    public long getMsgFlag() {
        return this.msgFlag;
    }

    public void setMsgFlag(long j) {
        this.msgFlag = j;
    }

    public long getMsgSeq() {
        return this.msgSeq;
    }

    public void setMsgSeq(long j) {
        this.msgSeq = j;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TIMGroupMemberInfo::::::::tinyId=");
        stringBuffer.append(this.tinyId);
        stringBuffer.append(";msgFlag=");
        stringBuffer.append(this.msgFlag);
        stringBuffer.append(";msgSeq=");
        stringBuffer.append(this.msgSeq);
        stringBuffer.append(";user=");
        stringBuffer.append(this.user);
        stringBuffer.append(";joinTime=");
        stringBuffer.append(this.joinTime);
        stringBuffer.append(";role=");
        stringBuffer.append(this.role);
        stringBuffer.append(";nameCard=");
        stringBuffer.append(this.nameCard);
        stringBuffer.append(";silenceSeconds=");
        stringBuffer.append(this.silenceSeconds);
        stringBuffer.append(";custom=");
        stringBuffer.append(this.custom);
        return stringBuffer.toString();
    }
}
