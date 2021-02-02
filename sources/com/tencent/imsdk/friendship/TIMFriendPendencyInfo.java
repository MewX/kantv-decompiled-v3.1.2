package com.tencent.imsdk.friendship;

public class TIMFriendPendencyInfo {
    private String addSource;
    private String addWording;
    private String fromUser;
    private String fromUserNickName;

    public String getFromUser() {
        return this.fromUser;
    }

    public String getAddSource() {
        return this.addSource;
    }

    public String getFromUserNickName() {
        return this.fromUserNickName;
    }

    public String getAddWording() {
        return this.addWording;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TIMFriendPendencyInfo{\n");
        stringBuffer.append("\t\tfromUser='");
        stringBuffer.append(this.fromUser);
        String str = "',\n";
        stringBuffer.append(str);
        stringBuffer.append("\t\taddSource='");
        stringBuffer.append(this.addSource);
        stringBuffer.append(str);
        stringBuffer.append("\t\tfromUserNickName='");
        stringBuffer.append(this.fromUserNickName);
        stringBuffer.append(str);
        stringBuffer.append("\t\taddWording='");
        stringBuffer.append(this.addWording);
        stringBuffer.append("'\n");
        stringBuffer.append("}");
        return stringBuffer.toString();
    }
}
