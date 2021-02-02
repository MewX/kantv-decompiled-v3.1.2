.class public Lcom/avos/avoscloud/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# static fields
.field static DefaultChannelId:Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "com.avos.avoscloud.PushService"

.field private static _installationSaveHandler:Landroid/os/Handler;

.field private static connecting:Ljava/lang/Object;

.field private static isAutoWakeUp:Z

.field private static isNeedNotifyApplication:Z

.field private static volatile isStarted:Z

.field private static sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;


# instance fields
.field connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

.field shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    const/4 v0, 0x1

    .line 84
    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isNeedNotifyApplication:Z

    .line 89
    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isAutoWakeUp:Z

    const-string v0, ""

    .line 90
    sput-object v0, Lcom/avos/avoscloud/PushService;->DefaultChannelId:Ljava/lang/String;

    .line 652
    new-instance v0, Lcom/avos/avoscloud/PushService$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/PushService$6;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 1

    .line 77
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processIMRequests(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/PushService;->reportRouterConnectionException(Landroid/content/Intent;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 77
    sget-object v0, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static isPushConnectionBroken()Z
    .locals 1

    .line 432
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->isConnectedToPushServer()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private notifyOtherApplication(Ljava/lang/String;)V
    .locals 4

    .line 601
    sget-boolean v0, Lcom/avos/avoscloud/PushService;->isNeedNotifyApplication:Z

    if-eqz v0, :cond_0

    const-string v0, "com.avos.avoscloud.notify.action"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 603
    sput-boolean p1, Lcom/avos/avoscloud/PushService;->isNeedNotifyApplication:Z

    .line 606
    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    .line 607
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 608
    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz p1, :cond_0

    .line 609
    sget-object p1, Lcom/avos/avoscloud/NotifyUtil;->notifyHandler:Landroid/os/Handler;

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private processConversationEventsFromClient(Landroid/content/Intent;)V
    .locals 16

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "conversation.client"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "convesration.id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "conversation.type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "conversation.requestId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 470
    sget-object v4, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v6

    .line 473
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v0

    .line 474
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    const-string v5, "conversation.data"

    const/4 v7, 0x0

    if-eq v0, v4, :cond_0

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 477
    const-class v8, Ljava/util/Map;

    invoke-static {v4, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object v4, v7

    .line 482
    :goto_0
    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v0, v8, :cond_1

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v0, v8, :cond_1

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v0, v8, :cond_1

    sget-object v8, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_REFRESH_TOKEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v0, v8, :cond_1

    .line 486
    invoke-virtual {v6}, Lcom/avos/avoscloud/AVSession;->checkSessionStatus()Lcom/avos/avoscloud/AVException;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 488
    invoke-static {v1, v2, v14, v8, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void

    .line 494
    :cond_1
    sget-object v8, Lcom/avos/avoscloud/PushService$7;->$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation:[I

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    move-object/from16 v15, p0

    .line 567
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "conversation id is null during promoting MemberInfo"

    .line 568
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_0
    move-object/from16 v15, p0

    .line 557
    invoke-direct {v15, v6, v14}, Lcom/avos/avoscloud/PushService;->processSessionConnectionStatus(Lcom/avos/avoscloud/AVSession;I)V

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v15, p0

    .line 541
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 542
    invoke-virtual {v6, v2, v3}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "conversation.messageoption"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    goto :goto_1

    .line 549
    :cond_2
    new-instance v3, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;

    invoke-direct {v3}, Lcom/avos/avoscloud/im/v2/AVIMMessageOption;-><init>()V

    .line 551
    :goto_1
    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0, v2, v14, v3}, Lcom/avos/avoscloud/AVConversationHolder;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ILcom/avos/avoscloud/im/v2/AVIMMessageOption;)V

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v15, p0

    .line 538
    invoke-virtual {v6, v4, v14}, Lcom/avos/avoscloud/AVSession;->conversationQuery(Ljava/util/Map;I)V

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v15, p0

    const-string v0, "conversation.member"

    .line 510
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "conversation.attributes"

    .line 512
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v8, v7

    :goto_2
    const-string v1, "conversation.transient"

    .line 516
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 517
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v9, v1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    const-string v1, "conversation.unique"

    .line 520
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const-string v1, "conversation.sys"

    .line 523
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 524
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v13, v1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    :goto_4
    const-string v1, "conversation.temp"

    .line 527
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 528
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v11, v1

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :goto_5
    const v1, 0x3f480

    const-string v2, "conversation.tempTTL"

    .line 531
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 532
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v12, v1

    goto :goto_6

    :cond_7
    const v12, 0x3f480

    :goto_6
    move-object v7, v0

    .line 535
    invoke-virtual/range {v6 .. v14}, Lcom/avos/avoscloud/AVSession;->createConversation(Ljava/util/List;Ljava/util/Map;ZZZIZI)V

    goto :goto_7

    :pswitch_4
    move-object/from16 v15, p0

    const-string v0, "client.oneline"

    .line 506
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 507
    invoke-virtual {v6, v0, v14}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;I)V

    goto :goto_7

    :pswitch_5
    move-object/from16 v15, p0

    .line 503
    invoke-virtual {v6, v14}, Lcom/avos/avoscloud/AVSession;->close(I)V

    goto :goto_7

    :pswitch_6
    move-object/from16 v15, p0

    .line 500
    invoke-virtual {v6, v14}, Lcom/avos/avoscloud/AVSession;->renewRealtimeSesionToken(I)V

    goto :goto_7

    :pswitch_7
    move-object/from16 v15, p0

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.client.parcel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVIMClientParcel;

    .line 497
    invoke-virtual {v6, v0, v14}, Lcom/avos/avoscloud/AVSession;->open(Lcom/avos/avoscloud/AVIMClientParcel;I)V

    goto :goto_7

    .line 570
    :cond_8
    invoke-virtual {v6, v2, v3}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v1

    if-nez v1, :cond_9

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not found target conversation with id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    goto :goto_7

    .line 574
    :cond_9
    invoke-virtual {v1, v0, v4, v14}, Lcom/avos/avoscloud/AVConversationHolder;->processConversationCommandFromClient(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;Ljava/util/Map;I)V

    :cond_a
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConversationParcelEventFromClient(Landroid/content/Intent;)V
    .locals 8

    .line 437
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 438
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "conversation.client"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "convesration.id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "conversation.type"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 441
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "conversation.requestId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 442
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v0

    .line 443
    sget-object v6, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v6, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v1

    .line 445
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v6, "conversation.data"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/PushServiceParcel;

    .line 447
    sget-object v6, Lcom/avos/avoscloud/PushService$7;->$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation:[I

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v4, :cond_0

    const/4 v4, 0x2

    if-eq v6, v4, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 451
    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AVSession;->getConversationHolder(Ljava/lang/String;I)Lcom/avos/avoscloud/AVConversationHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 453
    invoke-virtual {v1, p1, v0, v5}, Lcom/avos/avoscloud/AVConversationHolder;->patchMessage(Lcom/avos/avoscloud/PushServiceParcel;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)V

    goto :goto_0

    .line 455
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t find out conversation with id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "conversationId is mandatory for MessageRecall or MessageUpdate."

    .line 458
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private processIMRequests(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.im.v2.action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processConversationEventsFromClient(Landroid/content/Intent;)V

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_live_query_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processLiveQueryEventFromClient(Landroid/content/Intent;)V

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.im.v2.parcel.action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processConversationParcelEventFromClient(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private processLiveQueryEventFromClient(Landroid/content/Intent;)V
    .locals 2

    .line 189
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "conversation.requestId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 191
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v1, v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendLiveQueryLoginCmd(Ljava/lang/String;I)V

    return-void
.end method

.method private processSessionConnectionStatus(Lcom/avos/avoscloud/AVSession;I)V
    .locals 3

    .line 582
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 583
    iget-object v1, p1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    goto :goto_0

    .line 585
    :cond_0
    iget-object v1, p1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 588
    :cond_1
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 589
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->getCode()I

    move-result v0

    const-string v2, "callbackClientStatus"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {p1, v0, p2, v1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    return-void
.end method

.method private reportRouterConnectionException(Landroid/content/Intent;Lcom/avos/avoscloud/AVException;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.im.v2.action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "conversation.client"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "convesration.id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "conversation.requestId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 184
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v0

    .line 183
    invoke-static {v1, v2, p1, p2, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    :cond_0
    return-void
.end method

.method static declared-synchronized sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 2

    const-class v0, Lcom/avos/avoscloud/PushService;

    monitor-enter v0

    .line 396
    :try_start_0
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v1, :cond_0

    .line 397
    sget-object v1, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAutoWakeUp(Z)V
    .locals 0

    .line 621
    sput-boolean p0, Lcom/avos/avoscloud/PushService;->isAutoWakeUp:Z

    return-void
.end method

.method public static setDefaultChannelId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 633
    sput-object p1, Lcom/avos/avoscloud/PushService;->DefaultChannelId:Ljava/lang/String;

    .line 634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "notification"

    .line 640
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PushNotification"

    const/4 v2, 0x3

    .line 644
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, p1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 645
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "failed to create NotificationChannel, then perhaps PushNotification doesn\'t work well on Android O and newer version."

    .line 648
    invoke-static {p0}, Lcom/avos/avoscloud/LogUtil$log;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    invoke-static {}, Lcom/avos/avoscloud/AVNotificationManager;->getInstance()Lcom/avos/avoscloud/AVNotificationManager;

    move-result-object p0

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNotificationIcon(I)V
    .locals 1

    .line 339
    invoke-static {}, Lcom/avos/avoscloud/AVNotificationManager;->getInstance()Lcom/avos/avoscloud/AVNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVNotificationManager;->setNotificationIcon(I)V

    return-void
.end method

.method private static declared-synchronized startService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3

    const-class v0, Lcom/avos/avoscloud/PushService;

    monitor-enter v0

    .line 281
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avos/avoscloud/PushService$4;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/PushService$4;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 248
    sget-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 253
    sget-object p0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string p1, "context is null"

    invoke-static {p0, p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "android.permission.INTERNET"

    .line 257
    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    sget-object p0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string p1, "Please add <uses-permission android:name=\"android.permission.INTERNET\"/> in your AndroidManifest file"

    .line 259
    invoke-static {p0, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 264
    :cond_2
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    sget-object p0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string p1, "No network available now"

    invoke-static {p0, p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 269
    :cond_3
    const-class v0, Lcom/avos/avoscloud/PushService;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->isPushServiceAvailable(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 270
    sget-object p0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string p1, "Please add <service android:name=\"com.avos.avoscloud.PushService\"/> in your AndroidManifest file"

    .line 271
    invoke-static {p0, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_4
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/avos/avoscloud/PushService;

    monitor-enter v0

    .line 315
    :try_start_0
    invoke-static {p0, p2}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object p0

    const-string v1, "channels"

    invoke-virtual {p0, v1, p1}, Lcom/avos/avoscloud/AVInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    sget-object p0, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p2, :cond_0

    .line 321
    invoke-static {}, Lcom/avos/avoscloud/AVNotificationManager;->getInstance()Lcom/avos/avoscloud/AVNotificationManager;

    move-result-object p0

    .line 322
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVNotificationManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 326
    sget-object p1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVNotificationManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class p0, Lcom/avos/avoscloud/PushService;

    monitor-enter p0

    if-nez p1, :cond_0

    .line 370
    monitor-exit p0

    return-void

    .line 372
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVNotificationManager;->getInstance()Lcom/avos/avoscloud/AVNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVNotificationManager;->removeDefaultPushCallback(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/PushService$5;

    invoke-direct {v1, p1}, Lcom/avos/avoscloud/PushService$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    goto :goto_0

    .line 390
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    const-string v1, "channels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/AVInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 391
    sget-object p1, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 242
    sget-object p1, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v0, "On bind"

    invoke-static {p1, v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 100
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On Create"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    invoke-static {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getInstance(Landroid/content/Context;)Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 104
    new-instance v0, Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$1;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVConnectivityReceiver;-><init>(Lcom/avos/avospush/push/AVConnectivityListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    .line 120
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    new-instance v0, Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$2;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$2;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVShutdownReceiver;-><init>(Lcom/avos/avospush/push/AVShutdownListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    .line 129
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 130
    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 215
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On Destroy"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->stop()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 221
    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 223
    sget-boolean v0, Lcom/avos/avoscloud/PushService;->isAutoWakeUp:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    .line 226
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to start PushService. cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 234
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/PushService;->notifyOtherApplication(Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/avos/avoscloud/PushService;->isPushConnectionBroken()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 139
    sget-object p2, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    monitor-enter p2

    .line 141
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object p3

    .line 142
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVInstallation;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p3}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 146
    :cond_1
    sget-object p3, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to connect to push server with installationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object p3, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    new-instance v0, Lcom/avos/avoscloud/PushService$3;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/PushService$3;-><init>(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V

    .line 149
    invoke-virtual {p3, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection(Lcom/avos/avoscloud/AVCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 161
    :try_start_1
    sget-object p3, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v0, "Exception when init connection, looks like you have not called AVOSCloud.initialized yet"

    .line 162
    invoke-static {p3, v0, p1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    :goto_1
    monitor-exit p2

    goto :goto_3

    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 169
    :cond_2
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processIMRequests(Landroid/content/Intent;)V

    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 408
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "try to restart service on task Removed"

    .line 409
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 412
    :cond_0
    sget-boolean v0, Lcom/avos/avoscloud/PushService;->isAutoWakeUp:Z

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x3

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 425
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 426
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
