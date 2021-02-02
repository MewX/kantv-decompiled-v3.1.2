package com.kantv.common.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class DanmuData {
    private List<Integer> damnPart = new ArrayList();
    private CopyOnWriteArrayList<DanmuBean> danmuList = new CopyOnWriteArrayList<>();

    public CopyOnWriteArrayList<DanmuBean> getDanmuList() {
        return this.danmuList;
    }

    public void setDanmuList(CopyOnWriteArrayList<DanmuBean> copyOnWriteArrayList) {
        this.danmuList = copyOnWriteArrayList;
    }

    public List<Integer> getDamnPart() {
        return this.damnPart;
    }

    public void setDamnPart(List<Integer> list) {
        this.damnPart = list;
    }
}
