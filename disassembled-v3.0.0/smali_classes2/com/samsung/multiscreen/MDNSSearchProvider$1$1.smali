.class Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;
.super Ljava/lang/Object;
.source "MDNSSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MDNSSearchProvider$1;->serviceAdded(Ljavax/jmdns/ServiceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/MDNSSearchProvider$1;

.field final synthetic val$serviceEvent:Ljavax/jmdns/ServiceEvent;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MDNSSearchProvider$1;Ljavax/jmdns/ServiceEvent;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;->this$1:Lcom/samsung/multiscreen/MDNSSearchProvider$1;

    iput-object p2, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;->val$serviceEvent:Ljavax/jmdns/ServiceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;->this$1:Lcom/samsung/multiscreen/MDNSSearchProvider$1;

    iget-object v0, v0, Lcom/samsung/multiscreen/MDNSSearchProvider$1;->this$0:Lcom/samsung/multiscreen/MDNSSearchProvider;

    invoke-static {v0}, Lcom/samsung/multiscreen/MDNSSearchProvider;->access$000(Lcom/samsung/multiscreen/MDNSSearchProvider;)Ljavax/jmdns/JmDNS;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;->val$serviceEvent:Ljavax/jmdns/ServiceEvent;

    .line 72
    invoke-virtual {v1}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;->val$serviceEvent:Ljavax/jmdns/ServiceEvent;

    invoke-virtual {v2}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, v2}, Lcom/samsung/multiscreen/MDNSSearchProvider;->getService(Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Service;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/multiscreen/Service;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x7d0

    new-instance v2, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/multiscreen/MDNSSearchProvider$1$1$1;-><init>(Lcom/samsung/multiscreen/MDNSSearchProvider$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/multiscreen/Service;->getByURI(Landroid/net/Uri;ILcom/samsung/multiscreen/Result;)V

    :cond_1
    :goto_0
    return-void
.end method
