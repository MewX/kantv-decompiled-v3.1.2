.class Lcom/avos/avoscloud/AVQuery$8;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->getFirstInBackground(ZLcom/avos/avoscloud/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/GetCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/GetCallback;)V
    .locals 0

    .line 1393
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$8;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1417
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1418
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    const/4 p2, 0x0

    .line 1397
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1398
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_1

    .line 1401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1402
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/avos/avoscloud/AVObject;

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 1406
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1409
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$8;->val$internalCallback:Lcom/avos/avoscloud/GetCallback;

    if-eqz v0, :cond_1

    .line 1410
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/avos/avoscloud/GetCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_1
    return-void
.end method
