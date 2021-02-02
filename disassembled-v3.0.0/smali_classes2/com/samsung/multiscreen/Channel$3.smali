.class Lcom/samsung/multiscreen/Channel$3;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/multiscreen/Channel;->connect(Landroid/net/Uri;Ljava/util/Map;Lcom/samsung/multiscreen/Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/multiscreen/Channel;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$result:Lcom/samsung/multiscreen/Result;


# direct methods
.method constructor <init>(Lcom/samsung/multiscreen/Channel;Ljava/lang/String;Lcom/samsung/multiscreen/Result;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    iput-object p2, p0, Lcom/samsung/multiscreen/Channel$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/multiscreen/Channel$3;->val$result:Lcom/samsung/multiscreen/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-virtual {v0}, Lcom/samsung/multiscreen/Channel;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect completed socket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Channel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_1

    .line 494
    new-instance p1, Lcom/samsung/multiscreen/ErrorCode;

    const-string p2, "ERROR_CONNECT_FAILED"

    invoke-direct {p1, p2}, Lcom/samsung/multiscreen/ErrorCode;-><init>(Ljava/lang/String;)V

    .line 495
    iget-object p2, p0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3;->val$id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->value()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Lcom/samsung/multiscreen/ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Connect failed"

    invoke-static {v1, v2, p1, v3}, Lcom/samsung/multiscreen/Error;->create(JLjava/lang/String;Ljava/lang/String;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/samsung/multiscreen/Channel;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    invoke-static {v0, p2}, Lcom/samsung/multiscreen/Channel;->access$202(Lcom/samsung/multiscreen/Channel;Lcom/koushikdutta/async/http/WebSocket;)Lcom/koushikdutta/async/http/WebSocket;

    if-eqz p1, :cond_2

    .line 502
    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3;->val$result:Lcom/samsung/multiscreen/Result;

    if-eqz v0, :cond_2

    .line 503
    iget-object p2, p0, Lcom/samsung/multiscreen/Channel$3;->this$0:Lcom/samsung/multiscreen/Channel;

    iget-object v0, p0, Lcom/samsung/multiscreen/Channel$3;->val$id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/multiscreen/Error;->create(Ljava/lang/Exception;)Lcom/samsung/multiscreen/Error;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/samsung/multiscreen/Channel;->handleError(Ljava/lang/String;Lcom/samsung/multiscreen/Error;)V

    return-void

    .line 508
    :cond_2
    new-instance p1, Lcom/samsung/multiscreen/Channel$3$1;

    invoke-direct {p1, p0}, Lcom/samsung/multiscreen/Channel$3$1;-><init>(Lcom/samsung/multiscreen/Channel$3;)V

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/WebSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 516
    new-instance p1, Lcom/samsung/multiscreen/Channel$3$2;

    invoke-direct {p1, p0}, Lcom/samsung/multiscreen/Channel$3$2;-><init>(Lcom/samsung/multiscreen/Channel$3;)V

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/WebSocket;->setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V

    .line 541
    new-instance p1, Lcom/samsung/multiscreen/Channel$3$3;

    invoke-direct {p1, p0}, Lcom/samsung/multiscreen/Channel$3$3;-><init>(Lcom/samsung/multiscreen/Channel$3;)V

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/WebSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method
