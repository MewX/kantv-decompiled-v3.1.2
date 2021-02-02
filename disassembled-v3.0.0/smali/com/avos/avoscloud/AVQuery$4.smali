.class final Lcom/avos/avoscloud/AVQuery$4;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->doCloudQueryInBackground(Ljava/lang/String;Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;Z[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/CloudQueryCallback;Ljava/lang/Class;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$4;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1193
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 1

    const/4 p2, 0x0

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$clazz:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVQuery;->access$000(Ljava/lang/String;Ljava/lang/Class;)Lcom/avos/avoscloud/AVCloudQueryResult;

    move-result-object p1

    .line 1201
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1205
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$4;->val$callback:Lcom/avos/avoscloud/CloudQueryCallback;

    if-eqz v0, :cond_0

    .line 1206
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/avos/avoscloud/CloudQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    :goto_0
    return-void
.end method
