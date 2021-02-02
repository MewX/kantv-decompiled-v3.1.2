.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMOperationPartiallySucceededCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/AVIMException;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/AVIMException;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOperationFailure;",
            ">;)V"
        }
    .end annotation
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;->internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected final internalDone0(Ljava/util/Map;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMException;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string v0, "callbackConvMemberMutedSUCC"

    .line 32
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const-string v1, "callbackConvMemberMutedFAIL"

    .line 33
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 35
    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object p2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/avos/avoscloud/im/v2/callback/AVIMOperationPartiallySucceededCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMException;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-void
.end method
