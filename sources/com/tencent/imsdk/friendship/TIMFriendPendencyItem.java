package com.tencent.imsdk.friendship;

import java.io.Serializable;

public class TIMFriendPendencyItem implements Serializable {
    private String addSource;
    private long addTime;
    private String addWording;
    private String identifier;
    private String nickname;
    private int type;

    public String getIdentifier() {
        return this.identifier;
    }

    public long getAddTime() {
        return this.addTime;
    }

    public String getAddSource() {
        return this.addSource;
    }

    public String getAddWording() {
        return this.addWording;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getType() {
        return this.type;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TIMFriendPendencyItem{\n");
        stringBuffer.append("\t\t\tidentifier='");
        stringBuffer.append(this.identifier);
        String str = "',\n";
        stringBuffer.append(str);
        stringBuffer.append("\t\t\taddTime='");
        stringBuffer.append(this.addTime);
        stringBuffer.append(str);
        stringBuffer.append("\t\t\taddSource='");
        stringBuffer.append(this.addSource);
        stringBuffer.append(str);
        stringBuffer.append("\t\t\taddWording='");
        stringBuffer.append(this.addWording);
        stringBuffer.append(str);
        stringBuffer.append("\t\t\tnickname='");
        stringBuffer.append(this.nickname);
        stringBuffer.append(str);
        stringBuffer.append("\t\t\ttype='");
        stringBuffer.append(this.type);
        stringBuffer.append("'\n\t");
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
