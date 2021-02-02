.class public Lcom/avos/avoscloud/im/v2/AVIMMessageManager;
.super Ljava/lang/Object;
.source "AVIMMessageManager.java"


# static fields
.field static conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

.field static defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

.field static messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/avos/avoscloud/im/v2/MessageHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field static messageTypesRepository:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMTextMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 38
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 39
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMImageMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 40
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMAudioMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 41
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMVideoMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 42
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMLocationMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    .line 43
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->registerAVIMMessageType(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
    .locals 1

    .line 124
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    return-object v0
.end method

.method private static getMessageType(Ljava/lang/String;)I
    .locals 3

    .line 251
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "_lctype"

    .line 254
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing json data error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->getMessageType(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 231
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setConversationId(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReceiptTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setReceiptTimestamp(J)V

    .line 234
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 235
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 238
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageIOType()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V

    .line 239
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->uniqueToken:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->currentClient:Ljava/lang/String;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->currentClient:Ljava/lang/String;

    .line 241
    iget-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    iput-boolean v1, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionAll:Z

    .line 242
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;

    iput-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentionList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :catch_0
    :cond_0
    return-object p0
.end method

.method protected static processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V
    .locals 1

    .line 130
    iget-object v0, p2, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->containMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    .line 135
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p2, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p0, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    .line 138
    :cond_1
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    if-nez p4, :cond_2

    const/4 p2, 0x1

    .line 142
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->mentioned()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->increaseUnreadCount(IZ)V

    .line 144
    :cond_2
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessageAt(Ljava/util/Date;)V

    const/4 p2, 0x0

    .line 162
    invoke-static {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    return-void
.end method

.method protected static processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 2

    .line 167
    iget-object v0, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Ljava/lang/String;)Z

    .line 168
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p0

    .line 170
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p1

    const/4 v0, 0x1

    .line 183
    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V

    return-void
.end method

.method public static registerAVIMMessageType(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;",
            ">;)V"
        }
    .end annotation

    .line 52
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageType;->type()I

    move-result v0

    .line 58
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageTypesRepository:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    const-string v0, "computeFieldAttribute"

    const/4 v1, 0x1

    .line 60
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 64
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "failed to initialize message Fields"

    .line 65
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/annotation/IncompleteAnnotationException;

    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMMessageType;

    const-string v1, "type"

    invoke-direct {p0, v0, v1}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw p0
.end method

.method public static registerDefaultMessageHandler(Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    return-void
.end method

.method public static registerMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/MessageHandler<",
            "*>;)V"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 91
    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 95
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static retrieveAllMessageHandlers(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMConversation;Z)V
    .locals 7

    .line 190
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const v3, 0xc351

    const v4, 0xc350

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    sget-object v6, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 193
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v1, 0x1

    .line 196
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/avos/avoscloud/im/v2/MessageHandler;

    if-eqz p2, :cond_2

    .line 198
    invoke-virtual {v6, v3, v5, p0, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v6, v4, v5, p0, p1}, Lcom/avos/avoscloud/im/v2/MessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_5

    .line 207
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->defaultMessageHandler:Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    .line 209
    invoke-virtual {v0, v3, v5, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 212
    :cond_4
    invoke-virtual {v0, v4, v5, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static setConversationEventHandler(Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;)V
    .locals 0

    .line 120
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->conversationEventHandler:Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    return-void
.end method

.method public static unregisterMessageHandler(Ljava/lang/Class;Lcom/avos/avoscloud/im/v2/MessageHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/MessageHandler<",
            "*>;)V"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessageManager;->messageHandlerRepository:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 108
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
