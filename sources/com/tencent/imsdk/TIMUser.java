package com.tencent.imsdk;

public class TIMUser {
    private String appIdAt3rd;
    private String identifier;
    private long sdkAppid = 0;
    private long tinyId;

    public TIMUser() {
        String str = "";
        this.appIdAt3rd = str;
        this.identifier = str;
        this.tinyId = 0;
    }

    public TIMUser(TIMUser tIMUser) {
        String str = "";
        this.appIdAt3rd = str;
        this.identifier = str;
        this.tinyId = 0;
        this.sdkAppid = tIMUser.sdkAppid;
        this.appIdAt3rd = tIMUser.appIdAt3rd;
        this.identifier = tIMUser.identifier;
        this.tinyId = tIMUser.tinyId;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof TIMUser)) {
            return false;
        }
        return toString().equals(((TIMUser) obj).toString());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.sdkAppid);
        String str = ":";
        sb.append(str);
        sb.append(this.sdkAppid);
        sb.append(str);
        sb.append(this.identifier);
        sb.append(str);
        sb.append(this.appIdAt3rd);
        return sb.toString();
    }

    public void parseFromString(String str) {
        if (str != null) {
            String[] split = str.split(":");
            this.sdkAppid = (long) Integer.parseInt(split[0]);
            this.identifier = split[1];
            this.appIdAt3rd = split[2];
        }
    }

    public long getTinyId() {
        return this.tinyId;
    }

    public void setTinyId(long j) {
        this.tinyId = j;
    }

    @Deprecated
    public String getAppIdAt3rd() {
        return this.appIdAt3rd;
    }

    @Deprecated
    public void setAppIdAt3rd(String str) {
        this.appIdAt3rd = str;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public long getSdkAppid() {
        return this.sdkAppid;
    }

    public void setSdkAppid(long j) {
        this.sdkAppid = j;
    }
}
