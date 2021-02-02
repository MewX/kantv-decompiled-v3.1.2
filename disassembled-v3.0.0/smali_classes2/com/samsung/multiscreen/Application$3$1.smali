.class Lcom/samsung/multiscreen/Application$3$1;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application$3;->onSuccess(Lcom/samsung/multiscreen/Client;)V
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
.field final synthetic this$1:Lcom/samsung/multiscreen/Application$3;

.field final synthetic val$client:Lcom/samsung/multiscreen/Client;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application$3;Lcom/samsung/multiscreen/Client;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$3$1;->this$1:Lcom/samsung/multiscreen/Application$3;

    iput-object p2, p0, Lcom/samsung/multiscreen/Application$3$1;->val$client:Lcom/samsung/multiscreen/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$3$1;->this$1:Lcom/samsung/multiscreen/Application$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Application$3;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Application;->closeConnection()V

    .line 256
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$3$1;->this$1:Lcom/samsung/multiscreen/Application$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Application$3;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$3$1;->this$1:Lcom/samsung/multiscreen/Application$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Application$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/samsung/multiscreen/Application$3$1;->this$1:Lcom/samsung/multiscreen/Application$3;

    iget-object p1, p1, Lcom/samsung/multiscreen/Application$3;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/samsung/multiscreen/Application$3$1;->this$1:Lcom/samsung/multiscreen/Application$3;

    iget-object p1, p1, Lcom/samsung/multiscreen/Application$3;->val$result:Lcom/samsung/multiscreen/Result;

    iget-object v0, p0, Lcom/samsung/multiscreen/Application$3$1;->val$client:Lcom/samsung/multiscreen/Client;

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/samsung/multiscreen/Application$3$1;->this$1:Lcom/samsung/multiscreen/Application$3;

    iget-object p1, p1, Lcom/samsung/multiscreen/Application$3;->this$0:Lcom/samsung/multiscreen/Application;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/Application;->access$002(Lcom/samsung/multiscreen/Application;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Application$3$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
