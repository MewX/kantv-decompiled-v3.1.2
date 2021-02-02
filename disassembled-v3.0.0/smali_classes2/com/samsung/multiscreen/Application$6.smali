.class Lcom/samsung/multiscreen/Application$6;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->doApplicationCallback(Lcom/samsung/multiscreen/Result;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;

.field final synthetic val$errorMap:Ljava/util/Map;

.field final synthetic val$obj:Ljava/lang/Object;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;Ljava/util/Map;Lcom/samsung/multiscreen/Result;Ljava/lang/Object;)V
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$6;->this$0:Lcom/samsung/multiscreen/Application;

    iput-object p2, p0, Lcom/samsung/multiscreen/Application$6;->val$errorMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/multiscreen/Application$6;->val$result:Lcom/samsung/multiscreen/Result;

    iput-object p4, p0, Lcom/samsung/multiscreen/Application$6;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 422
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$6;->val$errorMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-wide/16 v1, -0x1

    :try_start_0
    const-string v3, "code"

    .line 425
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 427
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    move-wide v1, v0

    goto :goto_1

    .line 428
    :cond_0
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 429
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 430
    :cond_1
    instance-of v3, v0, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 431
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$6;->val$result:Lcom/samsung/multiscreen/Result;

    iget-object v3, p0, Lcom/samsung/multiscreen/Application$6;->val$errorMap:Ljava/util/Map;

    invoke-static {v1, v2, v3}, Lcom/samsung/multiscreen/Error;->create(JLjava/util/Map;)Lcom/samsung/multiscreen/Error;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    goto :goto_2

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$6;->val$obj:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 440
    :try_start_1
    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/samsung/multiscreen/ApplicationInfo;->create(Ljava/util/Map;)Lcom/samsung/multiscreen/ApplicationInfo;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/samsung/multiscreen/Application$6;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 443
    :catch_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$6;->val$result:Lcom/samsung/multiscreen/Result;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/multiscreen/Application$6;->val$obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    goto :goto_2

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/samsung/multiscreen/Application$6;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
