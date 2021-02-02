.class Lcom/samsung/multiscreen/Channel$4;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel;->handleSocketClosedAndNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;

.field final synthetic val$client:Lcom/samsung/multiscreen/Client;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Client;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$4;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$4;->val$client:Lcom/samsung/multiscreen/Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$4;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$700(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnDisconnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$4;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$700(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$OnDisconnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$4;->val$client:Lcom/samsung/multiscreen/Client;

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Channel$OnDisconnectListener;->onDisconnect(Lcom/samsung/multiscreen/Client;)V

    :cond_0
    return-void
.end method
