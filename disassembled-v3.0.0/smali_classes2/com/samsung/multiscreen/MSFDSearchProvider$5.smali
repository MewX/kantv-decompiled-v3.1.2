.class final Lcom/samsung/multiscreen/MSFDSearchProvider$5;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/samsung/multiscreen/Result;

.field final synthetic val$threadSocket:Ljava/net/MulticastSocket;


# direct methods
.method constructor <init>(Ljava/net/MulticastSocket;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$5;->val$threadSocket:Ljava/net/MulticastSocket;

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$5;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$5;->val$threadSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$5;->val$threadSocket:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 540
    :cond_0
    new-instance v0, Lcom/samsung/multiscreen/MSFDSearchProvider$5$1;

    invoke-direct {v0, p0}, Lcom/samsung/multiscreen/MSFDSearchProvider$5$1;-><init>(Lcom/samsung/multiscreen/MSFDSearchProvider$5;)V

    invoke-static {v0}, Lcom/samsung/multiscreen/util/RunUtil;->runOnUI(Ljava/lang/Runnable;)V

    return-void
.end method
