.class Lcom/samsung/multiscreen/Application$5;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->disconnect(ZLcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;

.field final synthetic val$me:Lcom/samsung/multiscreen/Client;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Result;Lcom/samsung/multiscreen/Client;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$5;->this$0:Lcom/samsung/multiscreen/Application;

    iput-object p2, p0, Lcom/samsung/multiscreen/Application$5;->val$result:Lcom/samsung/multiscreen/Result;

    iput-object p3, p0, Lcom/samsung/multiscreen/Application$5;->val$me:Lcom/samsung/multiscreen/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$5;->this$0:Lcom/samsung/multiscreen/Application;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/Application;->access$102(Lcom/samsung/multiscreen/Application;Z)Z

    .line 332
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$5;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .line 317
    iget-object p1, p0, Lcom/samsung/multiscreen/Application$5;->this$0:Lcom/samsung/multiscreen/Application;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/Application;->access$102(Lcom/samsung/multiscreen/Application;Z)Z

    .line 318
    iget-object p1, p0, Lcom/samsung/multiscreen/Application$5;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-static {p1}, Lcom/samsung/multiscreen/Application;->access$000(Lcom/samsung/multiscreen/Application;)Ljava/lang/Boolean;

    move-result-object p1

    monitor-enter p1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$5;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-static {v0}, Lcom/samsung/multiscreen/Application;->access$000(Lcom/samsung/multiscreen/Application;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$5;->this$0:Lcom/samsung/multiscreen/Application;

    iget-object v1, p0, Lcom/samsung/multiscreen/Application$5;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/Application;->access$200(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$5;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$5;->val$result:Lcom/samsung/multiscreen/Result;

    iget-object v1, p0, Lcom/samsung/multiscreen/Application$5;->val$me:Lcom/samsung/multiscreen/Client;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    .line 326
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 310
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Application$5;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
