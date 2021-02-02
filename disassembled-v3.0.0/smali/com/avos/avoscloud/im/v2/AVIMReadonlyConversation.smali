.class public Lcom/avos/avoscloud/im/v2/AVIMReadonlyConversation;
.super Lcom/avos/avoscloud/im/v2/AVIMConversation;
.source "AVIMReadonlyConversation.java"


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/util/List;Ljava/util/Map;Z)V

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

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 32
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "can\'t add members for readonly conversation."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
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

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 45
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "can\'t kick members for readonly conversation."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public updateInfoInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 57
    new-instance v1, Lcom/avos/avoscloud/AVException;

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "can\'t update anything for temporary conversation."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
