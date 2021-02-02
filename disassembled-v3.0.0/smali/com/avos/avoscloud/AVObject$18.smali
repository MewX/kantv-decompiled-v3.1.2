.class final Lcom/avos/avoscloud/AVObject$18;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->_saveAll(ZLjava/util/List;Lcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$list:Ljava/util/LinkedList;

.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/LinkedList;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0

    .line 1698
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$18;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$18;->val$list:Ljava/util/LinkedList;

    iput-boolean p3, p0, Lcom/avos/avoscloud/AVObject$18;->val$sync:Z

    iput-object p4, p0, Lcom/avos/avoscloud/AVObject$18;->val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 10

    .line 1702
    iget-object p1, p0, Lcom/avos/avoscloud/AVObject$18;->val$objects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVObject;

    const/4 v1, 0x1

    .line 1703
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$302(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 1704
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$18;->val$list:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->access$500(Lcom/avos/avoscloud/AVObject;Ljava/util/List;)V

    goto :goto_0

    .line 1706
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVObject$18;->val$list:Ljava/util/LinkedList;

    iget-boolean v4, p0, Lcom/avos/avoscloud/AVObject$18;->val$sync:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/avos/avoscloud/AVObject$18;->val$genericObjectCallback:Lcom/avos/avoscloud/GenericObjectCallback;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/avos/avoscloud/PaasClient;->postBatchSave(Ljava/util/List;ZZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
