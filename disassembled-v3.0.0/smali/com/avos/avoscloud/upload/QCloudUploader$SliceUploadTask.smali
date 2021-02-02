.class public Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;
.super Ljava/lang/Object;
.source "QCloudUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/upload/QCloudUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceUploadTask"
.end annotation


# instance fields
.field data:[B

.field key:Ljava/lang/String;

.field latch:Ljava/util/concurrent/CountDownLatch;

.field parent:Lcom/avos/avoscloud/upload/QCloudUploader;

.field progress:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

.field session:Ljava/lang/String;

.field sliceOffset:I

.field token:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/upload/QCloudUploader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p5, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->data:[B

    .line 240
    iput p6, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->sliceOffset:I

    .line 241
    iput-object p8, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->progress:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    .line 242
    iput-object p7, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->session:Ljava/lang/String;

    .line 243
    iput-object p9, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 244
    iput-object p2, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->key:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->token:Ljava/lang/String;

    .line 246
    iput-object p4, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->url:Ljava/lang/String;

    .line 247
    iput-object p1, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->parent:Lcom/avos/avoscloud/upload/QCloudUploader;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->upload()Ljava/lang/String;

    return-void
.end method

.method public upload()Ljava/lang/String;
    .locals 8

    const-string v0, "multipart/form-data"

    .line 257
    :try_start_0
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    const-string v2, "application/octet-stream"

    .line 259
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->data:[B

    iget v4, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->sliceOffset:I

    const/high16 v5, 0x80000

    mul-int v4, v4, v5

    iget v6, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->sliceOffset:I

    iget-object v7, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->data:[B

    array-length v7, v7

    .line 261
    invoke-static {v6, v7}, Lcom/avos/avoscloud/upload/QCloudUploader;->access$000(II)I

    move-result v6

    .line 259
    invoke-static {v2, v3, v4, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v2

    const-string v3, "filecontent"

    .line 262
    iget-object v4, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    const-string v2, "op"

    const-string v3, "upload_slice"

    .line 263
    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string v2, "offset"

    .line 264
    iget v3, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->sliceOffset:I

    mul-int v3, v3, v5

    .line 265
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string v2, "session"

    .line 266
    iget-object v3, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->session:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 268
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 273
    :cond_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 274
    iget-object v3, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "Authorization"

    .line 275
    iget-object v4, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "Content-Type"

    .line 276
    invoke-virtual {v2, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 277
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 278
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->parent:Lcom/avos/avoscloud/upload/QCloudUploader;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/upload/QCloudUploader;->executeWithRetry(Lokhttp3/Request;I)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->progress:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->progress:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    iget v2, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->sliceOffset:I

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->publishProgress(II)V

    .line 285
    :cond_1
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/avos/avoscloud/AVExceptionHolder;->add(Lcom/avos/avoscloud/AVException;)V

    .line 289
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 292
    iget-object v2, p0, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
