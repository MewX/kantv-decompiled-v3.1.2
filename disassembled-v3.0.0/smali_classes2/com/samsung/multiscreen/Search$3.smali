.class Lcom/samsung/multiscreen/Search$3;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Search;->stopDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Search;

.field final synthetic val$provider:Lcom/samsung/multiscreen/SearchProvider;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/SearchProvider;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/samsung/multiscreen/Search$3;->this$0:Lcom/samsung/multiscreen/Search;

    iput-object p2, p0, Lcom/samsung/multiscreen/Search$3;->val$provider:Lcom/samsung/multiscreen/SearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$3;->val$provider:Lcom/samsung/multiscreen/SearchProvider;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/SearchProvider;->stop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$3;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1200(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$SearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/multiscreen/Search$SearchListener;->onStop()V

    .line 429
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$3;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$700(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$3;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$700(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/StandbyDeviceList;->stop()V

    :cond_0
    return-void
.end method
