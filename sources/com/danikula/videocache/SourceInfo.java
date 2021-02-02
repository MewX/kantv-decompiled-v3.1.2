package com.danikula.videocache;

public class SourceInfo {
    public final long length;
    public final String mime;
    public final String url;

    public SourceInfo(String str, long j, String str2) {
        this.url = str;
        this.length = j;
        this.mime = str2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SourceInfo{url='");
        sb.append(this.url);
        sb.append('\'');
        sb.append(", length=");
        sb.append(this.length);
        sb.append(", mime='");
        sb.append(this.mime);
        sb.append('\'');
        sb.append('}');
        return sb.toString();
    }
}
