package com.kantv.ui.bean;

public class NavBean {
    String id;
    String type;
    String value;

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public NavBean(String str, String str2, String str3) {
        this.id = str;
        this.value = str2;
        this.type = str3;
    }
}
