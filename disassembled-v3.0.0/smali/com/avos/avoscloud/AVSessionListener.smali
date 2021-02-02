.class public abstract Lcom/avos/avoscloud/AVSessionListener;
.super Ljava/lang/Object;
.source "AVSessionListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v4, -0x1

    const v5, -0x10001

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V

    return-void
.end method

.method public abstract onError(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/lang/Throwable;II)V
.end method

.method public abstract onOnlineQuery(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/AVSession;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
.end method

.method public abstract onSessionClosedFromServer(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
.end method

.method public abstract onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
.end method

.method public abstract onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;)V
.end method

.method public abstract onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;)V
.end method

.method public abstract onSessionTokenRenewed(Landroid/content/Context;Lcom/avos/avoscloud/AVSession;I)V
.end method
