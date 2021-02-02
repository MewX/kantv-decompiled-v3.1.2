.class Lcom/samsung/multiscreen/MDNSSearchProvider$1;
.super Ljava/lang/Object;
.source "MDNSSearchProvider.java"

# interfaces
.implements Ljavax/jmdns/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/multiscreen/MDNSSearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/MDNSSearchProvider;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MDNSSearchProvider;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceAdded(Ljavax/jmdns/ServiceEvent;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider;

    iget-boolean v0, v0, Lcom/samsung/multiscreen/MDNSSearchProvider;->searching:Z

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;-><init>(Lcom/samsung/multiscreen/MDNSSearchProvider$1;Ljavax/jmdns/ServiceEvent;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public serviceRemoved(Ljavax/jmdns/ServiceEvent;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider;

    invoke-virtual {p1}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/MDNSSearchProvider;->getServiceById(Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider;

    invoke-virtual {v0, p1}, Lcom/samsung/multiscreen/MDNSSearchProvider;->removeServiceAndNotify(Lcom/samsung/multiscreen/Service;)V

    return-void
.end method

.method public serviceResolved(Ljavax/jmdns/ServiceEvent;)V
    .locals 0

    return-void
.end method
