.class Lcom/samsung/multiscreen/Application$7;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Application;->handleReadyMessage(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Application;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Application;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/samsung/multiscreen/Application$7;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/samsung/multiscreen/Application$7;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-static {v0}, Lcom/samsung/multiscreen/Application;->access$300(Lcom/samsung/multiscreen/Application;)Lcom/samsung/multiscreen/Channel$OnConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Application$7;->this$0:Lcom/samsung/multiscreen/Application;

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Application;->getClients()Lcom/samsung/multiscreen/Clients;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Channel$OnConnectListener;->onConnect(Lcom/samsung/multiscreen/Client;)V

    return-void
.end method
