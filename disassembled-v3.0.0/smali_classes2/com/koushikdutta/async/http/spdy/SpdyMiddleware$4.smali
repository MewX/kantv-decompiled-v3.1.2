.class Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;
.super Ljava/lang/Object;
.source "SpdyMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/future/SimpleCancellable;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iput-object p3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;)V
    .locals 2

    .line 376
    instance-of v0, p1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    if-eqz v0, :cond_0

    .line 377
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string p2, "spdy not available"

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    invoke-static {p2, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$601(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/future/SimpleCancellable;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleCancellable;

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 382
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {p2}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 383
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object p2, p2, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/callback/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    :cond_1
    return-void

    .line 386
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object p1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using existing spdy connection for host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, v1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$ret:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {p1}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 388
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->this$0:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->connectCallback:Lcom/koushikdutta/async/callback/ConnectCallback;

    invoke-static {p1, v0, p2, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->access$400(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 373
    check-cast p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;)V

    return-void
.end method
