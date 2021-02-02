.class public abstract Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpStreamResponseHandler.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field protected callback:Lcom/avos/avoscloud/GenericObjectCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-void
.end method

.method static getHeaders(Lokhttp3/Headers;)[Lorg/apache/http/Header;
    .locals 5

    if-eqz p0, :cond_1

    .line 51
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 54
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v4, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected getCallback()Lcom/avos/avoscloud/GenericObjectCallback;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-object v0
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 38
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;->getHeaders(Lokhttp3/Headers;)[Lorg/apache/http/Header;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;->getHeaders(Lokhttp3/Headers;)[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/InputStream;)V

    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/io/InputStream;)V
.end method

.method protected setCallback(Lcom/avos/avoscloud/GenericObjectCallback;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/avos/avoscloud/AsyncHttpStreamResponseHandler;->callback:Lcom/avos/avoscloud/GenericObjectCallback;

    return-void
.end method
