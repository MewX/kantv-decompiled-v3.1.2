.class Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/samsung/multiscreen/MSFDSearchProvider$3;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MSFDSearchProvider$3;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 1

    .line 490
    iget-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider$3;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->access$702(Lcom/samsung/multiscreen/MSFDSearchProvider$3;Z)Z

    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Service;)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider$3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/multiscreen/MSFDSearchProvider$3;->access$602(Lcom/samsung/multiscreen/MSFDSearchProvider$3;Z)Z

    .line 478
    new-instance v0, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1$1;-><init>(Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;Lcom/samsung/multiscreen/Service;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 473
    check-cast p1, Lcom/samsung/multiscreen/Service;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/MSFDSearchProvider$3$1;->onSuccess(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method
