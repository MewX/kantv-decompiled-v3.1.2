.class Lcom/samsung/multiscreen/Search$1;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Lcom/samsung/multiscreen/Search$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Search;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Search;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFound(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0, p1}, Lcom/samsung/multiscreen/Search;->access$600(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/samsung/multiscreen/Search$1$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Search$1$3;-><init>(Lcom/samsung/multiscreen/Search$1;Lcom/samsung/multiscreen/Service;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFoundOnlyBLE(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1100(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnBleFoundListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/samsung/multiscreen/Search$1$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/Search$1$4;-><init>(Lcom/samsung/multiscreen/Search$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLost(Lcom/samsung/multiscreen/Service;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0, p1}, Lcom/samsung/multiscreen/Search;->access$1000(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/Service;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$006(Lcom/samsung/multiscreen/Search;)I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$100(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnStartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/multiscreen/Search$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Search$1$1;-><init>(Lcom/samsung/multiscreen/Search$1;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$206(Lcom/samsung/multiscreen/Search;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$300(Lcom/samsung/multiscreen/Search;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Search;->removeAllProviders()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$400(Lcom/samsung/multiscreen/Search;)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$1;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$500(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnStopListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Lcom/samsung/multiscreen/Search$1$2;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/Search$1$2;-><init>(Lcom/samsung/multiscreen/Search$1;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
