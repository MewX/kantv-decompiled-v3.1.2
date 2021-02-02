.class Lcom/koushikdutta/async/http/AsyncHttpClient$3;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->executeAffinity(Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field reported:Z

.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

.field final synthetic val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

.field final synthetic val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

.field final synthetic val$redirectCount:I

.field final synthetic val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;I)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    iput-object p5, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iput p6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$redirectCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 257
    iget-boolean v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->reported:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v2, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 260
    new-instance v2, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v2}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 261
    invoke-interface/range {p2 .. p2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    .line 262
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "double connect callback"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 265
    iput-boolean v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->reported:Z

    .line 267
    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    const-string v3, "socket connected"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->logv(Ljava/lang/String;)V

    .line 268
    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    .line 270
    invoke-interface/range {p2 .. p2}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    :cond_2
    return-void

    .line 275
    :cond_3
    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 276
    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v2, v2, Lcom/koushikdutta/async/http/AsyncHttpClient;->mServer:Lcom/koushikdutta/async/AsyncServer;

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iget-object v3, v3, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->scheduled:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/AsyncServer;->removeAllCallbacks(Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 279
    iget-object v4, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v5, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget-object v9, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$200(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;)V

    return-void

    .line 283
    :cond_5
    iget-object v15, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$data:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;

    iput-object v1, v15, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 284
    iget-object v13, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$cancel:Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;

    iput-object v1, v13, Lcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;->socket:Lcom/koushikdutta/async/AsyncSocket;

    .line 286
    iget-object v10, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v11, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    iget v12, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$redirectCount:I

    iget-object v14, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$3;->val$callback:Lcom/koushikdutta/async/http/callback/HttpConnectCallback;

    invoke-static/range {v10 .. v15}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$300(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/AsyncHttpRequest;ILcom/koushikdutta/async/http/AsyncHttpClient$FutureAsyncHttpResponse;Lcom/koushikdutta/async/http/callback/HttpConnectCallback;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V

    return-void
.end method
