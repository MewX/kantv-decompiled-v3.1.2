.class Lcom/samsung/multiscreen/Search$4;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Search;->startDiscoveryUsingBle()V
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

    .line 445
    iput-object p1, p0, Lcom/samsung/multiscreen/Search$4;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$4;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1300(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/SearchProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/SearchProvider;->start()V

    .line 448
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$4;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1200(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$SearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/multiscreen/Search$SearchListener;->onStart()V

    .line 449
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$4;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1300(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/SearchProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/SearchProvider;->isSearching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$4;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$1200(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$SearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/multiscreen/Search$SearchListener;->onStop()V

    :cond_0
    return-void
.end method
