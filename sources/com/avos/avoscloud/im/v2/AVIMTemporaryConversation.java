package com.avos.avoscloud.im.v2;

import java.util.List;
import java.util.Map;

public class AVIMTemporaryConversation extends AVIMReadonlyConversation {
    protected AVIMTemporaryConversation(AVIMClient aVIMClient, List<String> list, Map<String, Object> map) {
        super(aVIMClient, list, map);
        this.isTemporary = true;
    }

    protected AVIMTemporaryConversation(AVIMClient aVIMClient, String str) {
        super(aVIMClient, str);
        this.isTemporary = true;
    }

    public boolean isExpired() {
        return System.currentTimeMillis() / 1000 > this.temporaryExpiredat;
    }
}
