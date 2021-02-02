package com.kantv.ui.bean;

import androidx.annotation.NonNull;

public class HotClassBean {
    String name;
    String openType;
    String photo;
    String photo_height;
    String photo_width;
    String seo;
    String tid;
    String type;
    String url;

    public String getSeo() {
        return this.seo;
    }

    public void setSeo(String str) {
        this.seo = str;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String getPhoto() {
        return this.photo;
    }

    public void setPhoto(String str) {
        this.photo = str;
    }

    public String getPhotoHeight() {
        return this.photo_height;
    }

    public void setPhotoHeight(String str) {
        this.photo_height = str;
    }

    public String getPhotoWidth() {
        return this.photo_width;
    }

    public void setPhotoWidth(String str) {
        this.photo_width = str;
    }

    public String getOpenType() {
        return this.openType;
    }

    public void setOpenType(String str) {
        this.openType = str;
    }

    public String getTid() {
        return this.tid;
    }

    public void setTid(String str) {
        this.tid = str;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        this.type = str;
    }

    public HotClassBean(String str, String str2, String str3, String str4) {
        this.tid = str;
        this.name = str2;
        this.type = str3;
        this.url = str4;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.tid);
        String str = " ";
        sb.append(str);
        sb.append(this.name);
        sb.append(str);
        sb.append(this.type);
        sb.append(str);
        sb.append(this.seo);
        sb.append(str);
        sb.append(this.url);
        sb.append(str);
        sb.append(this.photo);
        sb.append(str);
        sb.append(this.photo_height);
        sb.append(str);
        sb.append(this.photo_width);
        sb.append(str);
        sb.append(this.openType);
        return sb.toString();
    }
}
