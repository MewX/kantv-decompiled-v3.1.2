package com.kantv.ui.m3u8downloader.bean;

import com.kantv.ui.m3u8downloader.utils.MUtils;

public class M3U8Task {
    private M3U8 m3U8;
    private String name;
    private float progress;
    private long speed;
    private int state = 0;
    public int tag = 0;
    private String url;

    private M3U8Task() {
    }

    public M3U8Task(String str) {
        this.url = str;
    }

    public boolean equals(Object obj) {
        if (obj instanceof M3U8Task) {
            M3U8Task m3U8Task = (M3U8Task) obj;
            String str = this.url;
            if (str != null && str.equals(m3U8Task.getUrl())) {
                return true;
            }
        }
        return false;
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

    public String getFormatTotalSize() {
        M3U8 m3u8 = this.m3U8;
        if (m3u8 == null) {
            return "";
        }
        return m3u8.getFormatFileSize();
    }

    public float getProgress() {
        return this.progress;
    }

    public void setProgress(float f) {
        this.progress = f;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public int getState() {
        return this.state;
    }

    public void setState(int i) {
        this.state = i;
    }

    public long getSpeed() {
        return this.speed;
    }

    public void setSpeed(long j) {
        this.speed = j;
    }

    public M3U8 getM3U8() {
        return this.m3U8;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setM3U8(M3U8 m3u8) {
        this.m3U8 = m3u8;
    }
}
