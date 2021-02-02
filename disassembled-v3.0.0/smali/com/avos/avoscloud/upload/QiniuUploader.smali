.class Lcom/avos/avoscloud/upload/QiniuUploader;
.super Lcom/avos/avoscloud/upload/HttpClientUploader;
.source "QiniuUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;,
        Lcom/avos/avoscloud/upload/QiniuUploader$QiniuMKFileResponseData;,
        Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;
    }
.end annotation


# static fields
.field static final BLOCK_SIZE:I = 0x400000

.field static final NONWIFI_CHUNK_SIZE:I = 0x10000

.field static final QINIU_BRICK_UPLOAD_EP:Ljava/lang/String; = "http://upload.qiniu.com/bput/%s/%d"

.field static final QINIU_CREATE_BLOCK_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkblk/%d"

.field static final QINIU_HOST:Ljava/lang/String; = "http://upload.qiniu.com"

.field static final QINIU_MKFILE_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkfile/%d/key/%s"

.field static final WIFI_CHUNK_SIZE:I = 0x40000

.field static final fileUploadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private blockCount:I

.field private fileKey:Ljava/lang/String;

.field private volatile mergeFileRequestCall:Lokhttp3/Call;

.field private progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

.field private volatile tasks:[Ljava/util/concurrent/Future;

.field private token:Ljava/lang/String;

.field uploadChunkSize:I

.field private uploadFileCtx:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 60
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/upload/QiniuUploader;->fileUploadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVFile;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p4, p5}, Lcom/avos/avoscloud/upload/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    const/high16 p1, 0x40000

    .line 58
    iput p1, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadChunkSize:I

    .line 54
    iput-object p2, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->token:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->fileKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/upload/QiniuUploader;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/upload/QiniuUploader;->addAuthHeader(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-static {p0, p1}, Lcom/avos/avoscloud/upload/QiniuUploader;->parseQiniuResponse(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private addAuthHeader(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    return-object p1
.end method

.method private makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuMKFileResponseData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://upload.qiniu.com/mkfile/%d/key/%s"

    const/4 v1, 0x2

    .line 148
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v2, ","

    .line 151
    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 153
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "text"

    .line 155
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/upload/QiniuUploader;->addAuthHeader(Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/avos/avoscloud/upload/QiniuUploader;->getOKHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->mergeFileRequestCall:Lokhttp3/Call;

    .line 158
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->mergeFileRequestCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuMKFileResponseData;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/upload/QiniuUploader;->parseQiniuResponse(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuMKFileResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    .line 161
    invoke-direct {p0, p1, p2, v1}, Lcom/avos/avoscloud/upload/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuMKFileResponseData;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Exception during file upload"

    .line 163
    invoke-static {p1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static parseQiniuResponse(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Response;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 172
    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Log"

    .line 174
    invoke-virtual {p0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x191

    if-eq v0, v3, :cond_3

    .line 179
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p0

    .line 181
    :try_start_0
    div-int/lit8 v3, v0, 0x64

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 182
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 188
    :catch_0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    .line 191
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 192
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "unauthorized to create Qiniu Block"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private uploadWithBlocks()Lcom/avos/avoscloud/AVException;
    .locals 17

    move-object/from16 v9, p0

    .line 87
    :try_start_0
    iget-object v0, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v0

    .line 88
    array-length v1, v0

    const/high16 v2, 0x400000

    div-int/2addr v1, v2

    array-length v3, v0

    rem-int/2addr v3, v2

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->blockCount:I

    .line 89
    iget v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->blockCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    .line 93
    new-instance v12, Ljava/util/concurrent/CountDownLatch;

    iget v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->blockCount:I

    invoke-direct {v12, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 94
    new-instance v1, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    iget v2, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->blockCount:I

    new-instance v3, Lcom/avos/avoscloud/upload/QiniuUploader$1;

    invoke-direct {v3, v9}, Lcom/avos/avoscloud/upload/QiniuUploader$1;-><init>(Lcom/avos/avoscloud/upload/QiniuUploader;)V

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;-><init>(ILcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;)V

    iput-object v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    .line 99
    iget v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->blockCount:I

    new-array v1, v1, [Ljava/util/concurrent/Future;

    iput-object v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    .line 100
    iget-object v13, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    .line 101
    :goto_1
    :try_start_1
    iget v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->blockCount:I

    if-ge v14, v1, :cond_1

    .line 102
    iget-object v15, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    sget-object v8, Lcom/avos/avoscloud/upload/QiniuUploader;->fileUploadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;

    iget v5, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadChunkSize:I

    iget-object v6, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    iget-object v4, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadFileCtx:[Ljava/lang/String;

    move-object v1, v7

    move-object v2, v0

    move v3, v14

    move-object/from16 v16, v4

    move-object v4, v12

    move-object v10, v7

    move-object/from16 v7, v16

    move-object v11, v8

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;-><init>([BILjava/util/concurrent/CountDownLatch;ILcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;[Ljava/lang/String;Lcom/avos/avoscloud/upload/QiniuUploader;)V

    .line 103
    invoke-interface {v11, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 106
    :cond_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    invoke-virtual {v12}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 108
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 109
    iget-object v0, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 110
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    .line 111
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 115
    :cond_3
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 118
    :cond_4
    array-length v0, v0

    iget-object v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->fileKey:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-direct {v9, v0, v1, v2}, Lcom/avos/avoscloud/upload/QiniuUploader;->makeFile(ILjava/lang/String;I)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuMKFileResponseData;

    move-result-object v0

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/avos/avoscloud/upload/QiniuUploader;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    .line 122
    iget-object v0, v0, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuMKFileResponseData;->key:Ljava/lang/String;

    iget-object v1, v9, Lcom/avos/avoscloud/upload/QiniuUploader;->fileKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, -0x1

    const-string v1, "upload file failure"

    .line 123
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    .line 106
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method


# virtual methods
.method public doWork()Lcom/avos/avoscloud/AVException;
    .locals 2

    .line 64
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    .line 67
    iput v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadChunkSize:I

    .line 69
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploading with chunk size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/avos/avoscloud/upload/QiniuUploader;->uploadWithBlocks()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method public interruptImmediately()V
    .locals 4

    .line 351
    invoke-super {p0}, Lcom/avos/avoscloud/upload/HttpClientUploader;->interruptImmediately()V

    .line 353
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    monitor-enter v0

    const/4 v1, 0x0

    .line 355
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->tasks:[Ljava/util/concurrent/Future;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 357
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 358
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 364
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->mergeFileRequestCall:Lokhttp3/Call;

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader;->mergeFileRequestCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_3
    return-void
.end method
