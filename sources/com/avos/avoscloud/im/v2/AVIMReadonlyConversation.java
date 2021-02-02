package com.avos.avoscloud.im.v2;

import com.avos.avoscloud.AVException;
import com.avos.avoscloud.im.v2.callback.AVIMConversationCallback;
import java.util.List;
import java.util.Map;

public class AVIMReadonlyConversation extends AVIMConversation {
    protected AVIMReadonlyConversation(AVIMClient aVIMClient, List<String> list, Map<String, Object> map) {
        super(aVIMClient, list, map, false);
    }

    protected AVIMReadonlyConversation(AVIMClient aVIMClient, String str) {
        super(aVIMClient, str);
    }

    public void addMembers(List<String> list, AVIMConversationCallback aVIMConversationCallback) {
        if (aVIMConversationCallback != null) {
            aVIMConversationCallback.internalDone(null, new AVException(new UnsupportedOperationException("can't add members for readonly conversation.")));
        }
    }

    public void kickMembers(List<String> list, AVIMConversationCallback aVIMConversationCallback) {
        if (aVIMConversationCallback != null) {
            aVIMConversationCallback.internalDone(null, new AVException(new UnsupportedOperationException("can't kick members for readonly conversation.")));
        }
    }

    public void updateInfoInBackground(AVIMConversationCallback aVIMConversationCallback) {
        if (aVIMConversationCallback != null) {
            aVIMConversationCallback.internalDone(null, new AVException(new UnsupportedOperationException("can't update anything for temporary conversation.")));
        }
    }
}
