package com.tencent.wxop.stat;

public class StatGameUser implements Cloneable {
    private String a;
    private String b;
    private String c;

    public StatGameUser() {
        String str = "";
        this.a = str;
        this.b = str;
        this.c = str;
    }

    public StatGameUser(String str, String str2, String str3) {
        String str4 = "";
        this.a = str4;
        this.b = str4;
        this.c = str4;
        this.b = str;
        this.a = str2;
        this.c = str3;
    }

    public StatGameUser clone() {
        try {
            return (StatGameUser) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String getAccount() {
        return this.b;
    }

    public String getLevel() {
        return this.c;
    }

    public String getWorldName() {
        return this.a;
    }

    public void setAccount(String str) {
        this.b = str;
    }

    public void setLevel(String str) {
        this.c = str;
    }

    public void setWorldName(String str) {
        this.a = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatGameUser [worldName=");
        sb.append(this.a);
        sb.append(", account=");
        sb.append(this.b);
        sb.append(", level=");
        sb.append(this.c);
        sb.append("]");
        return sb.toString();
    }
}
