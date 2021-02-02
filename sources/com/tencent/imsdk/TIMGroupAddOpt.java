package com.tencent.imsdk;

public enum TIMGroupAddOpt {
    TIM_GROUP_ADD_FORBID(0),
    TIM_GROUP_ADD_AUTH(1),
    TIM_GROUP_ADD_ANY(2);
    
    private long value;

    private TIMGroupAddOpt(long j) {
        this.value = 2;
        this.value = j;
    }

    public long getValue() {
        return this.value;
    }
}
