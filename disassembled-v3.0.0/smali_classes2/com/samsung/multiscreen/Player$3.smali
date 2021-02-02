.class Lcom/samsung/multiscreen/Player$3;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Player;->launchStandbyScreen(Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Player$DMPStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Player;

.field final synthetic val$contentUrls:Ljava/lang/String;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Player;Lcom/samsung/multiscreen/Result;Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    iput-object p2, p0, Lcom/samsung/multiscreen/Player$3;->val$result:Lcom/samsung/multiscreen/Result;

    iput-object p3, p0, Lcom/samsung/multiscreen/Player$3;->val$contentUrls:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LaunchStandbyScreen: Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$3;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_1

    .line 481
    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V
    .locals 4

    const-string v0, "MediaPlayer"

    if-nez p1, :cond_1

    .line 445
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string v1, "PLAYER_ERROR_INVALID_TV_RESPONSE"

    invoke-direct {p1, v1}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDMPStatus() : Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$3;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_5

    .line 449
    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    goto/16 :goto_0

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Player;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMP AppName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMP Visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mVisible:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMP Running : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_2
    iget-object v0, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mDMPRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 461
    iget-object v0, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mAppName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    invoke-static {v1}, Lcom/samsung/multiscreen/Player;->access$100(Lcom/samsung/multiscreen/Player;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    iget-object p1, p1, Lcom/samsung/multiscreen/Player$DMPStatus;->mVisible:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 464
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    iget-object v0, p0, Lcom/samsung/multiscreen/Player$3;->val$contentUrls:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/multiscreen/Player$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-static {p1, v0, v1}, Lcom/samsung/multiscreen/Player;->access$200(Lcom/samsung/multiscreen/Player;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 468
    :cond_3
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    iget-object v0, p0, Lcom/samsung/multiscreen/Player$3;->val$contentUrls:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/multiscreen/Player$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-static {p1, v0, v1}, Lcom/samsung/multiscreen/Player;->access$200(Lcom/samsung/multiscreen/Player;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    .line 471
    :cond_4
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$3;->this$0:Lcom/samsung/multiscreen/Player;

    iget-object v0, p0, Lcom/samsung/multiscreen/Player$3;->val$contentUrls:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/multiscreen/Player$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-static {p1, v0, v1}, Lcom/samsung/multiscreen/Player;->access$200(Lcom/samsung/multiscreen/Player;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 442
    check-cast p1, Lcom/samsung/multiscreen/Player$DMPStatus;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Player$3;->onSuccess(Lcom/samsung/multiscreen/Player$DMPStatus;)V

    return-void
.end method
