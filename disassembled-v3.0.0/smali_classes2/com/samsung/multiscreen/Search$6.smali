.class Lcom/samsung/multiscreen/Search$6;
.super Ljava/lang/Object;
.source "Search.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Search;->removeAndNotify(Lcom/samsung/multiscreen/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Search;

.field final synthetic val$service:Lcom/samsung/multiscreen/Service;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Search;Lcom/samsung/multiscreen/Service;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/samsung/multiscreen/Search$6;->this$0:Lcom/samsung/multiscreen/Search;

    iput-object p2, p0, Lcom/samsung/multiscreen/Search$6;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$6;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$800(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnServiceLostListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$6;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$800(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnServiceLostListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Search$6;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Search$OnServiceLostListener;->onLost(Lcom/samsung/multiscreen/Service;)V

    .line 519
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$6;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$700(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/samsung/multiscreen/Search$6;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v0}, Lcom/samsung/multiscreen/Search;->access$700(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/StandbyDeviceList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Search$6;->val$service:Lcom/samsung/multiscreen/Service;

    invoke-virtual {v0, v1}, Lcom/samsung/multiscreen/StandbyDeviceList;->getFoundStandbyService(Lcom/samsung/multiscreen/Service;)Lcom/samsung/multiscreen/Service;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v1, p0, Lcom/samsung/multiscreen/Search$6;->this$0:Lcom/samsung/multiscreen/Search;

    invoke-static {v1}, Lcom/samsung/multiscreen/Search;->access$900(Lcom/samsung/multiscreen/Search;)Lcom/samsung/multiscreen/Search$OnServiceFoundListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/multiscreen/Search$OnServiceFoundListener;->onFound(Lcom/samsung/multiscreen/Service;)V

    :cond_0
    return-void
.end method
