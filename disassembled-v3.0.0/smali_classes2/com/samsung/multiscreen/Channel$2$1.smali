.class Lcom/samsung/multiscreen/Channel$2$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel$2;->onSuccess(Lcom/samsung/multiscreen/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Client;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/Channel$2;

.field final synthetic val$newService:Lcom/samsung/multiscreen/Service;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel$2;Lcom/samsung/multiscreen/Service;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$2$1;->this$1:Lcom/samsung/multiscreen/Channel$2;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$2$1;->val$newService:Lcom/samsung/multiscreen/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 4

    .line 423
    new-instance v0, Lcom/samsung/multiscreen/ErrorCode;

    const-string v1, "ERROR_CONNECT_FAILED"

    invoke-direct {v0, v1}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$2$1;->this$1:Lcom/samsung/multiscreen/Channel$2;

    iget-object v1, v1, Lcom/samsung/multiscreen/Channel$2;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/multiscreen/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, v0, p1}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Client;)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$2$1;->this$1:Lcom/samsung/multiscreen/Channel$2;

    iget-object v0, v0, Lcom/samsung/multiscreen/Channel$2;->this$0:Lcom/samsung/multiscreen/Channel;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$2$1;->val$newService:Lcom/samsung/multiscreen/Service;

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/Channel;->access$102(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Service;)Lcom/samsung/multiscreen/Service;

    .line 418
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$2$1;->this$1:Lcom/samsung/multiscreen/Channel$2;

    iget-object v0, v0, Lcom/samsung/multiscreen/Channel$2;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 413
    check-cast p1, Lcom/samsung/multiscreen/Client;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Channel$2$1;->onSuccess(Lcom/samsung/multiscreen/Client;)V

    return-void
.end method
