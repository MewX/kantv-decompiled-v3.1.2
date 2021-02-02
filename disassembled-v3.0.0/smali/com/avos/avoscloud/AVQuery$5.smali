.class Lcom/avos/avoscloud/AVQuery$5;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->findInBackground(Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/FindCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$5;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1308
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1309
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3

    const/4 p2, 0x0

    .line 1294
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$5;->this$0:Lcom/avos/avoscloud/AVQuery;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVQuery;->processResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1295
    iget-object v1, p0, Lcom/avos/avoscloud/AVQuery$5;->this$0:Lcom/avos/avoscloud/AVQuery;

    iget-object v2, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-virtual {v1, p1, v2}, Lcom/avos/avoscloud/AVQuery;->processAdditionalInfo(Ljava/lang/String;Lcom/avos/avoscloud/FindCallback;)V

    .line 1296
    iget-object p1, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz p1, :cond_0

    .line 1297
    iget-object p1, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-virtual {p1, v0, p2}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1300
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$5;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_0

    .line 1301
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    :goto_0
    return-void
.end method
