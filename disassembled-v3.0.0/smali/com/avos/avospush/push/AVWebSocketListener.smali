.class public interface abstract Lcom/avos/avospush/push/AVWebSocketListener;
.super Ljava/lang/Object;
.source "AVWebSocketListener.java"


# virtual methods
.method public abstract onAckCommand(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$AckCommand;)V
.end method

.method public abstract onBlacklistCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$BlacklistCommand;)V
.end method

.method public abstract onConversationCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ConvCommand;)V
.end method

.method public abstract onDirectCommand(Lcom/avos/avoscloud/Messages$DirectCommand;)V
.end method

.method public abstract onError(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$ErrorCommand;)V
.end method

.method public abstract onHistoryMessageQuery(Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$LogsCommand;)V
.end method

.method public abstract onListenerAdded(Z)V
.end method

.method public abstract onListenerRemoved()V
.end method

.method public abstract onMessagePatchCommand(ZLjava/lang/Integer;Lcom/avos/avoscloud/Messages$PatchCommand;)V
.end method

.method public abstract onMessageReceipt(Lcom/avos/avoscloud/Messages$RcpCommand;)V
.end method

.method public abstract onReadCmdReceipt(Lcom/avos/avoscloud/Messages$RcpCommand;)V
.end method

.method public abstract onSessionCommand(Ljava/lang/String;Ljava/lang/Integer;Lcom/avos/avoscloud/Messages$SessionCommand;)V
.end method

.method public abstract onUnreadMessagesCommand(Lcom/avos/avoscloud/Messages$UnreadCommand;)V
.end method

.method public abstract onWebSocketClose()V
.end method

.method public abstract onWebSocketOpen()V
.end method
