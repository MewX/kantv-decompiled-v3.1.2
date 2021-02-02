.class Lcom/samsung/multiscreen/Channel$3$2;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/koushikdutta/async/http/WebSocket$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel$3;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/multiscreen/Channel$3;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel$3;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$3$2;->this$1:Lcom/samsung/multiscreen/Channel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3$2;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$400(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->resetLastPingReceived()V

    .line 522
    :try_start_0
    invoke-static {p1}, Lcom/samsung/multiscreen/util/JSONUtil;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "event"

    .line 524
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ms.channel.connect"

    .line 530
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3$2;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$3$2;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object v1, v1, Lcom/samsung/multiscreen/Channel$3;->val$id:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/samsung/multiscreen/Channel;->access$500(Lcom/samsung/multiscreen/Channel;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3$2;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    iget-object v1, p0, Lcom/samsung/multiscreen/Channel$3$2;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object v1, v1, Lcom/samsung/multiscreen/Channel$3;->val$id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/multiscreen/Channel;->handleMessage(Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Channel"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
