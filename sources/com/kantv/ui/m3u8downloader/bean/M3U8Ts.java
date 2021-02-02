package com.kantv.ui.m3u8downloader.bean;

import androidx.annotation.NonNull;

public class M3U8Ts implements Comparable<M3U8Ts> {
    private String file;
    private long fileSize;
    private float seconds;

    public M3U8Ts(String str, float f) {
        this.file = str;
        this.seconds = f;
    }

    public String getFile() {
        return this.file;
    }

    public void setFile(String str) {
        this.file = str;
    }

    public float getSeconds() {
        return this.seconds;
    }

    public void setSeconds(float f) {
        this.seconds = f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.file);
        sb.append(" (");
        sb.append(this.seconds);
        sb.append("sec)");
        return sb.toString();
    }

    public long getLongDate() {
        try {
            return Long.parseLong(this.file.substring(0, this.file.lastIndexOf(".")));
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public int compareTo(@NonNull M3U8Ts m3U8Ts) {
        return this.file.compareTo(m3U8Ts.file);
    }

    public long getFileSize() {
        return this.fileSize;
    }

    public void setFileSize(long j) {
        this.fileSize = j;
    }
}
