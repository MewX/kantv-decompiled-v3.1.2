.class Lcom/samsung/multiscreen/Service$9;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->isDMPSupported(Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Device;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Service;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Service;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/samsung/multiscreen/Service$9;->this$0:Lcom/samsung/multiscreen/Service;

    iput-object p2, p0, Lcom/samsung/multiscreen/Service$9;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$9;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Device;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 772
    invoke-virtual {p1}, Lcom/samsung/multiscreen/Device;->getModel()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 775
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    :catch_0
    iget-object p1, p0, Lcom/samsung/multiscreen/Service$9;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 780
    :goto_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$9;->val$result:Lcom/samsung/multiscreen/Result;

    const/16 v2, 0xf

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 768
    check-cast p1, Lcom/samsung/multiscreen/Device;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Service$9;->onSuccess(Lcom/samsung/multiscreen/Device;)V

    return-void
.end method
