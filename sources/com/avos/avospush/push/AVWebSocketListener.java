package com.avos.avospush.push;

import com.avos.avoscloud.Messages.AckCommand;
import com.avos.avoscloud.Messages.BlacklistCommand;
import com.avos.avoscloud.Messages.ConvCommand;
import com.avos.avoscloud.Messages.DirectCommand;
import com.avos.avoscloud.Messages.ErrorCommand;
import com.avos.avoscloud.Messages.LogsCommand;
import com.avos.avoscloud.Messages.PatchCommand;
import com.avos.avoscloud.Messages.RcpCommand;
import com.avos.avoscloud.Messages.SessionCommand;
import com.avos.avoscloud.Messages.UnreadCommand;

public interface AVWebSocketListener {
    void onAckCommand(Integer num, AckCommand ackCommand);

    void onBlacklistCommand(String str, Integer num, BlacklistCommand blacklistCommand);

    void onConversationCommand(String str, Integer num, ConvCommand convCommand);

    void onDirectCommand(DirectCommand directCommand);

    void onError(Integer num, ErrorCommand errorCommand);

    void onHistoryMessageQuery(Integer num, LogsCommand logsCommand);

    void onListenerAdded(boolean z);

    void onListenerRemoved();

    void onMessagePatchCommand(boolean z, Integer num, PatchCommand patchCommand);

    void onMessageReceipt(RcpCommand rcpCommand);

    void onReadCmdReceipt(RcpCommand rcpCommand);

    void onSessionCommand(String str, Integer num, SessionCommand sessionCommand);

    void onUnreadMessagesCommand(UnreadCommand unreadCommand);

    void onWebSocketClose();

    void onWebSocketOpen();
}
