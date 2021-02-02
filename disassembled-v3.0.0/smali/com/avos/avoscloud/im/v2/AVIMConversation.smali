.class public Lcom/avos/avoscloud/im/v2/AVIMConversation;
.super Ljava/lang/Object;
.source "AVIMConversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;
    }
.end annotation


# static fields
.field private static final ATTR_PERFIX:Ljava/lang/String; = "attr."

.field public static final RECEIPT_MESSAGE_FLAG:I = 0x100

.field public static final TRANSIENT_MESSAGE_FLAG:I = 0x10

.field static messageComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field FETCH_TIME_INTERVEL:I

.field attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field client:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field conversationId:Ljava/lang/String;

.field createdAt:Ljava/lang/String;

.field creator:Ljava/lang/String;

.field instanceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isSyncLastMessage:Z

.field isSystem:Z

.field isTemporary:Z

.field isTransient:Z

.field lastDeliveredAt:J

.field lastMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

.field lastMessageAt:Ljava/util/Date;

.field lastReadAt:J

.field latestConversationFetch:J

.field members:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pendingAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field pendingInstanceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

.field temporaryExpiredat:J

.field unreadMessagesCount:I

.field unreadMessagesMentioned:Z

.field updatedAt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1946
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversation$19;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$19;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->messageComparator:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1, v0, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V

    .line 189
    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isSyncLastMessage:Z

    .line 95
    iput v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesCount:I

    .line 96
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesMentioned:Z

    .line 111
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isSystem:Z

    .line 123
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTemporary:Z

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->temporaryExpiredat:J

    const v2, 0x36ee80

    .line 1434
    iput v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->FETCH_TIME_INTERVEL:I

    .line 1439
    iput-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->latestConversationFetch:J

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    if-eqz p2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    if-eqz p3, :cond_1

    .line 178
    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 180
    :cond_1
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 181
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    .line 182
    iput-boolean p4, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    .line 184
    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processContinuousMessages(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p7}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processStorageQueryResult(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processLastMessageResult(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->onMessageRecalled(Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->onMessageUpdated(Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method private copyMessageWithoutContent(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 2

    .line 1519
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setConversationId(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getDeliveredAt()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setDeliveredAt(J)V

    .line 1523
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReadAt()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setReadAt(J)V

    .line 1524
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 1525
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageStatus()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 1526
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageIOType()Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V

    return-void
.end method

.method private getLastMessageFromLocal()Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 2

    .line 1211
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getLatestMessage(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    const/4 v1, 0x1

    .line 1213
    iput-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isSyncLastMessage:Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static mergeConversationFromJsonObject(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1796
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 1797
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1798
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "attr"

    .line 1800
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1801
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1803
    const-class v2, Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1804
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1807
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1808
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1809
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1810
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1811
    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMNS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1812
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private onMessageRecalled(Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V
    .locals 1

    .line 1500
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getRecallMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    .line 1501
    new-instance v0, Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;-><init>()V

    .line 1502
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->copyMessageWithoutContent(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 1503
    invoke-virtual {v0, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUpdateAt(J)V

    .line 1504
    sget-object p1, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusRecalled:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 1505
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    const/4 p1, 0x0

    .line 1506
    invoke-virtual {p4, v0, p1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method private onMessageUpdated(Lcom/avos/avoscloud/PushServiceParcel;JLcom/avos/avoscloud/AVCallback;)V
    .locals 1

    .line 1510
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getOldMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 1511
    invoke-virtual {p1}, Lcom/avos/avoscloud/PushServiceParcel;->getNewMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object p1

    .line 1512
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->copyMessageWithoutContent(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 1513
    invoke-virtual {p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setUpdateAt(J)V

    .line 1514
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    const/4 p2, 0x0

    .line 1515
    invoke-virtual {p4, p1, p2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public static parseFromJson(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "objectId"

    .line 1760
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1761
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "sys"

    .line 1767
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1768
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v2, "tr"

    .line 1770
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1771
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const-string v4, "temp"

    .line 1773
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1774
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_4
    if-eqz v0, :cond_5

    .line 1778
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMServiceConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 1780
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 1782
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMChatRoom;

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMChatRoom;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    goto :goto_2

    .line 1784
    :cond_7
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 1786
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->latestConversationFetch:J

    .line 1788
    invoke-static {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateConversation(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_3
    return-object v0
.end method

.method static processAttributes(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1891
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processAttributesForCovering(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0

    .line 1893
    :cond_0
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processAttributesForIncremental(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static processAttributesForCovering(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .line 1926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 1927
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1929
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1928
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1932
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1933
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMNS:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1934
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1937
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "attr"

    .line 1938
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1943
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method static processAttributesForIncremental(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1904
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 1905
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1906
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1909
    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMNS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attr."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1913
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private processContinuousMessages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1457
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->messageComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1459
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 1460
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertContinuousMessages(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private processLastMessageResult(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 671
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 672
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {p3, v0, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMException;)V

    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {p3, v0, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method

.method private processStorageQueryResult(Ljava/util/List;Ljava/util/List;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;",
            ")V"
        }
    .end annotation

    move/from16 v0, p6

    move-object/from16 v1, p7

    .line 688
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 690
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object/from16 v4, p2

    .line 691
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, p1

    .line 695
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 698
    :cond_1
    :goto_1
    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 700
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v0, :cond_2

    goto :goto_4

    .line 707
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 709
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v0, v3

    .line 710
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    :cond_3
    move v9, v0

    if-nez v4, :cond_4

    move-object/from16 v6, p3

    goto :goto_2

    .line 715
    :cond_4
    iget-object v0, v4, Lcom/avos/avoscloud/im/v2/AVIMMessage;->messageId:Ljava/lang/String;

    move-object v6, v0

    :goto_2
    if-nez v4, :cond_5

    move-wide/from16 v7, p4

    goto :goto_3

    :cond_5
    iget-wide v3, v4, Lcom/avos/avoscloud/im/v2/AVIMMessage;->timestamp:J

    move-wide v7, v3

    :goto_3
    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    new-instance v13, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;

    move-object v0, p0

    invoke-direct {v13, p0, v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$10;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object v0, p0

    .line 702
    sget-object v3, Lcom/avos/avoscloud/im/v2/AVIMConversation;->messageComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 703
    invoke-virtual {v1, v2, v4}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_5
    return-void
.end method

.method private queryMemberInfo(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->queryConversationMemberInfo(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 7

    if-eqz p5, :cond_0

    .line 432
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v5, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    new-instance v6, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;

    invoke-direct {v6, p0, p5}, Lcom/avos/avoscloud/im/v2/AVIMConversation$3;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessages(Ljava/lang/String;JILjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageQueryCallback;)V

    :cond_0
    return-void
.end method

.method private queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 12

    .line 366
    sget-object v9, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromNewToOld:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v10, p4

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JZLjava/lang/String;JZLcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method private queryMessagesFromServer(Ljava/lang/String;JZLjava/lang/String;JZLcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 2

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mid"

    .line 416
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ts"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "sinc"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "tmid"

    .line 419
    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "tt"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "tinc"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p9}, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "direct"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "limit"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, p1, p2, p11}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
    .locals 9

    .line 1581
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    .line 1582
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.avoscloud.im.v2.action"

    .line 1583
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1584
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "conversation.data"

    if-nez v2, :cond_0

    .line 1585
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    .line 1588
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const-string p1, "conversation.messageoption"

    .line 1590
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1593
    iget-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->getPriority()Lcom/avos/avoscloud/im/v2/AVIMMessageOption$MessagePriority;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Message priority is invalid in transient conversation"

    .line 1594
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 1598
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    const-string v2, "conversation.client"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v2, "convesration.id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1600
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getType()I

    move-result p1

    const-string v2, "conversation.type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1601
    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    const-string v2, "conversation.operation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "conversation.requestId"

    .line 1602
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1604
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz p5, :cond_2

    .line 1606
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p4

    move-object v5, p6

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMConversation$18;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;)V

    new-instance p2, Landroid/content/IntentFilter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1721
    invoke-virtual {p4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p1, v8, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_2
    return-void
.end method

.method private sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1532
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method private sendNonSideEffectCommand(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 1544
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    .line 1545
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.avoscloud.im.v2.action"

    .line 1546
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1547
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "conversation.data"

    .line 1548
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    :cond_1
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object p1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    const-string v2, "conversation.client"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1551
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v2, "convesration.id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1552
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getType()I

    move-result p1

    const-string v2, "conversation.type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1553
    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result p1

    const-string v2, "conversation.operation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "conversation.requestId"

    .line 1554
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1555
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1556
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$17;

    invoke-direct {v1, p0, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$17;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    new-instance p3, Landroid/content/IntentFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1576
    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p1, v1, p3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private sendParcelToPushService(Lcom/avos/avoscloud/PushServiceParcel;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V
    .locals 4

    .line 1469
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    .line 1470
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.avoscloud.im.v2.parcel.action"

    .line 1471
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "conversation.data"

    .line 1472
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1473
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    const-string v3, "conversation.client"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v3, "convesration.id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getType()I

    move-result v2

    const-string v3, "conversation.type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "conversation.requestId"

    .line 1476
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1477
    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    const-string v3, "conversation.operation"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1478
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-eqz p3, :cond_0

    .line 1480
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$16;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/PushServiceParcel;)V

    new-instance p1, Landroid/content/IntentFilter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1495
    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v1, v2, p1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method static updateConversation(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 5

    if-eqz p1, :cond_a

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "objectId"

    .line 1824
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1825
    const-class v1, Ljava/util/List;

    const-string v2, "m"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1826
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setMembers(Ljava/util/List;)V

    const-string v1, "c"

    .line 1827
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreator(Ljava/lang/String;)V

    .line 1828
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "name"

    .line 1829
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1830
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "attr"

    .line 1832
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1833
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1835
    const-class v3, Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1836
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1839
    :cond_2
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setAttributesForInit(Ljava/util/Map;)V

    .line 1841
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1842
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1843
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1844
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1845
    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMNS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1846
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v1, "sys"

    .line 1851
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1852
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "mu"

    .line 1855
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1856
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v1, "createdAt"

    .line 1859
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1860
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setCreatedAt(Ljava/lang/String;)V

    :cond_7
    const-string v1, "updatedAt"

    .line 1863
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1864
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setUpdatedAt(Ljava/lang/String;)V

    .line 1867
    :cond_8
    invoke-static {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMTypedMessage;->parseMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 1868
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    const-string v0, "lm"

    .line 1870
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1871
    const-class v1, Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromMap(Ljava/util/Map;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessageAt(Ljava/util/Date;)V

    :cond_9
    const-string v0, "tr"

    .line 1874
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1875
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    :cond_a
    :goto_1
    return-object p0
.end method

.method private updateMemberComment(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 0

    return-void
.end method

.method private updateNickName(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;",
            ")V"
        }
    .end annotation

    .line 924
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 927
    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 932
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "conversation.member"

    .line 933
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$11;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$11;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public addToLocalCache(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z

    return-void
.end method

.method public blockMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 857
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "conversation.member"

    .line 864
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 859
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "memberIds is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1, v0, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMException;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public fetchInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 4

    .line 1376
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConversationId is empty"

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 1378
    new-instance v2, Lcom/avos/avoscloud/AVException;

    const/16 v3, 0x66

    invoke-direct {v2, v3, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 1380
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1385
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getFetchRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 1386
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method public fetchReceiptTimestamps(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2

    .line 1317
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_FETCH_RECEIPT_TIME:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1102
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->instanceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAllMemberInfo(IILcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
    .locals 4

    .line 747
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    .line 748
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v2, "cid"

    const-string v3, "__eq"

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 750
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 751
    invoke-direct {p0, v0, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMemberInfo(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1122
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getFetchRequestParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1391
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v2, "_tmp:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v2, "temp_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1394
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1395
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v3, "objectId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "where"

    .line 1396
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getLastDeliveredAt()J
    .locals 5

    .line 1037
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastReadAt:J

    iget-wide v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastDeliveredAt:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getLastMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;
    .locals 1

    .line 1204
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isSyncLastMessage:Z

    if-nez v0, :cond_0

    .line 1205
    invoke-direct {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessageFromLocal()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    return-object v0
.end method

.method public getLastMessage(Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V
    .locals 9

    .line 651
    sget-boolean v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 652
    new-instance v5, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;

    invoke-direct {v5, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$8;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 659
    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;

    invoke-direct {v8, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$9;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMSingleMessageQueryCallback;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    :goto_0
    return-void
.end method

.method public getLastMessageAt()Ljava/util/Date;
    .locals 4

    .line 1185
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1187
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getReceiptTimestamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessageAt(Ljava/util/Date;)V

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    return-object v0
.end method

.method public getLastReadAt()J
    .locals 2

    .line 1029
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastReadAt:J

    return-wide v0
.end method

.method public getMemberCount(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberCountCallback;)V
    .locals 2

    .line 912
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method public getMemberInfo(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V
    .locals 4

    .line 760
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    .line 761
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const-string v2, "__eq"

    const-string v3, "cid"

    invoke-virtual {v0, v3, v2, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "peerId"

    .line 762
    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMemberInfo(Lcom/avos/avoscloud/QueryConditions;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;)V

    return-void
.end method

.method public getMembers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 992
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 994
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    .line 1172
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTemporaryExpiredat()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->temporaryExpiredat:J

    return-wide v0
.end method

.method protected getType()I
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getUnreadMessagesCount()I
    .locals 1

    .line 1264
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesCount:I

    return v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method increaseUnreadCount(IZ)V
    .locals 1

    .line 1239
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getUnreadMessagesCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesCount:I

    if-eqz p2, :cond_0

    .line 1241
    iput-boolean p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesMentioned:Z

    :cond_0
    return-void
.end method

.method public isShouldFetch()Z
    .locals 5

    .line 1449
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->latestConversationFetch:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->FETCH_TIME_INTERVEL:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSystem()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isSystem:Z

    return v0
.end method

.method public isTemporary()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTemporary:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .line 1423
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    return v0
.end method

.method public join(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3

    .line 1408
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$15;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$15;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public kickMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;",
            ")V"
        }
    .end annotation

    .line 959
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 962
    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 967
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "conversation.member"

    .line 968
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$12;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation$12;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;)V

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public mute(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2

    .line 1003
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public muteMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 801
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "conversation.member"

    .line 808
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 803
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "memberIds is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1, v0, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMException;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public processQueryResult(Ljava/io/Serializable;)Ljava/lang/Exception;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1733
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 1734
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1735
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1736
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 1737
    invoke-static {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateConversation(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 1738
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->mergeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;ZLcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 1739
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    new-array v2, v2, [Lcom/avos/avoscloud/im/v2/AVIMConversation;

    aput-object p0, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    .line 1740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->latestConversationFetch:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    return-object p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public queryBlockedMembers(IILcom/avos/avoscloud/im/v2/callback/AVIMConversationSimpleResultCallback;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 900
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 901
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "limit"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "skip"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_BLOCKED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void

    .line 897
    :cond_2
    :goto_0
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset/limit is illegal."

    invoke-direct {p2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationSimpleResultCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 11

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 452
    new-instance v1, Lcom/avos/avoscloud/AVException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "limit should be in [1, 1000]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 457
    :cond_1
    sget-boolean v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 458
    new-instance v9, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;

    invoke-direct {v9, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$4;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v0, p0

    move v4, p1

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void

    .line 473
    :cond_2
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 474
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    goto :goto_1

    .line 478
    :cond_3
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessageCount(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v6, 0x0

    int-to-long v9, p1

    cmp-long v3, v1, v9

    if-ltz v3, :cond_4

    .line 483
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    const/4 v3, 0x0

    .line 484
    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getLatestMessageWithBreakpoint(Ljava/lang/String;Z)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 487
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v1

    move-object v6, v0

    move-wide v7, v1

    goto :goto_0

    :cond_4
    move-wide v7, v6

    move-object v6, v0

    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 493
    new-instance v9, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;

    invoke-direct {v9, p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$5;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v0, p0

    move v4, p1

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    :goto_1
    return-void
.end method

.method public queryMessages(Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 13

    move-object v0, p1

    move-object/from16 v11, p4

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-gez p3, :cond_0

    goto :goto_2

    .line 628
    :cond_0
    iget-object v2, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->startIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    .line 629
    iget-object v2, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->startIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    iget-object v2, v2, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->messageId:Ljava/lang/String;

    .line 630
    iget-object v6, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->startIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    iget-wide v6, v6, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->timestamp:J

    .line 631
    iget-object v8, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->startIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    iget-boolean v8, v8, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->closed:Z

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-wide v6, v4

    const/4 v8, 0x0

    .line 633
    :goto_0
    iget-object v9, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->endIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    if-eqz v9, :cond_2

    .line 634
    iget-object v1, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->endIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->messageId:Ljava/lang/String;

    .line 635
    iget-object v3, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->endIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    iget-wide v3, v3, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->timestamp:J

    .line 636
    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval;->endIntervalBound:Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;

    iget-boolean v0, v0, Lcom/avos/avoscloud/im/v2/AVIMMessageInterval$AVIMMessageIntervalBound;->closed:Z

    move v12, v0

    move-object v5, v1

    move-wide v9, v3

    goto :goto_1

    :cond_2
    move-wide v9, v4

    const/4 v12, 0x0

    move-object v5, v1

    :goto_1
    move-object v0, p0

    move-object v1, v2

    move-wide v2, v6

    move v4, v8

    move-wide v6, v9

    move v8, v12

    move-object v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 638
    invoke-direct/range {v0 .. v11}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JZLjava/lang/String;JZLcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void

    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    .line 617
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "interval must not null, or limit must great than 0."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v11, v1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_4
    return-void
.end method

.method public queryMessages(Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 1

    const/16 v0, 0x14

    .line 331
    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method public queryMessages(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 12

    move-object v9, p0

    move-object/from16 v6, p5

    .line 537
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    move/from16 v5, p4

    .line 538
    invoke-virtual {p0, v5, v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessages(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void

    :cond_0
    move/from16 v5, p4

    .line 542
    sget-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    if-nez v0, :cond_1

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    .line 543
    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;

    invoke-direct {v8, p0, v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation$6;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-object v5, v7

    move-wide v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void

    .line 560
    :cond_1
    iget-object v7, v9, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object v8, v9, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    new-instance v10, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation$7;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    move-object v2, v7

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v8

    move-object v7, v10

    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getMessage(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessageStorage$StorageMessageCallback;)V

    return-void
.end method

.method public queryMessagesByType(IILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 7

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    move-object v6, p3

    .line 380
    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesByType(ILjava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method public queryMessagesByType(ILjava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 2

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mid"

    .line 398
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "ts"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 400
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "sinc"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "tmid"

    const-string v1, ""

    .line 401
    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p4, "tt"

    invoke-interface {v0, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "tinc"

    .line 403
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object p2, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->AVIMMessageQueryDirectionFromNewToOld:Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;

    invoke-virtual {p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageQueryDirection;->getCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "direct"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "limit"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p1, p2, p6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendNonSideEffectCommand(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method public queryMessagesFromCache(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 361
    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromCache(Ljava/lang/String;JILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method public queryMessagesFromServer(ILcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V
    .locals 9

    .line 340
    new-instance v8, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;

    invoke-direct {v8, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->queryMessagesFromServer(Ljava/lang/String;JILjava/lang/String;JLcom/avos/avoscloud/im/v2/callback/AVIMMessagesQueryCallback;)V

    return-void
.end method

.method public queryMutedMembers(IILcom/avos/avoscloud/im/v2/callback/AVIMConversationSimpleResultCallback;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 844
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 845
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "limit"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "skip"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTED_MEMBER_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void

    .line 841
    :cond_2
    :goto_0
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset/limit is illegal."

    invoke-direct {p2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationSimpleResultCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method public quit(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3

    .line 1069
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$13;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public read()V
    .locals 4

    .line 1279
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    if-nez v0, :cond_1

    .line 1280
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getLastMessage()Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 1281
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    .line 1283
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "ts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    :cond_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_READ:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    :cond_1
    return-void
.end method

.method public recallMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMMessageRecalledCallback;)V
    .locals 1

    .line 300
    new-instance v0, Lcom/avos/avoscloud/PushServiceParcel;

    invoke-direct {v0}, Lcom/avos/avoscloud/PushServiceParcel;-><init>()V

    .line 301
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/PushServiceParcel;->setRecallMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 302
    sget-object p1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RECALL_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendParcelToPushService(Lcom/avos/avoscloud/PushServiceParcel;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method public removeFromLocalCache(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->removeLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z

    return-void
.end method

.method protected sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1537
    invoke-direct/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 5

    .line 275
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-direct {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;-><init>()V

    and-int/lit16 v1, p2, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 276
    :goto_0
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->setReceipt(Z)V

    const/16 v1, 0x10

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 277
    :goto_1
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;->setTransient(Z)V

    .line 278
    invoke-virtual {p0, p1, v0, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 9

    .line 232
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setConversationId(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->generateUniqueToken()V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setTimestamp(J)V

    .line 236
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    sget-object p2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusFailed:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    if-eqz p3, :cond_0

    .line 239
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/16 p2, 0x64

    const-string v0, "Connection lost"

    invoke-direct {p1, p2, v0}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void

    .line 244
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSending:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 245
    const-class v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    move-object v0, p1

    check-cast v0, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;

    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;)V

    invoke-static {v0, v1}, Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessageAccessor;->upload(Lcom/avos/avoscloud/im/v2/messages/AVIMFileMessage;Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 260
    sget-object v6, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    :goto_0
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessageOption;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1091
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1132
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "attr."

    .line 1134
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1150
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1151
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method setAttributesForInit(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1160
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    return-void
.end method

.method setCreatedAt(Ljava/lang/String;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->createdAt:Ljava/lang/String;

    return-void
.end method

.method protected setCreator(Ljava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->creator:Ljava/lang/String;

    return-void
.end method

.method setLastDeliveredAt(JZ)V
    .locals 3

    .line 1054
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastDeliveredAt:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1055
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastDeliveredAt:J

    if-eqz p3, :cond_0

    .line 1057
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {p1, p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateConversationTimes(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z

    :cond_0
    return-void
.end method

.method setLastMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    if-nez v0, :cond_0

    .line 1229
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    goto :goto_0

    .line 1231
    :cond_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 1232
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessage:Lcom/avos/avoscloud/im/v2/AVIMMessage;

    :cond_1
    :goto_0
    return-void
.end method

.method setLastMessageAt(Ljava/util/Date;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    :cond_0
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastMessageAt:Ljava/util/Date;

    :cond_1
    return-void
.end method

.method setLastReadAt(JZ)V
    .locals 3

    .line 1045
    iget-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastReadAt:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1046
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->lastReadAt:J

    if-eqz p3, :cond_0

    .line 1048
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {p1, p0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateConversationTimes(Lcom/avos/avoscloud/im/v2/AVIMConversation;)Z

    :cond_0
    return-void
.end method

.method protected setMembers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->members:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setMustFetch()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1453
    iput-wide v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->latestConversationFetch:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setTemporary(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTemporary:Z

    return-void
.end method

.method public setTemporaryExpiredat(J)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iput-wide p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->temporaryExpiredat:J

    :cond_0
    return-void
.end method

.method setTransientForInit(Z)V
    .locals 0

    .line 1427
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->isTransient:Z

    return-void
.end method

.method setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public unblockMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 875
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "conversation.member"

    .line 882
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNBLOCK_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 877
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "memberIds is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1, v0, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMException;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public unmute(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2

    .line 1013
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public unmuteMembers(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 819
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 825
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "conversation.member"

    .line 826
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 821
    new-instance p1, Lcom/avos/avoscloud/im/v2/AVIMException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "memberIds is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1, v0, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMException;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public unreadMessagesMentioned()Z
    .locals 1

    .line 1272
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesMentioned:Z

    return v0
.end method

.method public updateInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 3

    .line 1328
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1365
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 1330
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1331
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1332
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingAttributes:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->processAttributes(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1334
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1338
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1339
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->pendingInstanceData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1342
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1343
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "conversation.attributes"

    .line 1344
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    :cond_4
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    new-instance v2, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;

    invoke-direct {v2, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversation$14;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    :goto_1
    return-void
.end method

.method updateLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateMessageForPatch(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Z

    return-void
.end method

.method public updateMemberRole(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 2

    .line 773
    new-instance v0, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/conversation/ConversationMemberRole;)V

    .line 774
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 775
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->getUpdateAttrs()Ljava/util/Map;

    move-result-object p2

    const-string v0, "conversation.memberDetails"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_PROMOTE_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendCMDToPushService(Ljava/lang/String;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/im/v2/AVIMConversation$OperationCompleteCallback;)V

    return-void
.end method

.method public updateMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/callback/AVIMMessageUpdatedCallback;)V
    .locals 1

    .line 288
    new-instance v0, Lcom/avos/avoscloud/PushServiceParcel;

    invoke-direct {v0}, Lcom/avos/avoscloud/PushServiceParcel;-><init>()V

    .line 289
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/PushServiceParcel;->setOldMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 290
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/PushServiceParcel;->setNewMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 291
    sget-object p1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->sendParcelToPushService(Lcom/avos/avoscloud/PushServiceParcel;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method

.method updateUnreadCountAndMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;IZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1248
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 1249
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Z)V

    .line 1252
    :cond_0
    iget p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesCount:I

    if-eq p1, p2, :cond_1

    .line 1253
    iput p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesCount:I

    .line 1254
    iput-boolean p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesMentioned:Z

    .line 1255
    iget-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    iget-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->conversationId:Ljava/lang/String;

    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->unreadMessagesCount:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->updateConversationUreadCount(Ljava/lang/String;JZ)Z

    :cond_1
    return-void
.end method
