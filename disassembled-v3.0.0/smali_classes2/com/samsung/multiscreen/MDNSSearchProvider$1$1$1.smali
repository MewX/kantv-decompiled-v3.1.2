.class Lcom/samsung/multiscreen/MDNSSearchProvider$1$1$1;
.super Ljava/lang/Object;
.source "MDNSSearchProvider.java"

# interfaces
.implements Lcom/samsung/multiscreen/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;->run()V
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
.field final synthetic this$2:Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1$1;->this$2:Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/multiscreen/Error;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1$1;->this$2:Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;->this$1:Lcom/samsung/multiscreen/MDNSSearchProvider$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/MDNSSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/MDNSSearchProvider;->addService(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/samsung/multiscreen/Service;

    invoke-virtual {p0, p1}, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1$1;->onSuccess(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method
