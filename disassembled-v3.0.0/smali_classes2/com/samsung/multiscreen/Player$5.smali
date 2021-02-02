.class Lcom/samsung/multiscreen/Player$5;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Player;->sendStartDMPApplicationRequest(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
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
.field final synthetic this$0:Lcom/samsung/multiscreen/Player;

.field final synthetic val$callback:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Player;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$5;->this$0:Lcom/samsung/multiscreen/Player;

    iput-object p2, p0, Lcom/samsung/multiscreen/Player$5;->val$callback:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 567
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Application;->closeConnection()V

    .line 568
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$5;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DMP Launch Failed with error message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$5;->val$callback:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_1

    .line 571
    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 558
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$5;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Player"

    const-string v0, "DMP Launched Successfully"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$5;->val$callback:Lcom/samsung/multiscreen/Result;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 561
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 554
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Player$5;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
