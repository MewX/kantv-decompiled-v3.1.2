.class Lcom/samsung/multiscreen/Channel$7;
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

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$7;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$7;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$7;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_0

    .line 947
    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$7;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v1}, Lcom/samsung/multiscreen/Channel;->access$900(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Clients;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/multiscreen/Clients;->me()Lcom/samsung/multiscreen/Client;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/multiscreen/Result;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
