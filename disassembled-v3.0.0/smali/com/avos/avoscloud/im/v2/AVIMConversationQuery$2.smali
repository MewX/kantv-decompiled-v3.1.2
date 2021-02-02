.class Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;
.super Landroid/content/BroadcastReceiver;
.source "AVIMConversationQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

.field final synthetic val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

.field final synthetic val$queryParamsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$queryParamsString:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x0

    .line 554
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "callbackData"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    .line 557
    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 558
    check-cast p2, Ljava/lang/Throwable;

    move-object v0, p1

    goto :goto_1

    .line 559
    :cond_0
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_2

    .line 560
    check-cast p2, Lcom/alibaba/fastjson/JSONArray;

    .line 561
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    invoke-static {v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object p2

    .line 562
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$queryParamsString:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->access$200(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    :goto_0
    move-object v0, p2

    move-object p2, p1

    goto :goto_1

    .line 565
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->access$100(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object p2

    .line 567
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$queryParamsString:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->access$200(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move-object p2, p1

    move-object v0, p2

    .line 572
    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    if-eqz v1, :cond_6

    .line 573
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, p1

    :goto_2
    if-nez p2, :cond_5

    move-object v2, p1

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 577
    :cond_6
    sget-object p2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    .line 578
    invoke-virtual {p2, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 580
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;->val$callback:Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;

    if-eqz v0, :cond_7

    .line 581
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_7
    :goto_4
    return-void
.end method
