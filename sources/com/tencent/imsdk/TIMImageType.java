package com.tencent.imsdk;

public enum TIMImageType {
    Original(0),
    Thumb(1),
    Large(2);
    
    private int type;

    private TIMImageType(int i) {
        this.type = 0;
        this.type = i;
    }

    public int value() {
        return this.type;
    }
}
