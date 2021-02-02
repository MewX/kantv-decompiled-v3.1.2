.class final Lcom/avos/avoscloud/AVStatus$5;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->getStatusCountImpl(Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/CountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/CountCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/CountCallback;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 632
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    .line 623
    invoke-static {p1}, Lcom/avos/avoscloud/AVStatus;->processStatusCount(Ljava/lang/String;)I

    move-result p1

    .line 624
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus$5;->val$callback:Lcom/avos/avoscloud/CountCallback;

    if-eqz p2, :cond_0

    .line 625
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
