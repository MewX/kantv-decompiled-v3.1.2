.class Lcom/avos/avoscloud/AVQuery$13;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->countInBackground(ZLcom/avos/avoscloud/CountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/CountCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/CountCallback;)V
    .locals 0

    .line 1551
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$13;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$13;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1567
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$13;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1568
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

    .line 1555
    :try_start_0
    const-class p2, Lcom/avos/avoscloud/AVResponse;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVResponse;

    .line 1556
    iget-object p2, p0, Lcom/avos/avoscloud/AVQuery$13;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    if-eqz p2, :cond_0

    .line 1557
    iget-object p2, p0, Lcom/avos/avoscloud/AVQuery$13;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    iget p1, p1, Lcom/avos/avoscloud/AVResponse;->count:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/CountCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1560
    iget-object p2, p0, Lcom/avos/avoscloud/AVQuery$13;->val$internalCallback:Lcom/avos/avoscloud/CountCallback;

    const-string v0, "Exception during response parse"

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/avos/avoscloud/CountCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_0
    :goto_0
    return-void
.end method
