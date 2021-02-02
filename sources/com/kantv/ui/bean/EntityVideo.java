package com.kantv.ui.bean;

import android.graphics.Bitmap;
import com.kantv.ui.m3u8downloader.utils.MUtils;

public class EntityVideo {
    public Bitmap bitmap;
    public int duration = 0;
    public String id;
    public boolean isNOtShow;
    public boolean isNotCheck;
    public String name;
    public String part;
    public String path;
    public String photo;
    public float progress;
    public long size;
    public long speed;
    public int state;
    public String thumbPath;
    public long time;
    public int totalpart;
    public int tsNumble;
    public String url;

    public EntityVideo() {
        String str = "";
        this.thumbPath = str;
        this.path = str;
        this.name = str;
        this.size = 0;
        this.part = str;
        this.id = str;
        this.url = str;
        this.photo = str;
        this.progress = 0.0f;
        this.tsNumble = 0;
        this.state = 0;
        this.isNOtShow = false;
        this.isNotCheck = false;
        this.time = 0;
        this.totalpart = 1;
    }

    public int getState() {
        return this.state;
    }

    public float getProgress() {
        return this.progress;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setPath(String str) {
        this.path = str;
    }

    public void setThumbPath(String str) {
        this.thumbPath = str;
    }

    public void setSize(long j) {
        this.size = j;
    }

    public String getFormatSpeed() {
        if (this.speed == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(MUtils.formatFileSize(this.speed));
        sb.append("/s");
        return sb.toString();
    }
}
