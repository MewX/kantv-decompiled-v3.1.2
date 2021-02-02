.class Lcom/samsung/multiscreen/MSFDSearchProvider$2;
.super Ljava/lang/Object;
.source "MSFDSearchProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/MSFDSearchProvider;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private numDiscover:I

.field final synthetic this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/MSFDSearchProvider;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 298
    iput p1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->numDiscover:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 303
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$400(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 307
    :cond_0
    iget v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->numDiscover:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->numDiscover:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$100(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/MulticastSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v1}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$400(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/net/DatagramPacket;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/samsung/multiscreen/MSFDSearchProvider$2;->this$0:Lcom/samsung/multiscreen/MSFDSearchProvider;

    invoke-static {v0}, Lcom/samsung/multiscreen/MSFDSearchProvider;->access$500(Lcom/samsung/multiscreen/MSFDSearchProvider;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 314
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSFDSearchProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
