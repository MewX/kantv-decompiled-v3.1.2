.class final Lcom/samsung/multiscreen/MSFDSearchProvider$6;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Lcom/samsung/multiscreen/MSFDSearchProvider$FutureRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;->getById(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)Lcom/samsung/multiscreen/ProviderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private numDiscover:I

.field final synthetic val$discoverPacket:Ljava/net/DatagramPacket;

.field final synthetic val$threadSocket:Ljava/net/MulticastSocket;


# direct methods
.method constructor <init>(Ljava/net/MulticastSocket;Ljava/net/DatagramPacket;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->val$threadSocket:Ljava/net/MulticastSocket;

    iput-object p2, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->val$discoverPacket:Ljava/net/DatagramPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 551
    iput p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->numDiscover:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 557
    :try_start_0
    iget v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->numDiscover:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->numDiscover:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->val$threadSocket:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->val$discoverPacket:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 563
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSFDSearchProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setFuture(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$6;->future:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
