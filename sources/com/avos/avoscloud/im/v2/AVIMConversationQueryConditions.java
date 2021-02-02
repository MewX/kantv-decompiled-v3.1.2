package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.QueryConditions;
import java.util.Map;

final class AVIMConversationQueryConditions extends QueryConditions {
    private boolean isCompact = false;
    private boolean isWithLastMessageRefreshed = false;

    AVIMConversationQueryConditions() {
    }

    public boolean isWithLastMessagesRefreshed() {
        return this.isWithLastMessageRefreshed;
    }

    public void setWithLastMessagesRefreshed(boolean z) {
        this.isWithLastMessageRefreshed = z;
    }

    public void setCompact(boolean z) {
        this.isCompact = z;
    }

    public Map<String, String> assembleParameters() {
        Map<String, String> assembleParameters = super.assembleParameters();
        boolean z = this.isWithLastMessageRefreshed;
        String str = Conversation.QUERY_PARAM_LAST_MESSAGE;
        if (z) {
            assembleParameters.put(str, Boolean.toString(z));
        } else if (assembleParameters.containsKey(str)) {
            assembleParameters.remove(str);
        }
        boolean z2 = this.isCompact;
        String str2 = Conversation.QUERY_PARAM_COMPACT;
        if (z2) {
            assembleParameters.put(str2, Boolean.toString(z2));
        } else if (assembleParameters.containsKey(str2)) {
            assembleParameters.remove(str2);
        }
        return assembleParameters;
    }
}
