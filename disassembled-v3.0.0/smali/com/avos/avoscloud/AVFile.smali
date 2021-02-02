.class public final Lcom/avos/avoscloud/AVFile;
.super Ljava/lang/Object;
.source "AVFile.java"


# static fields
.field public static final AVFILE_ENDPOINT:Ljava/lang/String; = "files"

.field public static DEFAULTMIMETYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final ELDERMETADATAKEYFORIOSFIX:Ljava/lang/String; = "metadata"

.field static final FILE_NAME_KEY:Ljava/lang/String; = "_name"

.field private static final FILE_SUM_KEY:Ljava/lang/String; = "_checksum"

.field private static MAX_FILE_BUF_SIZE:J = 0x7de000L

.field private static final THUMBNAIL_FMT:Ljava/lang/String; = "?imageView/%d/w/%d/h/%d/q/%d/format/%s"


# instance fields
.field private acl:Lcom/avos/avoscloud/AVACL;

.field private bucket:Ljava/lang/String;

.field private dirty:Z

.field private transient downloader:Lcom/avos/avoscloud/AVFileDownloader;

.field private fileObject:Lcom/avos/avoscloud/AVObject;

.field private localPath:Ljava/lang/String;

.field private localTmpFilePath:Ljava/lang/String;

.field private final metaData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private transient uploader:Lcom/avos/avoscloud/upload/Uploader;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    .line 89
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVACL;-><init>(Lcom/avos/avoscloud/AVACL;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    if-eqz p3, :cond_0

    .line 129
    iget-object p1, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 132
    iget-object p1, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string p2, "__source"

    const-string p3, "external"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 4

    .line 146
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;-><init>()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 149
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    const-string v0, "size"

    if-eqz p2, :cond_0

    .line 151
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->computeMD5([B)Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVFileDownloader;->getAVFileCachePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    .line 153
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lcom/avos/avoscloud/AVPersistenceUtils;->saveContentToFile([BLjava/io/File;)Z

    .line 154
    iget-object v2, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v3, "_checksum"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 157
    :cond_0
    iget-object p2, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_0
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p2

    .line 161
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    const-string v1, "owner"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p2, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v0, "_name"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0
.end method

.method private cancelDownloadIfNeed()V
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFileDownloader;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private cancelUploadIfNeed()V
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/upload/Uploader;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/avos/avoscloud/upload/Uploader;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public static className()Ljava/lang/String;
    .locals 1

    const-string v0, "File"

    return-object v0
.end method

.method public static clearAllCachedFiles()V
    .locals 1

    const/4 v0, 0x0

    .line 1062
    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->clearCacheMoreThanDays(I)V

    return-void
.end method

.method public static clearCacheMoreThanDays(I)V
    .locals 4

    .line 1070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-lez p0, :cond_0

    const v2, 0x5265c00

    mul-int p0, p0, v2

    int-to-long v2, p0

    sub-long/2addr v0, v2

    .line 1074
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVFileDownloader;->getAVFileCachePath()Ljava/lang/String;

    move-result-object p0

    .line 1075
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lcom/avos/avoscloud/AVFile;->clearDir(Ljava/io/File;J)V

    return-void
.end method

.method private static clearDir(Ljava/io/File;J)V
    .locals 6

    .line 1079
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 1080
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 1081
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1082
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    .line 1083
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1085
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1086
    invoke-static {v2, p1, p2}, Lcom/avos/avoscloud/AVFile;->clearDir(Ljava/io/File;J)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 5

    .line 305
    new-instance v0, Lcom/avos/avoscloud/AVFile;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/AVFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    const-string v1, "metadata"

    .line 306
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    iget-object v2, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "metaData"

    .line 310
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile;->setObjectId(Ljava/lang/String;)V

    .line 314
    iput-object p0, v0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    const-string v1, "bucket"

    .line 315
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/AVObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFile;->setBucket(Ljava/lang/String;)V

    .line 316
    iget-object v1, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 317
    iget-object v1, v0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private getCacheData()[B
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1013
    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLocalFileData()[B
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 524
    sget-object v0, Lcom/avos/avoscloud/AVFile;->DEFAULTMIMETYPE:Ljava/lang/String;

    .line 525
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 527
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 528
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 531
    sget-object v0, Lcom/avos/avoscloud/AVFile;->DEFAULTMIMETYPE:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private getTmpFileData()[B
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .line 997
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseFileWithAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->withAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0
.end method

.method public static parseFileWithAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0
.end method

.method public static parseFileWithFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0
.end method

.method public static parseFileWithObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->withObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0
.end method

.method public static parseFileWithObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetFileCallback<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    invoke-static {p0, p1}, Lcom/avos/avoscloud/AVFile;->withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V

    return-void
.end method

.method public static setUploadHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/avos/avoscloud/upload/FileUploader;->setUploadHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static withAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;
    .locals 1

    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-static {p0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid AVObject."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static withAbsoluteLocalPath(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVFile;->withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0
.end method

.method public static withFile(Ljava/lang/String;Ljava/io/File;)Lcom/avos/avoscloud/AVFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_4

    .line 381
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    new-instance v1, Lcom/avos/avoscloud/AVFile;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFile;-><init>()V

    .line 386
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVFile;->setLocalPath(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v1, p0}, Lcom/avos/avoscloud/AVFile;->setName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 389
    iput-boolean v2, v1, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 390
    iput-object p0, v1, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 394
    :try_start_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1

    const-string v4, "MD5"

    .line 395
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 397
    sget-wide v5, Lcom/avos/avoscloud/AVFile;->MAX_FILE_BUF_SIZE:J

    long-to-int v6, v5

    new-array v5, v6, [B

    .line 399
    :goto_0
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v7, 0x0

    .line 400
    invoke-virtual {v4, v5, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 403
    invoke-static {v4}, Lcom/avos/avoscloud/AVUtils;->hexEncodeBytes([B)Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    move-object v4, v0

    .line 409
    :goto_1
    iget-object p1, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object p1, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v2, "_checksum"

    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object p1

    .line 413
    iget-object v2, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string p1, "owner"

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object p1, v1, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v0, "_name"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 382
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    .line 379
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null file object."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static withObjectId(Ljava/lang/String;)Lcom/avos/avoscloud/AVFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_File"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVQuery;->get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-static {v0}, Lcom/avos/avoscloud/AVFile;->createFileFromAVObject(Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVFile;

    move-result-object p0

    return-object p0

    .line 271
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find file object by id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static withObjectIdInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetFileCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/GetFileCallback<",
            "Lcom/avos/avoscloud/AVFile;",
            ">;)V"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "_File"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance v1, Lcom/avos/avoscloud/AVFile$1;

    invoke-direct {v1, p1, p0}, Lcom/avos/avoscloud/AVFile$1;-><init>(Lcom/avos/avoscloud/GetFileCallback;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    return-void
.end method


# virtual methods
.method public addMetaData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 0

    .line 855
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 856
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V

    return-void
.end method

.method public clearCachedFile()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1052
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public clearMetaData()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 895
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->delete()V

    return-void

    :cond_0
    const/16 v0, 0x99

    const-string v1, "File object is not exists."

    .line 898
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0
.end method

.method public deleteEventually()V
    .locals 1

    .line 907
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->deleteEventually()V

    :cond_0
    return-void
.end method

.method public deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 1

    .line 916
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->deleteEventually(Lcom/avos/avoscloud/DeleteCallback;)V

    :cond_0
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .line 924
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVObject;->deleteInBackground()V

    :cond_0
    return-void
.end method

.method public deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 3

    .line 933
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getFileObject()Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVObject;->deleteInBackground(Lcom/avos/avoscloud/DeleteCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x99

    const-string v2, "File object is not exists."

    .line 937
    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(ILjava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :goto_0
    return-void
.end method

.method public getACL()Lcom/avos/avoscloud/AVACL;
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getLocalFileData()[B

    move-result-object v0

    return-object v0

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getTmpFileData()[B

    move-result-object v0

    return-object v0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 693
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getCacheData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 697
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 701
    new-instance v0, Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVFileDownloader;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    .line 702
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVFileDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v0

    if-nez v0, :cond_3

    .line 706
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getCacheData()[B

    move-result-object v0

    return-object v0

    .line 704
    :cond_3
    throw v0

    .line 698
    :cond_4
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x64

    const-string v2, "Connection lost"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 798
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVFile;->getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    return-void
.end method

.method public getDataInBackground(Lcom/avos/avoscloud/GetDataCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 3

    .line 766
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 768
    invoke-virtual {p2, v2}, Lcom/avos/avoscloud/ProgressCallback;->done(Ljava/lang/Integer;)V

    :cond_0
    if-eqz p1, :cond_5

    .line 771
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getLocalFileData()[B

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 775
    invoke-virtual {p2, v2}, Lcom/avos/avoscloud/ProgressCallback;->done(Ljava/lang/Integer;)V

    :cond_2
    if-eqz p1, :cond_5

    .line 778
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->getTmpFileData()[B

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 780
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 781
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 782
    new-instance v0, Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {v0, p2, p1}, Lcom/avos/avoscloud/AVFileDownloader;-><init>(Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    .line 783
    iget-object p1, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVFileDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 785
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x7e

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 3
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    goto :goto_0

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 729
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 730
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 731
    :cond_2
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 734
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 735
    new-instance v1, Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {v1}, Lcom/avos/avoscloud/AVFileDownloader;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    .line 736
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVFileDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    if-nez v1, :cond_4

    .line 742
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_4
    throw v1

    .line 732
    :cond_5
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x64

    const-string v2, "Connection lost"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, ""

    .line 744
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 746
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 748
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataStreamInBackground(Lcom/avos/avoscloud/GetDataStreamCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 808
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVFile;->getDataStreamInBackground(Lcom/avos/avoscloud/GetDataStreamCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    return-void
.end method

.method public getDataStreamInBackground(Lcom/avos/avoscloud/GetDataStreamCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    goto :goto_0

    .line 825
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 827
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 831
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x64

    .line 833
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/avos/avoscloud/ProgressCallback;->done(Ljava/lang/Integer;)V

    :cond_3
    if-eqz p1, :cond_5

    .line 837
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/avos/avoscloud/AVPersistenceUtils;->getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p2

    const/4 v0, 0x0

    .line 838
    invoke-virtual {p1, p2, v0}, Lcom/avos/avoscloud/GetDataStreamCallback;->internalDone0(Ljava/io/InputStream;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 840
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, p2}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/GetDataStreamCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    goto :goto_1

    .line 844
    :cond_4
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelDownloadIfNeed()V

    .line 845
    new-instance v0, Lcom/avos/avoscloud/AVFileDownloader;

    invoke-direct {v0, p2, p1}, Lcom/avos/avoscloud/AVFileDownloader;-><init>(Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataStreamCallback;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    .line 846
    iget-object p1, p0, Lcom/avos/avoscloud/AVFile;->downloader:Lcom/avos/avoscloud/AVFileDownloader;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVFileDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    :goto_1
    return-void
.end method

.method getFileObject()Lcom/avos/avoscloud/AVObject;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    const-string v1, "_File"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public getMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerObjectId()Ljava/lang/String;
    .locals 1

    const-string v0, "owner"

    .line 472
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    const-string v0, "size"

    .line 458
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->getMetaData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getThumbnailUrl(ZII)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x64

    const-string v5, "png"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 574
    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVFile;->getThumbnailUrl(ZIIILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailUrl(ZIIILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 588
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AppRouterManager;->isQCloudApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    const/4 v0, 0x1

    if-lt p4, v0, :cond_3

    const/16 v1, 0x64

    if-gt p4, v1, :cond_3

    if-eqz p5, :cond_0

    .line 597
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p5, "png"

    :cond_1
    const/4 v1, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 601
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x4

    aput-object p5, v3, p1

    const-string p1, "?imageView/%d/w/%d/h/%d/q/%d/format/%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 595
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid quality,valid range is 0-100."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 592
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid width or height."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 589
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "We only support this method for qiniu storage."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/upload/Uploader;
    .locals 2

    .line 956
    new-instance v0, Lcom/avos/avoscloud/AVFile$2;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVFile$2;-><init>(Lcom/avos/avoscloud/AVFile;)V

    .line 962
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    new-instance v1, Lcom/avos/avoscloud/upload/FileUploader;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/avos/avoscloud/upload/FileUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/upload/Uploader$UploadCallback;)V

    return-object v1

    .line 965
    :cond_0
    new-instance v1, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/avos/avoscloud/upload/UrlDirectlyUploader;-><init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/upload/Uploader$UploadCallback;)V

    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    return-object v0
.end method

.method handleUploadedResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 882
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    .line 883
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    const-string v0, "_File"

    .line 884
    invoke-static {v0, p1}, Lcom/avos/avoscloud/AVObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->fileObject:Lcom/avos/avoscloud/AVObject;

    .line 885
    iput-object p2, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    .line 886
    iput-object p3, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    return-void
.end method

.method public isDataAvailable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->localTmpFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDirty()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVFile;->dirty:Z

    return v0
.end method

.method mimeType()Ljava/lang/String;
    .locals 2

    .line 943
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getMimeTypeFromLocalFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 948
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/avos/avoscloud/AVFile;->DEFAULTMIMETYPE:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public removeMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->metaData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public save()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avos/avoscloud/AVException;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V

    const/4 v0, 0x1

    .line 623
    new-array v0, v0, [Lcom/avos/avoscloud/AVException;

    const/4 v1, 0x0

    .line 624
    invoke-virtual {p0, v1, v1}, Lcom/avos/avoscloud/AVFile;->getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/upload/Uploader;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/upload/Uploader;

    const/4 v1, 0x0

    .line 626
    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 629
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/upload/Uploader;

    invoke-interface {v0}, Lcom/avos/avoscloud/upload/Uploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    throw v0

    .line 627
    :cond_1
    aget-object v0, v0, v1

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public saveInBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    return-void
.end method

.method public saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVFile;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V

    return-void
.end method

.method public declared-synchronized saveInBackground(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1

    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/avos/avoscloud/AVFile;->cancelUploadIfNeed()V

    .line 647
    invoke-virtual {p0, p1, p2}, Lcom/avos/avoscloud/AVFile;->getUploader(Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)Lcom/avos/avoscloud/upload/Uploader;

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/upload/Uploader;

    .line 648
    iget-object p1, p0, Lcom/avos/avoscloud/AVFile;->uploader:Lcom/avos/avoscloud/upload/Uploader;

    invoke-interface {p1}, Lcom/avos/avoscloud/upload/Uploader;->execute()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 651
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x64

    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setACL(Lcom/avos/avoscloud/AVACL;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->acl:Lcom/avos/avoscloud/AVACL;

    return-void
.end method

.method public setBucket(Ljava/lang/String;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->bucket:Ljava/lang/String;

    return-void
.end method

.method setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->name:Ljava/lang/String;

    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->objectId:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 607
    iput-object p1, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    return-void
.end method

.method protected toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 1033
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->mapFromFile(Lcom/avos/avoscloud/AVFile;)Ljava/util/Map;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    iget-object v1, p0, Lcom/avos/avoscloud/AVFile;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
