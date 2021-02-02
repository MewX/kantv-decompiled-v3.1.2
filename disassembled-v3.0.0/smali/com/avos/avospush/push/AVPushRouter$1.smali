.class Lcom/avos/avospush/push/AVPushRouter$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVPushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avospush/push/AVPushRouter;->fetchPushServerFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/push/AVPushRouter;


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushRouter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isRequestStatisticNeed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to fetch push server:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-static {p1}, Lcom/avos/avospush/push/AVPushRouter;->access$300(Lcom/avos/avospush/push/AVPushRouter;)Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;->onServerAddress(Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/avos/avospush/push/AVPushRouter;->access$502(Lcom/avos/avospush/push/AVPushRouter;Z)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 10

    const-string v0, "groupUrl"

    const-string v1, "secondary"

    const-string v2, "server"

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 167
    :try_start_0
    iget-object p2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-static {p2}, Lcom/avos/avospush/push/AVPushRouter;->access$000(Lcom/avos/avospush/push/AVPushRouter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 168
    const-class p2, Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 169
    iget-object v4, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    const-string v5, "ttl"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/avos/avospush/push/AVPushRouter;->access$102(Lcom/avos/avospush/push/AVPushRouter;I)I

    .line 171
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 172
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "expireAt"

    .line 173
    iget-object v6, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-static {v6}, Lcom/avos/avospush/push/AVPushRouter;->access$100(Lcom/avos/avospush/push/AVPushRouter;)I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/avos/avoscloud/AppRouterManager;->getInstance()Lcom/avos/avoscloud/AppRouterManager;

    move-result-object v1

    .line 177
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 176
    invoke-virtual {v1, p2, v5}, Lcom/avos/avoscloud/AppRouterManager;->updateRtmRouterServer(Ljava/lang/String;Z)V

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-static {p2, v4}, Lcom/avos/avospush/push/AVPushRouter;->access$200(Lcom/avos/avospush/push/AVPushRouter;Ljava/util/HashMap;)V

    .line 180
    iget-object p2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-static {p2}, Lcom/avos/avospush/push/AVPushRouter;->access$300(Lcom/avos/avospush/push/AVPushRouter;)Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;

    move-result-object p2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/avos/avospush/push/AVPushRouter$RouterResponseListener;->onServerAddress(Ljava/lang/String;)V

    .line 181
    iget-object p2, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-static {p2, v5}, Lcom/avos/avospush/push/AVPushRouter;->access$402(Lcom/avos/avospush/push/AVPushRouter;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 183
    invoke-virtual {p0, p2, p1}, Lcom/avos/avospush/push/AVPushRouter$1;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/avos/avospush/push/AVPushRouter$1;->this$0:Lcom/avos/avospush/push/AVPushRouter;

    invoke-static {p1, v3}, Lcom/avos/avospush/push/AVPushRouter;->access$502(Lcom/avos/avospush/push/AVPushRouter;Z)Z

    return-void
.end method
