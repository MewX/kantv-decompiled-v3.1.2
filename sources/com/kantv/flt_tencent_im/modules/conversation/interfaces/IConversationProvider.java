package com.kantv.flt_tencent_im.modules.conversation.interfaces;

import com.kantv.flt_tencent_im.modules.conversation.base.ConversationInfo;
import java.util.List;

public interface IConversationProvider {
    boolean addConversations(List<ConversationInfo> list);

    boolean deleteConversations(List<ConversationInfo> list);

    List<ConversationInfo> getDataSource();

    boolean updateConversations(List<ConversationInfo> list);
}
