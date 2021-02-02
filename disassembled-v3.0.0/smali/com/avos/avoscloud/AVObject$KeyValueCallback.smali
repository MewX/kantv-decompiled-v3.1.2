.class abstract Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.super Ljava/lang/Object;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "KeyValueCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/AVObject;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V
    .locals 0

    .line 1330
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;)V

    return-void
.end method


# virtual methods
.method public abstract createOp()Lcom/avos/avoscloud/ops/AVOp;
.end method

.method public execute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1333
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->execute(Ljava/lang/String;Z)V

    return-void
.end method

.method public execute(Ljava/lang/String;Z)V
    .locals 3

    .line 1337
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    .line 1338
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->createOp()Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v1

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1342
    :cond_0
    invoke-interface {v0, v1}, Lcom/avos/avoscloud/ops/AVOp;->merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    .line 1344
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v2, v2, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1345
    invoke-interface {v1, v2}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 1347
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object p2, p2, Lcom/avos/avoscloud/AVObject;->operationQueue:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    .line 1350
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object p2, p2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1351
    :cond_2
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object p2, p2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1352
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object p2, p2, Lcom/avos/avoscloud/AVObject;->serverData:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 1356
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVObject;->alwaysUsePost()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1359
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "__op"

    const-string v1, "Delete"

    .line 1360
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object v0, v0, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1363
    :cond_4
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object p2, p2, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1366
    :cond_5
    iget-object p2, p0, Lcom/avos/avoscloud/AVObject$KeyValueCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-object p2, p2, Lcom/avos/avoscloud/AVObject;->instanceData:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
