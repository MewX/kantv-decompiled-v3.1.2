.class Lcom/samsung/multiscreen/Application$3;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->connect(Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
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
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$3;->this$0:Lcom/samsung/multiscreen/Application;

    iput-object p2, p0, Lcom/samsung/multiscreen/Application$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$3;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Client;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$3;->this$0:Lcom/samsung/multiscreen/Application;

    new-instance v1, Lcom/samsung/multiscreen/Application$3$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/multiscreen/Application$3$1;-><init>(Lcom/samsung/multiscreen/Application$3;Lcom/samsung/multiscreen/Client;)V

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/Application;->start(Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 235
    check-cast p1, Lcom/samsung/multiscreen/Client;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Application$3;->onSuccess(Lcom/samsung/multiscreen/Client;)V

    return-void
.end method
