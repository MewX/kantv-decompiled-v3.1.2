.class Lcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;
.super Ljava/lang/Object;
.source "AVHttpClient.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressInterceptor"
.end annotation


# instance fields
.field private progressListener:Lcom/avos/avoscloud/AVHttpClient$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVHttpClient$ProgressListener;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;->progressListener:Lcom/avos/avoscloud/AVHttpClient$ProgressListener;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;

    .line 135
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object v2, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressInterceptor;->progressListener:Lcom/avos/avoscloud/AVHttpClient$ProgressListener;

    invoke-direct {v1, p1, v2}, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/avos/avoscloud/AVHttpClient$ProgressListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
