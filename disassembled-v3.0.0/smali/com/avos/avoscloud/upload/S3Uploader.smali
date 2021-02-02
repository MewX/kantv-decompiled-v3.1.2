.class Lcom/avos/avoscloud/upload/S3Uploader;
.super Lcom/avos/avoscloud/upload/HttpClientUploader;
.source "S3Uploader.java"


# static fields
.field private static DEFAULT_HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field private static DEFAULT_HEADER_CACHE_CONTROL_VALUE:Ljava/lang/String; = "public, max-age=31536000"

.field private static final DEFAULT_MAX_WRITE_TIMEOUT:I = 0xf0

.field private static final DEFAULT_MIN_UPLOAD_RATE:I = 0xc800

.field private static final DEFAULT_MIN_WRITE_TIMEOUT:I = 0x1e

.field private static writeTimeout:I


# instance fields
.field private volatile call:Lokhttp3/Call;

.field private retryTimes:I

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVFile;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p3, p4}, Lcom/avos/avoscloud/upload/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    const/4 p1, 0x6

    .line 33
    iput p1, p0, Lcom/avos/avoscloud/upload/S3Uploader;->retryTimes:I

    .line 57
    iput-object p2, p0, Lcom/avos/avoscloud/upload/S3Uploader;->uploadUrl:Ljava/lang/String;

    return-void
.end method

.method private executeWithRetry([B)Lcom/avos/avoscloud/AVException;
    .locals 5

    if-eqz p1, :cond_5

    .line 72
    array-length v0, p1

    if-lez v0, :cond_5

    .line 73
    invoke-static {}, Lcom/avos/avoscloud/upload/S3Uploader;->getOKHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 75
    sget v1, Lcom/avos/avoscloud/upload/S3Uploader;->writeTimeout:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/upload/S3Uploader;->getWriteTimeoutByLength(I)I

    move-result v1

    :goto_0
    int-to-long v1, v1

    .line 76
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 78
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/upload/S3Uploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-static {v1}, Lcom/avos/avoscloud/utils/AVFileUtil;->getFileMimeType(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 88
    iget-object v3, p0, Lcom/avos/avoscloud/upload/S3Uploader;->uploadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "UTF-8"

    .line 93
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 96
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    const-string v3, "Content-Type"

    .line 99
    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 100
    sget-object v1, Lcom/avos/avoscloud/upload/FileUploader;->UPLOAD_HEADERS:Ljava/util/HashMap;

    sget-object v3, Lcom/avos/avoscloud/upload/S3Uploader;->DEFAULT_HEADER_CACHE_CONTROL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    sget-object v1, Lcom/avos/avoscloud/upload/S3Uploader;->DEFAULT_HEADER_CACHE_CONTROL:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/upload/S3Uploader;->DEFAULT_HEADER_CACHE_CONTROL_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 103
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/upload/FileUploader;->UPLOAD_HEADERS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    sget-object v4, Lcom/avos/avoscloud/upload/FileUploader;->UPLOAD_HEADERS:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/S3Uploader;->call:Lokhttp3/Call;

    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/upload/S3Uploader;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    if-eq v1, v2, :cond_5

    .line 113
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 115
    iget v1, p0, Lcom/avos/avoscloud/upload/S3Uploader;->retryTimes:I

    if-lez v1, :cond_3

    .line 116
    iget v0, p0, Lcom/avos/avoscloud/upload/S3Uploader;->retryTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/avos/avoscloud/upload/S3Uploader;->retryTimes:I

    .line 117
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/upload/S3Uploader;->executeWithRetry([B)Lcom/avos/avoscloud/AVException;

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload file failure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 123
    iget v1, p0, Lcom/avos/avoscloud/upload/S3Uploader;->retryTimes:I

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 124
    iput v1, p0, Lcom/avos/avoscloud/upload/S3Uploader;->retryTimes:I

    .line 125
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/upload/S3Uploader;->executeWithRetry([B)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    return-object p1

    .line 127
    :cond_4
    new-instance p1, Lcom/avos/avoscloud/AVException;

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getWriteTimeoutByLength(I)I
    .locals 2

    const v0, 0xc800

    .line 141
    div-int/2addr p1, v0

    const/16 v0, 0xf0

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0xf0

    :cond_1
    :goto_0
    return p1
.end method

.method public static setWriteTimeout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    if-lez p0, :cond_1

    const/16 v0, 0xe10

    if-gt p0, v0, :cond_0

    .line 162
    sput p0, Lcom/avos/avoscloud/upload/S3Uploader;->writeTimeout:I

    return-void

    .line 160
    :cond_0
    new-instance p0, Lcom/avos/avoscloud/AVException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 157
    :cond_1
    new-instance p0, Lcom/avos/avoscloud/AVException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public doWork()Lcom/avos/avoscloud/AVException;
    .locals 2

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/upload/S3Uploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/upload/S3Uploader;->executeWithRetry([B)Lcom/avos/avoscloud/AVException;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 67
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method
