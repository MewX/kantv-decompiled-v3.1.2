.class public Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;
.super Ljava/lang/Object;
.source "AVIMMessageManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
    .locals 1

    .line 18
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    .locals 1

    .line 22
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageToken(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getUniqueToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p0

    return-object p0
.end method

.method public static processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V
    .locals 1

    .line 9
    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setCurrentClient(Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V

    return-void
.end method

.method public static processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-void
.end method

.method public static removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->deleteConversationData(Ljava/lang/String;)V

    return-void
.end method
