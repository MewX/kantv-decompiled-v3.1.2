.class public Lcom/avos/avoscloud/upload/FileUploader;
.super Lcom/avos/avoscloud/upload/HttpClientUploader;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/upload/FileUploader$FileUploadProgressCallback;,
        Lcom/avos/avoscloud/upload/FileUploader$ProgressCalculator;
    }
.end annotation


# static fields
.field static final PROGRESS_COMPLETE:I = 0x64

.field static final PROGRESS_GET_TOKEN:I = 0xa

.field static final PROGRESS_UPLOAD_FILE:I = 0x5a

.field static UPLOAD_HEADERS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final defaultFileKeyLength:I = 0x28


# instance fields
.field private bucket:Ljava/lang/String;

.field private callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

.field private provider:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/upload/FileUploader;->UPLOAD_HEADERS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/upload/Uploader$UploadCallback;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/upload/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader;->callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    .line 44
    iput-object p4, p0, Lcom/avos/avoscloud/upload/FileUploader;->callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/upload/FileUploader;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/upload/FileUploader;->handleGetBucketResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p0

    return-object p0
.end method

.method private completeFileUpload(Z)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->token:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "result"

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "token"

    .line 171
    iget-object v1, p0, Lcom/avos/avoscloud/upload/FileUploader;->token:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object p1

    const-string v1, "fileCallback"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/upload/FileUploader$3;

    invoke-direct {v3, p0}, Lcom/avos/avoscloud/upload/FileUploader$3;-><init>(Lcom/avos/avoscloud/upload/FileUploader;)V

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private fetchUploadBucket(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVCallback;)Lcom/avos/avoscloud/AVException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/avos/avoscloud/AVCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVException;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 111
    new-array v0, v0, [Lcom/avos/avoscloud/AVException;

    .line 112
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/upload/FileUploader;->getGetBucketParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/avos/avoscloud/upload/FileUploader$2;

    invoke-direct {v2, p0, p4, v0}, Lcom/avos/avoscloud/upload/FileUploader$2;-><init>(Lcom/avos/avoscloud/upload/FileUploader;Lcom/avos/avoscloud/AVCallback;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    const/4 p1, 0x0

    .line 126
    aget-object p2, v0, p1

    if-eqz p2, :cond_0

    .line 127
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGetBucketParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-static {v1}, Lcom/avos/avoscloud/utils/AVFileUtil;->getFileMimeType(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "key"

    .line 155
    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    .line 156
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mime_type"

    .line 157
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "metaData"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object p1

    const-string v0, "__type"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 163
    :cond_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUploaderImplementation(Ljava/lang/String;)Lcom/avos/avoscloud/upload/Uploader;
    .locals 11

    .line 96
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->provider:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->provider:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3986839c

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0xe20

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "s3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "qcloud"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    .line 103
    new-instance v0, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;

    iget-object v6, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    iget-object v7, p0, Lcom/avos/avoscloud/upload/FileUploader;->token:Ljava/lang/String;

    iget-object v9, p0, Lcom/avos/avoscloud/upload/FileUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    iget-object v10, p0, Lcom/avos/avoscloud/upload/FileUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    move-object v5, v0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/avos/avoscloud/upload/QiniuSlicingUploader;-><init>(Lcom/avos/avoscloud/AVFile;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    return-object v0

    .line 101
    :cond_3
    new-instance p1, Lcom/avos/avoscloud/upload/S3Uploader;

    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    iget-object v1, p0, Lcom/avos/avoscloud/upload/FileUploader;->uploadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/upload/FileUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    iget-object v3, p0, Lcom/avos/avoscloud/upload/FileUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/avos/avoscloud/upload/S3Uploader;-><init>(Lcom/avos/avoscloud/AVFile;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    return-object p1

    .line 99
    :cond_4
    new-instance v0, Lcom/avos/avoscloud/upload/QCloudUploader;

    iget-object v5, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    iget-object v7, p0, Lcom/avos/avoscloud/upload/FileUploader;->token:Ljava/lang/String;

    iget-object v8, p0, Lcom/avos/avoscloud/upload/FileUploader;->uploadUrl:Ljava/lang/String;

    iget-object v9, p0, Lcom/avos/avoscloud/upload/FileUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    iget-object v10, p0, Lcom/avos/avoscloud/upload/FileUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/avos/avoscloud/upload/QCloudUploader;-><init>(Lcom/avos/avoscloud/AVFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    return-object v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleGetBucketResponse(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1

    .line 133
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "bucket"

    .line 136
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->bucket:Ljava/lang/String;

    const-string v0, "objectId"

    .line 137
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->finalObjectId:Ljava/lang/String;

    const-string v0, "upload_url"

    .line 138
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->uploadUrl:Ljava/lang/String;

    const-string v0, "provider"

    .line 139
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->provider:Ljava/lang/String;

    const-string v0, "token"

    .line 140
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->token:Ljava/lang/String;

    const-string v0, "url"

    .line 141
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/upload/FileUploader;->finalUrl:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static setUploadHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 203
    sget-object v0, Lcom/avos/avoscloud/upload/FileUploader;->UPLOAD_HEADERS:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public doWork()Lcom/avos/avoscloud/AVException;
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->parseFileKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/avos/avoscloud/upload/FileUploader;->uploadUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lcom/avos/avoscloud/upload/FileUploader$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/upload/FileUploader$1;-><init>(Lcom/avos/avoscloud/upload/FileUploader;)V

    const-string v3, "fileTokens"

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/avos/avoscloud/upload/FileUploader;->fetchUploadBucket(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/AVCallback;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/16 v1, 0xa

    .line 74
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/upload/FileUploader;->publishProgress(I)V

    .line 75
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/upload/FileUploader;->getUploaderImplementation(Ljava/lang/String;)Lcom/avos/avoscloud/upload/Uploader;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Lcom/avos/avoscloud/AVException;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Uploader can not be instantiated."

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 80
    :cond_1
    invoke-interface {v0}, Lcom/avos/avoscloud/upload/Uploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/upload/FileUploader;->callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    if-eqz v0, :cond_2

    .line 83
    iget-object v1, p0, Lcom/avos/avoscloud/upload/FileUploader;->finalObjectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/avos/avoscloud/upload/FileUploader;->finalUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/avos/avoscloud/upload/Uploader$UploadCallback;->finishedWithResults(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x64

    .line 86
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/upload/FileUploader;->publishProgress(I)V

    .line 87
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/upload/FileUploader;->completeFileUpload(Z)V

    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/upload/FileUploader;->completeFileUpload(Z)V

    return-object v0
.end method
