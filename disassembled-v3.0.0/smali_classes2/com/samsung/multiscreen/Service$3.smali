.class final Lcom/samsung/multiscreen/Service$3;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/samsung/multiscreen/Result;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$threads:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/multiscreen/Service$3;->val$threads:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/multiscreen/Service$3;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/multiscreen/Service$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private chooseResult()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$3;->val$results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 291
    instance-of v3, v2, Lcom/samsung/multiscreen/Service;

    if-eqz v3, :cond_1

    .line 292
    check-cast v2, Lcom/samsung/multiscreen/Service;

    .line 293
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, v2}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez v1, :cond_0

    .line 295
    instance-of v3, v2, Lcom/samsung/multiscreen/Error;

    if-eqz v3, :cond_0

    .line 296
    check-cast v2, Lcom/samsung/multiscreen/Error;

    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 301
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$3;->val$threads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/multiscreen/ProviderThread;

    .line 275
    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/multiscreen/ProviderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/samsung/multiscreen/Service$3;->chooseResult()V

    return-void
.end method
