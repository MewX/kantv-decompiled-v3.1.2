.class Lcom/avos/avoscloud/upload/QiniuAccessor;
.super Ljava/lang/Object;
.source "QiniuAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;,
        Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;
    }
.end annotation


# static fields
.field static final BLOCK_SIZE:I = 0x400000

.field static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field static final HEAD_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field static final HEAD_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field static final HEAD_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field static final NONWIFI_CHUNK_SIZE:I = 0x10000

.field static final QINIU_BRICK_UPLOAD_EP:Ljava/lang/String; = "http://upload.qiniu.com/bput/%s/%d"

.field static final QINIU_CREATE_BLOCK_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkblk/%d"

.field static final QINIU_HOST:Ljava/lang/String; = "http://upload.qiniu.com"

.field static final QINIU_MKFILE_EP:Ljava/lang/String; = "http://upload.qiniu.com/mkfile/%d/key/%s"

.field static final TEXT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field static final WIFI_CHUNK_SIZE:I = 0x40000


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private fileKey:Ljava/lang/String;

.field private uploadToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->client:Lokhttp3/OkHttpClient;

    .line 82
    iput-object p2, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->uploadToken:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->fileKey:Ljava/lang/String;

    return-void
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

    .line 88
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Log"

    .line 91
    invoke-virtual {p0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x191

    if-eq v0, v3, :cond_3

    .line 96
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p0

    .line 98
    :try_start_0
    div-int/lit8 v3, v0, 0x64

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 99
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 105
    :catch_0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_2

    .line 108
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 109
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
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

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "unauthorized to create Qiniu Block"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateCrc32Value(Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 226
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 227
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p2

    if-eqz p1, :cond_1

    .line 228
    iget-wide v0, p1, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;->crc32:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 229
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
.method public createBlockInQiniu(II[BI)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;
    .locals 6

    const-string v0, "application/octet-stream"

    .line 140
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "try to invoke mkblk"

    .line 141
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    :cond_0
    const-string v1, "http://upload.qiniu.com/mkblk/%d"

    const/4 v2, 0x1

    .line 143
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 145
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Type"

    .line 146
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Length"

    .line 147
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Authorization"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpToken "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->uploadToken:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 150
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3, v4, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v0

    .line 151
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 154
    const-class v1, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/upload/QiniuAccessor;->parseQiniuResponse(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encounter exception during file uploading(mkblk). retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    add-int/lit8 v0, p4, -0x1

    if-lez p4, :cond_1

    .line 158
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/upload/QiniuAccessor;->createBlockInQiniu(II[BI)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public makeFile(ILjava/util/List;I)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "text/plain"

    :try_start_0
    const-string v1, "http://upload.qiniu.com/mkfile/%d/key/%s"

    const/4 v2, 0x2

    .line 263
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->fileKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    .line 264
    invoke-static {p2, v2}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 266
    invoke-virtual {v3, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Type"

    .line 267
    invoke-virtual {v3, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Length"

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Authorization"

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->uploadToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 271
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 273
    const-class v1, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/upload/QiniuAccessor;->parseQiniuResponse(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encounter exception during file uploading(mkfile). retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    .line 277
    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/upload/QiniuAccessor;->makeFile(ILjava/util/List;I)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuMKFileResponseData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public putFileBlocksToQiniu(Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;I[BII)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;
    .locals 8

    const-string v0, "application/octet-stream"

    :try_start_0
    const-string v1, "http://upload.qiniu.com/bput/%s/%d"

    const/4 v2, 0x2

    .line 200
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;->ctx:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v5, p1, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;->offset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 202
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Type"

    .line 203
    invoke-virtual {v2, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Content-Length"

    .line 204
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v1, "Authorization"

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpToken "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->uploadToken:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 207
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p3, v4, p4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v0

    .line 209
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QiniuAccessor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 211
    const-class v1, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/upload/QiniuAccessor;->parseQiniuResponse(Lokhttp3/Response;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;

    .line 212
    invoke-direct {p0, v0, p3, v4, p4}, Lcom/avos/avoscloud/upload/QiniuAccessor;->validateCrc32Value(Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encounter exception during file uploading(bput). retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    add-int/lit8 v7, p5, -0x1

    if-lez p5, :cond_0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    .line 217
    invoke-virtual/range {v2 .. v7}, Lcom/avos/avoscloud/upload/QiniuAccessor;->putFileBlocksToQiniu(Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;I[BII)Lcom/avos/avoscloud/upload/QiniuAccessor$QiniuBlockResponseData;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
