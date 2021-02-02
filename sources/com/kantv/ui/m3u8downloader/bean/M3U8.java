package com.kantv.ui.m3u8downloader.bean;

import com.kantv.ui.m3u8downloader.utils.MUtils;
import java.util.ArrayList;
import java.util.List;

public class M3U8 {
    private String basePath;
    private String dirFilePath;
    private long fileSize;
    private String m3u8FilePath;
    private long totalTime;
    private List<M3U8Ts> tsList = new ArrayList();

    public String getBasePath() {
        return this.basePath;
    }

    public void setBasePath(String str) {
        this.basePath = str;
    }

    public String getM3u8FilePath() {
        return this.m3u8FilePath;
    }

    public void setM3u8FilePath(String str) {
        this.m3u8FilePath = str;
    }

    public String getDirFilePath() {
        return this.dirFilePath;
    }

    public void setDirFilePath(String str) {
        this.dirFilePath = str;
    }

    public long getFileSize() {
        this.fileSize = 0;
        for (M3U8Ts fileSize2 : this.tsList) {
            this.fileSize += fileSize2.getFileSize();
        }
        return this.fileSize;
    }

    public String getFormatFileSize() {
        this.fileSize = getFileSize();
        long j = this.fileSize;
        if (j == 0) {
            return "";
        }
        return MUtils.formatFileSize(j);
    }

    public void setFileSize(long j) {
        this.fileSize = j;
    }

    public List<M3U8Ts> getTsList() {
        return this.tsList;
    }

    public void setTsList(List<M3U8Ts> list) {
        this.tsList = list;
    }

    public void addTs(M3U8Ts m3U8Ts) {
        this.tsList.add(m3U8Ts);
    }

    public long getTotalTime() {
        this.totalTime = 0;
        for (M3U8Ts seconds : this.tsList) {
            this.totalTime += (long) ((int) (seconds.getSeconds() * 1000.0f));
        }
        return this.totalTime;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("basePath: ");
        sb2.append(this.basePath);
        sb.append(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("\nm3u8FilePath: ");
        sb3.append(this.m3u8FilePath);
        sb.append(sb3.toString());
        StringBuilder sb4 = new StringBuilder();
        sb4.append("\ndirFilePath: ");
        sb4.append(this.dirFilePath);
        sb.append(sb4.toString());
        StringBuilder sb5 = new StringBuilder();
        sb5.append("\nfileSize: ");
        sb5.append(getFileSize());
        sb.append(sb5.toString());
        StringBuilder sb6 = new StringBuilder();
        sb6.append("\nfileFormatSize: ");
        sb6.append(MUtils.formatFileSize(this.fileSize));
        sb.append(sb6.toString());
        StringBuilder sb7 = new StringBuilder();
        sb7.append("\ntotalTime: ");
        sb7.append(this.totalTime);
        sb.append(sb7.toString());
        for (M3U8Ts m3U8Ts : this.tsList) {
            StringBuilder sb8 = new StringBuilder();
            sb8.append("\nts: ");
            sb8.append(m3U8Ts);
            sb.append(sb8.toString());
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof M3U8) {
            M3U8 m3u8 = (M3U8) obj;
            String str = this.basePath;
            if (str != null && str.equals(m3u8.basePath)) {
                return true;
            }
        }
        return false;
    }
}
