.class Lcom/avos/avoscloud/upload/QiniuSlicingUploader;
.super Lcom/avos/avoscloud/upload/HttpClientUploader;
.source "QiniuSlicingUploader.java"


# instance fields
.field private final fileKey:Ljava/lang/String;

.field private progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

.field private qiniuAccessor:Lcom/avos/avoscloud/upload/QiniuAccessor;

.field private final token:Ljava/lang/String;

.field private uploadChunkSize:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p4, p5}, Lcom/avos/avoscloud/upload/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    const/high16 p1, 0x40000

    .line 27
    iput p1, p0, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->uploadChunkSize:I

    .line 32
    iput-object p2, p0, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->token:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->fileKey:Ljava/lang/String;

    .line 34
    new-instance p1, Lcom/avos/avoscloud/upload/QiniuAccessor;

    invoke-static {}, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->getOKHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p4

    invoke-direct {p1, p4, p2, p3}, Lcom/avos/avoscloud/upload/QiniuAccessor;-><init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->qiniuAccessor:Lcom/avos/avoscloud/upload/QiniuAccessor;

    return-void
.end method


# virtual methods
.method public doWork()Lcom/avos/avoscloud/AVException;
    .locals 20

    move-object/from16 v1, p0

    .line 39
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    .line 42
    iput v0, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->uploadChunkSize:I

    .line 45
    :cond_0
    iget v0, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->uploadChunkSize:I

    new-array v0, v0, [B

    .line 46
    iget-object v2, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getSize()I

    move-result v8

    const/high16 v9, 0x400000

    .line 47
    div-int v2, v8, v9

    rem-int v3, v8, v9

    const/4 v10, 0x0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    add-int v12, v2, v3

    .line 48
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    new-instance v2, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    new-instance v3, Lcom/avos/avoscloud/upload/QiniuSlicingUploader$1;

    invoke-direct {v3, v1}, Lcom/avos/avoscloud/upload/QiniuSlicingUploader$1;-><init>(Lcom/avos/avoscloud/upload/QiniuSlicingUploader;)V

    invoke-direct {v2, v12, v3}, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;-><init>(ILcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;)V

    iput-object v2, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    .line 57
    :try_start_0
    iget-object v2, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getDataStream()Ljava/io/InputStream;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    :goto_1
    const/4 v6, 0x6

    if-ge v7, v12, :cond_a

    mul-int v16, v7, v9

    add-int/lit8 v2, v12, -0x1

    if-ne v7, v2, :cond_2

    sub-int v2, v8, v16

    move v5, v2

    goto :goto_2

    :cond_2
    const/high16 v5, 0x400000

    .line 66
    :goto_2
    :try_start_1
    iget v2, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->uploadChunkSize:I

    div-int v2, v5, v2

    iget v3, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->uploadChunkSize:I

    rem-int v3, v5, v3

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int v4, v2, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_7

    .line 69
    iget v9, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->uploadChunkSize:I

    mul-int v9, v9, v3

    add-int/lit8 v11, v4, -0x1

    if-ne v3, v11, :cond_4

    sub-int v9, v5, v9

    goto :goto_5

    .line 70
    :cond_4
    iget v9, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->uploadChunkSize:I

    :goto_5
    add-int/lit8 v11, v9, 0x0

    .line 74
    invoke-virtual {v15, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    add-int/lit8 v17, v11, 0x0

    move/from16 v10, v17

    :goto_6
    if-lez v11, :cond_5

    if-ge v10, v9, :cond_5

    sub-int v11, v9, v10

    .line 77
    invoke-virtual {v15, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_6

    :cond_5
    if-nez v3, :cond_6

    .line 83
    iget-object v2, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->qiniuAccessor:Lcom/avos/avoscloud/upload/QiniuAccessor;

    invoke-virtual {v2, v5, v9, v0, v6}, Lcom/avos/avoscloud/upload/QiniuAccessor;->createBlockInQiniu(II[BI)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;

    move-result-object v2

    move v10, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move v9, v7

    const/4 v14, 0x6

    goto :goto_7

    .line 86
    :cond_6
    iget-object v10, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->qiniuAccessor:Lcom/avos/avoscloud/upload/QiniuAccessor;

    const/4 v11, 0x6

    move-object/from16 v18, v2

    move-object v2, v10

    move v10, v3

    move-object/from16 v3, v18

    move/from16 v18, v4

    move/from16 v4, v16

    move/from16 v19, v5

    move-object v5, v0

    const/4 v14, 0x6

    move v6, v9

    move v9, v7

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/upload/QiniuAccessor;->putFileBlocksToQiniu(Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;I[BII)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;

    move-result-object v2

    :goto_7
    add-int/lit8 v3, v10, 0x1

    move v7, v9

    move/from16 v4, v18

    move/from16 v5, v19

    const/4 v6, 0x6

    const/high16 v9, 0x400000

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    move v9, v7

    if-eqz v2, :cond_8

    .line 91
    iget-object v2, v2, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->progressCalculator:Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    const/16 v3, 0x64

    invoke-virtual {v2, v9, v3}, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;->publishProgress(II)V

    add-int/lit8 v7, v9, 0x1

    const/high16 v9, 0x400000

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 96
    :cond_8
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x25b

    const-string v3, "failed to upload file to qiniu."

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_9

    .line 108
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_9
    return-object v0

    :cond_a
    const/4 v14, 0x6

    .line 99
    :try_start_3
    iget-object v0, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->qiniuAccessor:Lcom/avos/avoscloud/upload/QiniuAccessor;

    invoke-virtual {v0, v8, v13, v14}, Lcom/avos/avoscloud/upload/QiniuAccessor;->makeFile(ILjava/util/List;I)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 100
    iget-object v0, v0, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;->key:Ljava/lang/String;

    iget-object v2, v1, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;->fileKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v15, :cond_c

    .line 108
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_c
    const/4 v2, 0x0

    return-object v2

    :cond_d
    :goto_8
    const/4 v0, -0x1

    :try_start_5
    const-string v2, "upload file failure"

    .line 101
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v15, :cond_e

    .line 108
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_e
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v14, v15

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    move-object v15, v2

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v2, 0x0

    move-object v14, v2

    .line 104
    :goto_9
    :try_start_7
    new-instance v2, Lcom/avos/avoscloud/AVException;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v14, :cond_f

    .line 108
    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_f
    return-object v2

    :catchall_2
    move-exception v0

    move-object v15, v14

    :goto_a
    if-eqz v15, :cond_10

    :try_start_9
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 112
    :catch_6
    :cond_10
    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
