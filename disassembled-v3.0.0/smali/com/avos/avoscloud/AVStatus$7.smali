.class final Lcom/avos/avoscloud/AVStatus$7;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVStatus;->postStatusImpl(Lcom/avos/avoscloud/AVStatus;Ljava/util/Map;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$status:Lcom/avos/avoscloud/AVStatus;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVStatus;Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lcom/avos/avoscloud/AVStatus$7;->val$status:Lcom/avos/avoscloud/AVStatus;

    iput-object p2, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 756
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 0

    .line 747
    iget-object p2, p0, Lcom/avos/avoscloud/AVStatus$7;->val$status:Lcom/avos/avoscloud/AVStatus;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVStatus;->processStatus(Ljava/lang/String;Lcom/avos/avoscloud/AVStatus;)V

    .line 748
    iget-object p1, p0, Lcom/avos/avoscloud/AVStatus$7;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 749
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method
