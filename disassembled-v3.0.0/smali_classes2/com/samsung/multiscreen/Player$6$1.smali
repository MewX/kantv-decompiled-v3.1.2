.class Lcom/samsung/multiscreen/Player$6$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Player$6;->onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V
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
.field final synthetic this$1:Lcom/samsung/multiscreen/Player$6;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Player$6;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 664
    sget-object v0, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Application;->closeConnection()V

    .line 665
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object v0, v0, Lcom/samsung/multiscreen/Player$6;->this$0:Lcom/samsung/multiscreen/Player;

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

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object v0, v0, Lcom/samsung/multiscreen/Player$6;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object v0, v0, Lcom/samsung/multiscreen/Player$6;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 3

    .line 649
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$6;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result p1

    const-string v0, "Player"

    if-eqz p1, :cond_0

    const-string p1, "DMP Launched Successfully, Sending ChangePlayingContent Request.."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$6;->val$data:Lorg/json/JSONObject;

    const-string v1, "subEvent"

    sget-object v2, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->CHANGEPLAYINGCONTENT:Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$PlayerContentSubEvents;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$6;->val$data:Lorg/json/JSONObject;

    const-string v1, "playerType"

    iget-object v2, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object v2, v2, Lcom/samsung/multiscreen/Player$6;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-static {v2}, Lcom/samsung/multiscreen/Player;->access$400(Lcom/samsung/multiscreen/Player;)Lcom/samsung/multiscreen/Player$ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/multiscreen/Player$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    sget-object p1, Lcom/samsung/multiscreen/Player;->mApplication:Lcom/samsung/multiscreen/Application;

    iget-object v0, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object v0, v0, Lcom/samsung/multiscreen/Player$6;->val$data:Lorg/json/JSONObject;

    const-string v1, "playerContentChange"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/multiscreen/Application;->publish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$6;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object p1, p1, Lcom/samsung/multiscreen/Player$6;->val$result:Lcom/samsung/multiscreen/Result;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 654
    iget-object v1, p0, Lcom/samsung/multiscreen/Player$6$1;->this$1:Lcom/samsung/multiscreen/Player$6;

    iget-object v1, v1, Lcom/samsung/multiscreen/Player$6;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating ChangePlayingContent Request : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 645
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Player$6$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
