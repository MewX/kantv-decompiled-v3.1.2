package com.avos.avoscloud.im.v2;

public enum AVIMMessageQueryDirection {
    AVIMMessageQueryDirectionUnknown(-1),
    AVIMMessageQueryDirectionFromNewToOld(0),
    AVIMMessageQueryDirectionFromOldToNew(1);
    
    private static String[] descriptions;
    private int code;

    static {
        descriptions = new String[]{"Unknown", "Old", "New"};
    }

    private AVIMMessageQueryDirection(int i) {
        this.code = -1;
        this.code = i;
    }

    public int getCode() {
        return this.code;
    }

    public String getDescription() {
        return descriptions[this.code + 1];
    }

    public static AVIMMessageQueryDirection parseFromCode(int i) {
        if (i == 0) {
            return AVIMMessageQueryDirectionFromNewToOld;
        }
        if (i != 1) {
            return AVIMMessageQueryDirectionUnknown;
        }
        return AVIMMessageQueryDirectionFromOldToNew;
    }
}
