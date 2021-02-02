.class public abstract Lcom/avos/avoscloud/im/v2/callback/AVIMMessageRecalledCallback;
.super Lcom/avos/avoscloud/AVCallback;
.source "AVIMMessageRecalledCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/AVCallback<",
        "Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/avos/avoscloud/AVCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract done(Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;Lcom/avos/avoscloud/AVException;)V
.end method

.method protected internalDone0(Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessageRecalledCallback;->done(Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected bridge synthetic internalDone0(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;

    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/callback/AVIMMessageRecalledCallback;->internalDone0(Lcom/avos/avoscloud/im/v2/messages/AVIMRecalledMessage;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method
