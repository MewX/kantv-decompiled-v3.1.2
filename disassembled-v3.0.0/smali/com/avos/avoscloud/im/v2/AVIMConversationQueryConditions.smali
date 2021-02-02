.class final Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;
.super Lcom/avos/avoscloud/QueryConditions;
.source "AVIMConversationQueryConditions.java"


# instance fields
.field private isCompact:Z

.field private isWithLastMessageRefreshed:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isWithLastMessageRefreshed:Z

    .line 13
    iput-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isCompact:Z

    return-void
.end method


# virtual methods
.method public assembleParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-super {p0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    .line 40
    iget-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isWithLastMessageRefreshed:Z

    const-string v2, "last_message"

    if-eqz v1, :cond_0

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isCompact:Z

    const-string v2, "compact"

    if-eqz v1, :cond_2

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public isWithLastMessagesRefreshed()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isWithLastMessageRefreshed:Z

    return v0
.end method

.method public setCompact(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isCompact:Z

    return-void
.end method

.method public setWithLastMessagesRefreshed(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQueryConditions;->isWithLastMessageRefreshed:Z

    return-void
.end method
