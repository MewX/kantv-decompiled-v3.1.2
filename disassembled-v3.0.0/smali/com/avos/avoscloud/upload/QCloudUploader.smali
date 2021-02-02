.class Lcom/avos/avoscloud/upload/QCloudUploader;
.super Lcom/avos/avoscloud/upload/HttpClientUploader;
.source "QCloudUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;
    }
.end annotation


# static fields
.field private static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final DEFAULT_SLICE_LEN:I = 0x80000

.field private static final FILE_CONTENT:Ljava/lang/String; = "filecontent"

.field private static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field private static final OP_UPLOAD:Ljava/lang/String; = "upload"

.field private static final OP_UPLOAD_SLICE:Ljava/lang/String; = "upload_slice"

.field private static final PARAM_ACCESS_URL:Ljava/lang/String; = "access_url"

.field private static final PARAM_FILE_SIZE:Ljava/lang/String; = "filesize"

.field private static final PARAM_OFFSET:Ljava/lang/String; = "offset"

.field private static final PARAM_OP:Ljava/lang/String; = "op"

.field private static final PARAM_SESSION:Ljava/lang/String; = "session"

.field private static final PARAM_SHA:Ljava/lang/String; = "sha"

.field private static final PARAM_SLICE_SIZE:Ljava/lang/String; = "slice_size"

.field private static final RETRY_TIMES:I = 0x5


# instance fields
.field SHOULD_UPLOAD_SLICE_PARALL:Z

.field private fileKey:Ljava/lang/String;

.field private fileSha:Ljava/lang/String;

.field private volatile tasks:[Ljava/util/concurrent/Future;

.field private token:Ljava/lang/String;

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p5, p6}, Lcom/avos/avoscloud/upload/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->SHOULD_UPLOAD_SLICE_PARALL:Z

    .line 56
    iput-object p4, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->uploadUrl:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->token:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->fileKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/avos/avoscloud/upload/QCloudUploader;->getCurrentSliceLength(II)I

    move-result p0

    return p0
.end method

.method private static getCurrentSliceLength(II)I
    .locals 1

    const/high16 v0, 0x80000

    mul-int p0, p0, v0

    sub-int p0, p1, p0

    if-lt p0, v0, :cond_0

    const/high16 p0, 0x80000

    :cond_0
    return p0
.end method

.method private static parseSliceUploadResponse(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 175
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "data"

    .line 178
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing json data error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private uploadControlSlice(Ljava/lang/String;Ljava/lang/String;[B)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const-string v0, "multipart/form-data"

    .line 194
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 196
    :try_start_0
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->SHA1([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sha"

    .line 197
    invoke-virtual {v1, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string v2, "op"

    const-string v3, "upload_slice"

    .line 198
    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string v2, "filesize"

    .line 199
    array-length p3, p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string p3, "slice_size"

    const/high16 v2, 0x80000

    .line 200
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 202
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 204
    invoke-virtual {v1, p3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 207
    :cond_0
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 208
    invoke-virtual {p3, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p2, "Authorization"

    .line 209
    invoke-virtual {p3, p2, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p1, "Content-Type"

    .line 210
    invoke-virtual {p3, p1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 211
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    invoke-virtual {p3, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 213
    invoke-virtual {p3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    const/4 p2, 0x5

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/upload/QCloudUploader;->executeWithRetry(Lokhttp3/Request;I)Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 217
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/upload/QCloudUploader;->parseSliceUploadResponse(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    new-instance p1, Lcom/avos/avoscloud/AVException;

    const/4 p2, -0x1

    const-string p3, "Upload file failure"

    invoke-direct {p1, p2, p3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private uploadFile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    const-string v0, "multipart/form-data"

    .line 131
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "upload as whole file"

    .line 132
    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v1

    .line 135
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->SHA1([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->fileSha:Ljava/lang/String;

    .line 136
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    const-string v3, "application/octet-stream"

    .line 138
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    array-length v4, v1

    const/4 v5, 0x0

    .line 139
    invoke-static {v5, v4}, Lcom/avos/avoscloud/upload/QCloudUploader;->getCurrentSliceLength(II)I

    move-result v4

    .line 138
    invoke-static {v3, v1, v5, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;

    move-result-object v1

    const-string v3, "filecontent"

    .line 140
    iget-object v4, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    const-string v1, "op"

    const-string v3, "upload"

    .line 141
    invoke-virtual {v2, v1, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    const-string v1, "sha"

    .line 142
    iget-object v3, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->fileSha:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 144
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v2, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 149
    :cond_1
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 150
    iget-object v3, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->uploadUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "Authorization"

    .line 151
    iget-object v4, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->token:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v3, "Content-Type"

    .line 152
    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 154
    sget-object v0, Lcom/avos/avoscloud/upload/FileUploader;->UPLOAD_HEADERS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    sget-object v4, Lcom/avos/avoscloud/upload/FileUploader;->UPLOAD_HEADERS:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 160
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    const/4 v1, 0x5

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/upload/QCloudUploader;->executeWithRetry(Lokhttp3/Request;I)Lokhttp3/Response;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    return-void

    :cond_3
    const/4 v1, -0x1

    .line 164
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->stringFromBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 167
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v1

    const-string v2, "Exception during file upload"

    if-eqz v1, :cond_4

    .line 168
    invoke-static {v2, v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 170
    :cond_4
    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public doWork()Lcom/avos/avoscloud/AVException;
    .locals 24

    move-object/from16 v11, p0

    .line 67
    :try_start_0
    iget-object v0, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getData()[B

    move-result-object v0

    .line 68
    array-length v1, v0

    const/high16 v2, 0x80000

    div-int/2addr v1, v2

    array-length v3, v0

    rem-int/2addr v3, v2

    const/4 v13, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    add-int v14, v1, v2

    const/4 v15, 0x0

    if-le v14, v13, :cond_8

    .line 72
    iget-object v1, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->token:Ljava/lang/String;

    iget-object v2, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->uploadUrl:Ljava/lang/String;

    invoke-direct {v11, v1, v2, v0}, Lcom/avos/avoscloud/upload/QCloudUploader;->uploadControlSlice(Ljava/lang/String;Ljava/lang/String;[B)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 74
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during file upload"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    const-string v2, "access_url"

    .line 76
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v15

    :cond_2
    const-string v2, "session"

    .line 79
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 81
    new-instance v10, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;

    new-instance v1, Lcom/avos/avoscloud/upload/QCloudUploader$1;

    invoke-direct {v1, v11}, Lcom/avos/avoscloud/upload/QCloudUploader$1;-><init>(Lcom/avos/avoscloud/upload/QCloudUploader;)V

    invoke-direct {v10, v14, v1}, Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;-><init>(ILcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;)V

    .line 88
    iget-boolean v1, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->SHOULD_UPLOAD_SLICE_PARALL:Z

    if-eqz v1, :cond_4

    .line 90
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 91
    new-array v1, v14, [Ljava/util/concurrent/Future;

    iput-object v1, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    .line 92
    iget-object v8, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_3

    .line 94
    :try_start_1
    iget-object v6, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    add-int/lit8 v17, v7, -0x1

    sget-object v5, Lcom/avos/avoscloud/upload/QCloudUploader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;

    iget-object v3, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->fileKey:Ljava/lang/String;

    iget-object v2, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->token:Ljava/lang/String;

    iget-object v1, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->uploadUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v18, v1

    move-object v1, v4

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move-object v12, v4

    move-object/from16 v4, v19

    move-object v15, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v6

    move-object v6, v0

    move/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v8, v16

    move-object/from16 v22, v9

    move-object v9, v10

    move-object/from16 v23, v10

    move-object/from16 v10, v22

    :try_start_2
    invoke-direct/range {v1 .. v10}, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;-><init>(Lcom/avos/avoscloud/upload/QCloudUploader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;Ljava/util/concurrent/CountDownLatch;)V

    .line 95
    invoke-virtual {v15, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    aput-object v1, v18, v17

    add-int/lit8 v7, v20, 0x1

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    const/4 v15, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v21, v8

    goto :goto_2

    :cond_3
    move-object/from16 v21, v8

    move-object/from16 v22, v9

    .line 99
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 99
    :goto_2
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_4
    move-object/from16 v23, v10

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v14, :cond_5

    .line 102
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 103
    new-instance v15, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;

    iget-object v3, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->fileKey:Ljava/lang/String;

    iget-object v4, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->token:Ljava/lang/String;

    iget-object v5, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->uploadUrl:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v6, v0

    move v7, v12

    move-object/from16 v8, v16

    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v10}, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;-><init>(Lcom/avos/avoscloud/upload/QCloudUploader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;Ljava/util/concurrent/CountDownLatch;)V

    .line 105
    invoke-virtual {v15}, Lcom/avos/avoscloud/upload/QCloudUploader$SliceUploadTask;->upload()Ljava/lang/String;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 108
    :cond_5
    :goto_4
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    if-eqz v0, :cond_7

    .line 110
    iget-object v0, v11, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 111
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_6

    .line 112
    invoke-interface {v3, v13}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 116
    :cond_7
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 119
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/avos/avoscloud/upload/QCloudUploader;->uploadFile()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_9
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public interruptImmediately()V
    .locals 4

    .line 302
    invoke-super {p0}, Lcom/avos/avoscloud/upload/HttpClientUploader;->interruptImmediately()V

    .line 304
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    monitor-enter v0

    const/4 v1, 0x0

    .line 306
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/avos/avoscloud/upload/QCloudUploader;->tasks:[Ljava/util/concurrent/Future;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 308
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 309
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
