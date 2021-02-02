.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMConversationMemberQueryCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback<",
        "Ljava/util/List<",
        "Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            ")V"
        }
    .end annotation
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 14
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;->internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/conversation/AVIMConversationMemberInfo;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationMemberQueryCallback;->done(Ljava/util/List;Lcom/avos/avoscloud/im/v2/AVIMException;)V

    return-void
.end method
