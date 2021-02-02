package com.kantv.ui.bean;

public class String2Bean {
    String text1;
    String text2;

    public String getText1() {
        return this.text1;
    }

    public void setText1(String str) {
        this.text1 = str;
    }

    public String getText2() {
        return this.text2;
    }

    public void setText2(String str) {
        this.text2 = str;
    }

    public String2Bean(String str, String str2) {
        this.text1 = str;
        this.text2 = str2;
    }
}
