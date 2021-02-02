.class Lcom/samsung/multiscreen/Player$4;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Player;->playContent(Lorg/json/JSONObject;Lcom/samsung/multiscreen/Player$ContentType;Lcom/samsung/multiscreen/Result;)V
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
.field final synthetic this$0:Lcom/samsung/multiscreen/Player;

.field final synthetic val$contentInfo:Lorg/json/JSONObject;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Player;Lorg/json/JSONObject;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/samsung/multiscreen/Player$4;->this$0:Lcom/samsung/multiscreen/Player;

    iput-object p2, p0, Lcom/samsung/multiscreen/Player$4;->val$contentInfo:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/samsung/multiscreen/Player$4;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/samsung/multiscreen/Player$4;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Client;)V
    .locals 2

    .line 509
    iget-object p1, p0, Lcom/samsung/multiscreen/Player$4;->this$0:Lcom/samsung/multiscreen/Player;

    iget-object v0, p0, Lcom/samsung/multiscreen/Player$4;->val$contentInfo:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/multiscreen/Player$4;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-static {p1, v0, v1}, Lcom/samsung/multiscreen/Player;->access$300(Lcom/samsung/multiscreen/Player;Lorg/json/JSONObject;Lcom/samsung/multiscreen/Result;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 506
    check-cast p1, Lcom/samsung/multiscreen/Client;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Player$4;->onSuccess(Lcom/samsung/multiscreen/Client;)V

    return-void
.end method
