package com.tencent.imsdk;

import java.util.HashMap;
import java.util.Map;

public class TIMProfileSystemElem extends TIMElem {
    private String fromUser;
    private Map<String, Object> itemMap;
    private int subType;

    public TIMProfileSystemElem() {
        this.subType = 0;
        this.fromUser = "";
        this.itemMap = new HashMap();
        this.type = TIMElemType.ProfileTips;
    }

    public int getSubType() {
        return this.subType;
    }

    public String getFromUser() {
        return this.fromUser;
    }

    public Map<String, Object> getItemMap() {
        return this.itemMap;
    }
}
