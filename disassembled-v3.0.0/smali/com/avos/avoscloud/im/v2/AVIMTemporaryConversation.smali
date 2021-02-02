.class public Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;
.super Lcom/avos/avoscloud/im/v2/AVIMReadonlyConversation;
.source "AVIMTemporaryConversation.java"


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMReadonlyConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;->isTemporary:Z

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMReadonlyConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;->isTemporary:Z

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .locals 5

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 35
    iget-wide v2, p0, Lcom/avos/avoscloud/im/v2/AVIMTemporaryConversation;->temporaryExpiredat:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
