package com.tencent.imsdk.ext.group;

public enum ModifyGroupMemberFlag {
    kModifyGroupMemberNone((String) 0),
    kModifyGroupMemberMsgFlag((String) 1),
    kModifyGroupMemberRole((String) 2),
    kModifyGroupMemberShutupTime((String) 4),
    kModifyGroupMemberNameCard((String) 8);
    
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

    public static ModifyGroupMemberFlag swigToEnum(int i) {
        ModifyGroupMemberFlag[] modifyGroupMemberFlagArr = (ModifyGroupMemberFlag[]) ModifyGroupMemberFlag.class.getEnumConstants();
        if (i < modifyGroupMemberFlagArr.length && i >= 0 && modifyGroupMemberFlagArr[i].swigValue == i) {
            return modifyGroupMemberFlagArr[i];
        }
        for (ModifyGroupMemberFlag modifyGroupMemberFlag : modifyGroupMemberFlagArr) {
            if (modifyGroupMemberFlag.swigValue == i) {
                return modifyGroupMemberFlag;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("No enum ");
        sb.append(ModifyGroupMemberFlag.class);
        sb.append(" with value ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    private ModifyGroupMemberFlag(int i) {
        this.swigValue = i;
        SwigNext.next = i + 1;
    }

    private ModifyGroupMemberFlag(ModifyGroupMemberFlag modifyGroupMemberFlag) {
        this.swigValue = modifyGroupMemberFlag.swigValue;
        SwigNext.next = this.swigValue + 1;
    }
}
