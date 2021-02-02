package com.kantv.common.bean;

import android.text.TextUtils;

public class DanmuBean implements Comparable {
    private String col;
    private long fon;
    private String msg;
    private long sec;
    private String tid;

    public String getMsg() {
        return this.msg;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public long getSec() {
        return this.sec;
    }

    public void setSec(int i) {
        this.sec = (long) i;
    }

    public long getFon() {
        return this.fon;
    }

    public void setFon(int i) {
        this.fon = (long) i;
    }

    public String getCol() {
        return this.col;
    }

    public void setCol(String str) {
        this.col = str;
    }

    public void setTvId(String str) {
        this.tid = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DanmuBean)) {
            return false;
        }
        DanmuBean danmuBean = (DanmuBean) obj;
        return !TextUtils.isEmpty(this.tid) && !TextUtils.isEmpty(danmuBean.tid) && this.tid.equals(danmuBean.tid) && this.sec == danmuBean.sec;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.sec);
        sb.append(":");
        sb.append(this.msg);
        return sb.toString();
    }

    public int compareTo(Object obj) {
        return this.sec > ((DanmuBean) obj).sec ? 1 : -1;
    }
}
