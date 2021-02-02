.class Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "AVHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProgressResponseBody"
.end annotation


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private final progressListener:Lcom/avos/avoscloud/AVHttpClient$ProgressListener;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method constructor <init>(Lokhttp3/ResponseBody;Lcom/avos/avoscloud/AVHttpClient$ProgressListener;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 148
    iput-object p2, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->progressListener:Lcom/avos/avoscloud/AVHttpClient$ProgressListener;

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;)Lokhttp3/ResponseBody;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-object p0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;)Lcom/avos/avoscloud/AVHttpClient$ProgressListener;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->progressListener:Lcom/avos/avoscloud/AVHttpClient$ProgressListener;

    return-object p0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 170
    new-instance v0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody$1;-><init>(Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVHttpClient$ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
