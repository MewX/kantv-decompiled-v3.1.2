package com.avos.avoscloud.im.v2;

import java.util.List;
import java.util.Map;

public class AVIMChatRoom extends AVIMConversation {
    protected AVIMChatRoom(AVIMClient aVIMClient, String str) {
        super(aVIMClient, str);
        setTransientForInit(true);
    }

    protected AVIMChatRoom(AVIMClient aVIMClient, List<String> list, Map<String, Object> map) {
        super(aVIMClient, list, map, true);
    }
}
