.class public Lcom/avos/avoscloud/upload/UrlDirectlyUploader;
.super Lcom/avos/avoscloud/upload/HttpClientUploader;
.source "UrlDirectlyUploader.java"


# instance fields
.field private callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/upload/Uploader$UploadCallback;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/upload/HttpClientUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    .line 24
    iput-object p4, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/upload/UrlDirectlyUploader;)Lcom/avos/avoscloud/upload/Uploader$UploadCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->callback:Lcom/avos/avoscloud/upload/Uploader$UploadCallback;

    return-object p0
.end method

.method private getFileRequestParameters()Ljava/lang/String;
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-static {v0}, Lcom/avos/avoscloud/utils/AVFileUtil;->getFileMimeType(Lcom/avos/avoscloud/AVFile;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    iget-object v2, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mime_type"

    .line 70
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getMetaData()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "metaData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/avos/avoscloud/AVFile;->className()Ljava/lang/String;

    move-result-object v0

    const-string v2, "__type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVFile;->getACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVACL;->getACLMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getParsedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    :cond_0
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doWork()Lcom/avos/avoscloud/AVException;
    .locals 6

    const/4 v0, 0x1

    .line 30
    new-array v1, v0, [Lcom/avos/avoscloud/AVException;

    .line 31
    iget-object v2, p0, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->avFile:Lcom/avos/avoscloud/AVFile;

    invoke-static {v2, v0}, Lcom/avos/avoscloud/AVPowerfulUtils;->getEndpoint(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-direct {p0}, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;->getFileRequestParameters()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v4

    new-instance v5, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;

    invoke-direct {v5, p0, v1}, Lcom/avos/avoscloud/upload/UrlDirectlyUploader$1;-><init>(Lcom/avos/avoscloud/upload/UrlDirectlyUploader;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v4, v2, v3, v0, v5}, Lcom/avos/avoscloud/PaasClient;->postObject(Ljava/lang/String;Ljava/lang/String;ZLcom/avos/avoscloud/GenericObjectCallback;)V

    const/4 v0, 0x0

    .line 61
    aget-object v0, v1, v0

    return-object v0
.end method
