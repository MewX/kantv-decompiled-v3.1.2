.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMMessageUpdatedCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMMessageUpdatedCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback<",
        "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected internalDone0(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessageUpdatedCallback;->done(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 10
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessageUpdatedCallback;->internalDone0(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
