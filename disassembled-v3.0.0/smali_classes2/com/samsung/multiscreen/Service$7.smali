.class final Lcom/samsung/multiscreen/Service$7;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Service;->WakeUpAndConnect(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/multiscreen/Result<",
        "Lcom/samsung/multiscreen/Service;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$connectCallback:Lcom/samsung/multiscreen/Result;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/samsung/multiscreen/Service$7;->val$uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/samsung/multiscreen/Service$7;->val$connectCallback:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 486
    invoke-static {}, Lcom/samsung/multiscreen/Service;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object p1, p0, Lcom/samsung/multiscreen/Service$7;->val$uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/multiscreen/Service$7;->val$connectCallback:Lcom/samsung/multiscreen/Result;

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/Service;->access$300(Landroid/net/Uri;Lcom/samsung/multiscreen/Result;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 489
    invoke-static {v0}, Lcom/samsung/multiscreen/Service;->access$202(Z)Z

    .line 490
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$7;->val$connectCallback:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onError(Lcom/samsung/multiscreen/Error;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    const/4 v0, 0x0

    .line 496
    invoke-static {v0}, Lcom/samsung/multiscreen/Service;->access$202(Z)Z

    .line 497
    iget-object v0, p0, Lcom/samsung/multiscreen/Service$7;->val$connectCallback:Lcom/samsung/multiscreen/Result;

    invoke-interface {v0, p1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 483
    check-cast p1, Lcom/samsung/multiscreen/Service;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/Service$7;->onSuccess(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method
