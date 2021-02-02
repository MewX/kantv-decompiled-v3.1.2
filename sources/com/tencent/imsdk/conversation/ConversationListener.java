package com.tencent.imsdk.conversation;

import com.tencent.imsdk.TIMConversation;
import java.util.List;

public interface ConversationListener {
    void onAddConversation(List<TIMConversation> list);

    void onDelConversation(List<TIMConversation> list);

    void onUpdateConversation(List<TIMConversation> list);
}
