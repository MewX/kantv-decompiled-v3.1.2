package com.tencent.imsdk;

public enum TIMGroupTipsGroupInfoType {
    Invalid(0),
    ModifyName(1),
    ModifyIntroduction(2),
    ModifyNotification(4),
    ModifyFaceUrl(8),
    ModifyOwner(16),
    ModifyCustom(32);
    
    private int type;

    private TIMGroupTipsGroupInfoType(int i) {
        this.type = 0;
        this.type = i;
    }

    public int value() {
        return this.type;
    }
}
