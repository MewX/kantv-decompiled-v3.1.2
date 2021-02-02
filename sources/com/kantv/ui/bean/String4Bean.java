package com.kantv.ui.bean;

public class String4Bean {
    String text1;
    String text2;
    String text3;
    String text4;

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

    public String getText3() {
        return this.text3;
    }

    public void setText3(String str) {
        this.text3 = str;
    }

    public String getText4() {
        return this.text4;
    }

    public void setText4(String str) {
        this.text4 = str;
    }

    public String4Bean(String str, String str2, String str3, String str4) {
        this.text1 = str;
        this.text2 = str2;
        this.text3 = str3;
        this.text4 = str4;
    }
}
