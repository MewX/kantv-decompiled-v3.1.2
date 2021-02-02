package com.kantv.flt_tencent_im.modules.chat.interfaces;

import com.kantv.flt_tencent_im.modules.message.MessageInfo;
import java.util.List;

public interface IChatProvider {
    boolean addMessageList(List<MessageInfo> list, boolean z);

    boolean deleteMessageList(List<MessageInfo> list);

    List<MessageInfo> getDataSource();

    boolean updateMessageList(List<MessageInfo> list);
}
