.class public abstract Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;
.super Lcom/avos/avoscloud/AVIMEventHandler;
.source "AVIMConversationEventHandler.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMEventHandler;-><init>()V

    return-void
.end method

.method private processConversationEvent(ILjava/lang/Object;Ljava/lang/Object;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 6

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 303
    :pswitch_1
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Lcom/alibaba/fastjson/JSONObject;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onInfoChanged(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :pswitch_2
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberUnblocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :pswitch_3
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberBlocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_4
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onUnblocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :pswitch_5
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onBlocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :pswitch_6
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberUnmuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :pswitch_7
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberMuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    :pswitch_8
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onUnmuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_9
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :pswitch_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    sget-object p1, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->ATTR_ROLE:Ljava/lang/String;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-object v3, p3

    check-cast v3, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberInfoUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :pswitch_b
    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 269
    invoke-virtual {p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 270
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMessageRecalled(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    goto :goto_0

    .line 263
    :pswitch_c
    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 264
    invoke-virtual {p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateLocalMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    .line 265
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMessageUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V

    goto :goto_0

    .line 259
    :pswitch_d
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastDeliveredAt(JZ)V

    .line 260
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p1, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onLastDeliveredAtUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    goto :goto_0

    .line 255
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p4, p1, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->setLastReadAt(JZ)V

    .line 256
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p1, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onLastReadAtUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    goto :goto_0

    .line 250
    :pswitch_f
    check-cast p3, Landroid/util/Pair;

    .line 251
    check-cast p2, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object p1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p4, p2, p1, p3}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->updateUnreadCountAndMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;IZ)V

    .line 252
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-virtual {p0, p1, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onUnreadMessagesCountUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    goto :goto_0

    .line 247
    :pswitch_10
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onKicked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_11
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onInvited(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_12
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberJoined(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :pswitch_13
    iget-object p1, p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    check-cast p3, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->onMemberLeft(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc354
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBlocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
    .locals 0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification ---  you are blocked by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onInfoChanged(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " by member: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", changedTo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onInvited(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
.end method

.method public abstract onKicked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
.end method

.method public onLastDeliveredAtUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    return-void
.end method

.method public onLastReadAtUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    return-void
.end method

.method public onMemberBlocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " blocked members: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-static {p2, p3}, Lcom/avos/avoscloud/utils/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onMemberInfoUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " updated memberInfo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onMemberJoined(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onMemberLeft(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public onMemberMuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " muted members: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-static {p2, p3}, Lcom/avos/avoscloud/utils/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onMemberUnblocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unblocked members: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-static {p2, p3}, Lcom/avos/avoscloud/utils/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onMemberUnmuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification --- "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unmuted members: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-static {p2, p3}, Lcom/avos/avoscloud/utils/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onMessageRecalled(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0

    return-void
.end method

.method public onMessageUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 0

    return-void
.end method

.method public onMuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
    .locals 0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification ---  you are muted by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onUnblocked(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
    .locals 0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification ---  you are unblocked by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onUnmuted(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;Ljava/lang/String;)V
    .locals 0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification ---  you are unmuted by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onUnreadMessagesCountUpdated(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 0

    return-void
.end method

.method protected final processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 219
    check-cast p4, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processConversationEvent(ILjava/lang/Object;Ljava/lang/Object;Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    return-void
.end method
