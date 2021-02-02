package com.tencent.imsdk;

public class TIMGroupTipsElemGroupInfo {
    private String content;
    private String key;
    private TIMGroupTipsGroupInfoType type = TIMGroupTipsGroupInfoType.Invalid;

    public TIMGroupTipsGroupInfoType getType() {
        return this.type;
    }

    /* access modifiers changed from: 0000 */
    public void setType(int i) {
        TIMGroupTipsGroupInfoType[] values;
        for (TIMGroupTipsGroupInfoType tIMGroupTipsGroupInfoType : TIMGroupTipsGroupInfoType.values()) {
            if (tIMGroupTipsGroupInfoType.value() == i) {
                this.type = tIMGroupTipsGroupInfoType;
            }
        }
    }

    public String getContent() {
        return this.content;
    }

    public String getKey() {
        return this.key;
    }
}
