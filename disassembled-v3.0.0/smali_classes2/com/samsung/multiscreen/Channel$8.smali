.class Lcom/samsung/multiscreen/Channel$8;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel;->handleConnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$8;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$8;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$1000(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$8;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$1000(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$8;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v1}, Lcom/samsung/multiscreen/Channel;->access$900(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Clients;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Channel$OnConnectListener;->onConnect(Lcom/samsung/multiscreen/Client;)V

    :cond_0
    return-void
.end method
