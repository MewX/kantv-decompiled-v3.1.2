package com.tencent.imsdk.ext.group;

public enum ModifyGroupFlag {
    kModifyGroupNone((String) 0),
    kModifyGroupName((String) 1),
    kModifyGroupNotification((String) 2),
    kModifyGroupIntroduction((String) 4),
    kModifyGroupFaceUrl((String) 8),
    kModifyGroupAddOption((String) 16),
    kModifyGroupMaxMmeberNum((String) 32),
    kModifyGroupVisible((String) 64),
    kModifyGroupSearchable((String) 128),
    kModifyGroupAllShutup((String) 256);
    
    private final int swigValue;

    private static class SwigNext {
        /* access modifiers changed from: private */
        public static int next;

        static /* synthetic */ int access$008() {
            int i = next;
            next = i + 1;
            return i;
        }

        private SwigNext() {
        }
    }

    public final int swigValue() {
        return this.swigValue;
    }

    public static ModifyGroupFlag swigToEnum(int i) {
        ModifyGroupFlag[] modifyGroupFlagArr = (ModifyGroupFlag[]) ModifyGroupFlag.class.getEnumConstants();
        if (i < modifyGroupFlagArr.length && i >= 0 && modifyGroupFlagArr[i].swigValue == i) {
            return modifyGroupFlagArr[i];
        }
        for (ModifyGroupFlag modifyGroupFlag : modifyGroupFlagArr) {
            if (modifyGroupFlag.swigValue == i) {
                return modifyGroupFlag;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No enum ");
        sb.append(ModifyGroupFlag.class);
        sb.append(" with value ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    private ModifyGroupFlag(int i) {
        this.swigValue = i;
        SwigNext.next = i + 1;
    }

    private ModifyGroupFlag(ModifyGroupFlag modifyGroupFlag) {
        this.swigValue = modifyGroupFlag.swigValue;
        SwigNext.next = this.swigValue + 1;
    }
}
