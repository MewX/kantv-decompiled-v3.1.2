package com.kantv.video;

import com.kantv.common.bean.AdBean;
import com.shuyu.gsyvideoplayer.model.GSYModel;
import java.io.File;
import java.util.List;
import java.util.Map;

public class MyGSYModel extends GSYModel {
    private OnCustomListener listener;
    private List<AdBean> mAds;

    public List<AdBean> getAds() {
        return this.mAds;
    }

    public void setAds(List<AdBean> list) {
        this.mAds = list;
    }

    public MyGSYModel(String str, Map<String, String> map, boolean z, float f, boolean z2, File file, String str2, List<AdBean> list, OnCustomListener onCustomListener) {
        super(str, map, z, f, z2, file, str2);
        setAds(list);
        setAdListener(onCustomListener);
    }

    public OnCustomListener getListener() {
        return this.listener;
    }

    public void setListener(OnCustomListener onCustomListener) {
        this.listener = onCustomListener;
    }

    private void setAdListener(OnCustomListener onCustomListener) {
        this.listener = onCustomListener;
    }
}
