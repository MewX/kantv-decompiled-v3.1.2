.class Lcom/samsung/multiscreen/Channel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel;->setSecurityMode(ZLcom/samsung/multiscreen/Result;)V
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
.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$1;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$1;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$1;->this$0:Lcom/samsung/multiscreen/Channel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/multiscreen/Channel;->securityMode:Z

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set security mode true onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Channel"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$1;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$1;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/multiscreen/Channel;->securityMode:Z

    .line 292
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$1;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 287
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Channel$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
