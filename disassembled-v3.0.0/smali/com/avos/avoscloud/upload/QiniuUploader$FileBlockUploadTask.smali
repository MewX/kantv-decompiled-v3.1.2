.class Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;
.super Ljava/lang/Object;
.source "QiniuUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/upload/QiniuUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileBlockUploadTask"
.end annotation


# instance fields
.field private blockOffset:I

.field private bytes:[B

.field latch:Ljava/util/concurrent/CountDownLatch;

.field parent:Lcom/avos/avoscloud/upload/QiniuUploader;

.field progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

.field final uploadChunkSize:I

.field uploadFileCtx:[Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/util/concurrent/CountDownLatch;ILcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;[Ljava/lang/String;Lcom/avos/avoscloud/upload/QiniuUploader;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->bytes:[B

    .line 210
    iput p2, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    .line 211
    iput-object p3, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 212
    iput p4, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    .line 213
    iput-object p5, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    .line 214
    iput-object p6, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->uploadFileCtx:[Ljava/lang/String;

    .line 215
    iput-object p7, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/upload/QiniuUploader;

    return-void
.end method

.method private createBlockInQiniu(III[B)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;
    .locals 4

    .line 246
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "try to mkblk"

    .line 247
    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_0
    const-string v0, "http://upload.qiniu.com/mkblk/%d"

    const/4 v1, 0x1

    .line 249
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 251
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 254
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->getNextChunkSize(I[B)I

    move-result v0

    .line 256
    sget-object v2, Lcom/avos/avoscloud/AVFile;->DEFAULTMIMETYPE:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    const/high16 v3, 0x400000

    mul-int v3, v3, p1

    invoke-static {v2, p4, v3, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v0

    .line 259
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/upload/QiniuUploader;

    invoke-static {v1, v0}, Lcom/avos/avoscloud/upload/QiniuUploader;->access$000(Lcom/avos/avoscloud/upload/QiniuUploader;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/avos/avoscloud/upload/HttpClientUploader;->getOKHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    const-class v1, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/upload/QiniuUploader;->access$100(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_1

    .line 266
    invoke-direct {p0, p1, p2, v1, p4}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Exception during file upload"

    .line 268
    invoke-static {p1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getCurrentBlockSize([BI)I
    .locals 2

    .line 337
    array-length v0, p1

    const/high16 v1, 0x400000

    mul-int p2, p2, v1

    sub-int/2addr v0, p2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p1

    sub-int v1, p1, p2

    :goto_0
    return v1
.end method

.method private getNextChunkSize(I[B)I
    .locals 2

    .line 343
    array-length v0, p2

    const/high16 v1, 0x400000

    mul-int p1, p1, v1

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p2

    sub-int v1, p2, p1

    :goto_0
    return v1
.end method

.method private putFileBlocksToQiniu(I[BLcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;
    .locals 7

    .line 277
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->getCurrentBlockSize([BI)I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    iget v2, p3, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->offset:I

    mul-int/lit8 v2, v2, 0x64

    const/high16 v3, 0x400000

    div-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->publishProgress(II)V

    .line 280
    iget v1, p3, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->offset:I

    sub-int v1, v0, v1

    if-lez v1, :cond_4

    .line 282
    iget v2, p3, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-lez v2, :cond_4

    :try_start_0
    const-string v2, "http://upload.qiniu.com/bput/%s/%d"

    const/4 v4, 0x2

    .line 284
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p3, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p3, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->offset:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 285
    new-instance v4, Lokhttp3/Request$Builder;

    invoke-direct {v4}, Lokhttp3/Request$Builder;-><init>()V

    .line 286
    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v2, "Content-Type"

    const-string v5, "application/octet-stream"

    .line 287
    invoke-virtual {v4, v2, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 290
    iget v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->uploadChunkSize:I

    .line 293
    :cond_0
    sget-object v2, Lcom/avos/avoscloud/AVFile;->DEFAULTMIMETYPE:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    mul-int v3, v3, p1

    iget v5, p3, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->offset:I

    add-int/2addr v5, v3

    invoke-static {v2, p2, v5, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v2

    .line 298
    invoke-virtual {v4, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 299
    iget-object v4, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->parent:Lcom/avos/avoscloud/upload/QiniuUploader;

    invoke-static {v4, v2}, Lcom/avos/avoscloud/upload/QiniuUploader;->access$000(Lcom/avos/avoscloud/upload/QiniuUploader;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 301
    invoke-static {}, Lcom/avos/avoscloud/upload/HttpClientUploader;->getOKHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v4, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    const-class v4, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    invoke-static {v2, v4}, Lcom/avos/avoscloud/upload/QiniuUploader;->access$100(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    .line 303
    iget v4, p3, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->offset:I

    add-int/2addr v3, v4

    invoke-direct {p0, v2, p2, v3, v1}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->validateCrc32Value(Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;[BII)V

    if-eqz v2, :cond_3

    .line 305
    iget v1, v2, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->offset:I

    if-ge v1, v0, :cond_1

    const/4 v0, 0x6

    .line 306
    invoke-direct {p0, p1, p2, v2, v0}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    add-int/lit8 v1, p4, -0x1

    if-lez p4, :cond_2

    .line 314
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "Exception during file upload"

    .line 316
    invoke-static {p1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :cond_4
    return-object p3
.end method

.method private validateCrc32Value(Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 328
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 329
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    if-eqz p1, :cond_1

    .line 330
    iget-wide v0, p1, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->crc32:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/4 p2, -0x1

    const-string p3, "CRC32 validation failure for chunk upload"

    invoke-direct {p1, p2, p3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->bytes:[B

    iget v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    .line 222
    invoke-direct {p0, v0, v1}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->getCurrentBlockSize([BI)I

    move-result v0

    .line 223
    iget v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    iget-object v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->bytes:[B

    const/4 v3, 0x6

    .line 224
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->createBlockInQiniu(III[B)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    iget-object v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->bytes:[B

    .line 228
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->putFileBlocksToQiniu(I[BLcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;I)Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->uploadFileCtx:[Ljava/lang/String;

    iget v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    iget-object v0, v0, Lcom/avos/avoscloud/upload/QiniuUploader$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    aput-object v0, v1, v2

    .line 232
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    iget v1, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->blockOffset:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->publishProgress(II)V

    goto :goto_1

    .line 234
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/4 v1, -0x1

    const-string v2, "Upload File failure"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 235
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 237
    iget-object v2, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    .line 240
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QiniuUploader$FileBlockUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
