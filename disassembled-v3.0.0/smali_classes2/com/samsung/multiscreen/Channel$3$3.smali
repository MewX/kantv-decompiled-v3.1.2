.class Lcom/samsung/multiscreen/Channel$3$3;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


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

    .line 541
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$3$3;->this$1:Lcom/samsung/multiscreen/Channel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3$3;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0}, Lcom/samsung/multiscreen/Channel;->access$400(Lcom/samsung/multiscreen/Channel;)Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Channel$ChannelConnectionHandler;->resetLastPingReceived()V

    .line 545
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3$3;->this$1:Lcom/samsung/multiscreen/Channel$3;

    iget-object v0, v0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0, p1, p2}, Lcom/samsung/multiscreen/Channel;->access$600(Lcom/samsung/multiscreen/Channel;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
