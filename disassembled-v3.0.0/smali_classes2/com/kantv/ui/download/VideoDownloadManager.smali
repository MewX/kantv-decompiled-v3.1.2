.class public Lcom/kantv/ui/download/VideoDownloadManager;
.super Ljava/lang/Object;
.source "VideoDownloadManager.java"


# static fields
.field static final PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VideoDownloadManager"

.field public static currentState:Ljava/lang/String; = "\u6682\u505c\u4e2d"

.field private static downloadManager:Lcom/kantv/ui/download/VideoDownloadManager;

.field public static entityTrueVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static entityVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kantv/ui/bean/EntityVideo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dirPath:Ljava/lang/String;

.field private encryptKey:Ljava/lang/String;

.field private m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

.field private onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->PERMISSIONS:[Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityTrueVideoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1375b6c94ef2c696d8b80b52ae35e969"

    .line 53
    iput-object v0, p0, Lcom/kantv/ui/download/VideoDownloadManager;->encryptKey:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    invoke-direct {v0}, Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;-><init>()V

    iput-object v0, p0, Lcom/kantv/ui/download/VideoDownloadManager;->m3u8Server:Lcom/kantv/ui/m3u8downloader/server/EncryptM3U8Server;

    .line 334
    new-instance v0, Lcom/kantv/ui/download/VideoDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/kantv/ui/download/VideoDownloadManager$1;-><init>(Lcom/kantv/ui/download/VideoDownloadManager;)V

    iput-object v0, p0, Lcom/kantv/ui/download/VideoDownloadManager;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    .line 71
    invoke-direct {p0}, Lcom/kantv/ui/download/VideoDownloadManager;->initView()V

    return-void
.end method

.method public static ClikcDownload(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoDownloadManager"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->checkM3U8IsExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u672c\u5730\u6587\u4ef6\u5df2\u4e0b\u8f7d\uff0c\u6b63\u5728\u64ad\u653e\u4e2d\uff01\uff01\uff01"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getM3U8Path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {p1}, Lcom/kantv/ui/download/VideoDownloadManager;->removeDownloadList(Ljava/util/List;)V

    .line 101
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-static {p0}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData3(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnItemClickListener url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object p1

    invoke-virtual {p1, p0, v0, p2}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->download(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->replaceUrl()V

    return-void
.end method

.method public static getDownloadingData2()V
    .locals 16

    .line 110
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoDownloadManager"

    invoke-static {v2, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 114
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iniDownload mDownloadDetail     "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "downloadlist"

    .line 117
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 119
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "name"

    .line 121
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "part"

    .line 122
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    .line 123
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    .line 124
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "size"

    .line 125
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "tssize"

    .line 126
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "state"

    .line 127
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "photo"

    .line 128
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "time"

    .line 129
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 131
    sget-object v3, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getDownloadingData2"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "  i   "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v3, Lcom/kantv/ui/bean/EntityVideo;

    invoke-direct {v3}, Lcom/kantv/ui/bean/EntityVideo;-><init>()V

    .line 134
    iput-object v4, v3, Lcom/kantv/ui/bean/EntityVideo;->name:Ljava/lang/String;

    .line 135
    iput-object v6, v3, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    .line 136
    iput-object v5, v3, Lcom/kantv/ui/bean/EntityVideo;->part:Ljava/lang/String;

    .line 137
    iput-object v7, v3, Lcom/kantv/ui/bean/EntityVideo;->id:Ljava/lang/String;

    .line 138
    iput v10, v3, Lcom/kantv/ui/bean/EntityVideo;->tsNumble:I

    .line 139
    iput v11, v3, Lcom/kantv/ui/bean/EntityVideo;->state:I

    .line 140
    iput-object v12, v3, Lcom/kantv/ui/bean/EntityVideo;->photo:Ljava/lang/String;

    .line 141
    iput-wide v13, v3, Lcom/kantv/ui/bean/EntityVideo;->time:J

    .line 142
    iput-wide v8, v3, Lcom/kantv/ui/bean/EntityVideo;->size:J

    .line 143
    sget-object v4, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entityVideoList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static getDownloadingData3(Ljava/lang/String;)V
    .locals 6

    .line 159
    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 160
    :goto_0
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 161
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    .line 162
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "m3u8"

    .line 163
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_1
    array-length v4, v3

    if-eqz v4, :cond_4

    array-length v4, v2

    if-nez v4, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    aget-object v3, v3, v0

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    sget-object p0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private initView()V
    .locals 2

    .line 76
    sget-object v0, Lcom/kantv/ui/download/SettingsManager;->DIRPATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/kantv/ui/download/VideoDownloadManager;->dirPath:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kantv/ui/download/VideoDownloadManager;->dirPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 82
    :goto_0
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->build(Landroid/content/Context;)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/download/VideoDownloadManager;->dirPath:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->setSaveDir(Ljava/lang/String;)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;->setDebugMode(Z)Lcom/kantv/ui/m3u8downloader/M3U8DownloaderConfig;

    .line 86
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/download/VideoDownloadManager;->onM3U8DownloadListener:Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->setOnM3U8DownloadListener(Lcom/kantv/ui/m3u8downloader/OnM3U8DownloadListener;)V

    .line 87
    invoke-static {}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->getInstance()Lcom/kantv/ui/m3u8downloader/M3U8Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/download/VideoDownloadManager;->encryptKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kantv/ui/m3u8downloader/M3U8Downloader;->setEncryptKey(Ljava/lang/String;)V

    return-void
.end method

.method public static instance()Lcom/kantv/ui/download/VideoDownloadManager;
    .locals 2

    .line 59
    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->downloadManager:Lcom/kantv/ui/download/VideoDownloadManager;

    if-nez v0, :cond_0

    .line 60
    const-class v0, Lcom/kantv/ui/download/VideoDownloadManager;

    monitor-enter v0

    .line 61
    :try_start_0
    new-instance v1, Lcom/kantv/ui/download/VideoDownloadManager;

    invoke-direct {v1}, Lcom/kantv/ui/download/VideoDownloadManager;-><init>()V

    sput-object v1, Lcom/kantv/ui/download/VideoDownloadManager;->downloadManager:Lcom/kantv/ui/download/VideoDownloadManager;

    .line 63
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 65
    :cond_0
    :goto_0
    sget-object v0, Lcom/kantv/ui/download/VideoDownloadManager;->downloadManager:Lcom/kantv/ui/download/VideoDownloadManager;

    return-object v0
.end method

.method public static notifyChanged(Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 407
    :goto_0
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 409
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    iget-object v2, v2, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    .line 410
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "m3u8"

    .line 411
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 412
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 415
    new-array v5, v0, [Ljava/lang/String;

    .line 416
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 417
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    .line 419
    array-length v2, v3

    if-eqz v2, :cond_4

    array-length v2, v5

    if-nez v2, :cond_2

    goto :goto_1

    .line 422
    :cond_2
    aget-object v2, v3, v0

    aget-object v3, v5, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 424
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 425
    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 426
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getProgress()F

    move-result v3

    iput v3, v2, Lcom/kantv/ui/bean/EntityVideo;->progress:F

    .line 430
    :cond_3
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getState()I

    move-result v3

    iput v3, v2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    .line 431
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    invoke-virtual {p0}, Lcom/kantv/ui/m3u8downloader/bean/M3U8Task;->getSpeed()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/kantv/ui/bean/EntityVideo;->speed:J

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 435
    :cond_5
    :goto_2
    sget-object p0, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public static onFinishDownload(Ljava/lang/String;)V
    .locals 13

    const-string v0, "downloadlist"

    const-string v1, "m3u8"

    .line 266
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "download"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadPf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoDownloadManager"

    invoke-static {v5, v4}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 270
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iniDownload mDownloadDetail     "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 273
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 274
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 276
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "url"

    const/4 v10, -0x1

    if-ge v7, v8, :cond_3

    .line 277
    :try_start_1
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 280
    new-array v11, v6, [Ljava/lang/String;

    .line 281
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 282
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 285
    :cond_0
    new-array v8, v6, [Ljava/lang/String;

    .line 286
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 287
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 289
    :cond_1
    array-length v12, v11

    if-lez v12, :cond_2

    array-length v12, v8

    if-lez v12, :cond_2

    .line 290
    aget-object v11, v11, v6

    aget-object v8, v8, v6

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, -0x1

    :goto_1
    if-eq v7, v10, :cond_4

    .line 302
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 305
    :cond_4
    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u52a0\u5165\u7535\u89c6mDownloadDetail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {p0}, Lcom/kantv/ui/download/VideoDownloadManager;->getDownloadingData3(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 309
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 310
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "name"

    .line 311
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "part"

    .line 312
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "positionTag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " downloadArray.length()  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 316
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 328
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static removeDownloadList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "downloadlist"

    .line 214
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "download"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadPf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoDownloadManager"

    invoke-static {v4, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 218
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iniDownload mDownloadDetail     "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 221
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 222
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x0

    .line 224
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 225
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "id"

    .line 226
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 228
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeDownloadList,  size"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "     ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 240
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static replaceUrl()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 491
    :goto_0
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 493
    sget-object v2, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kantv/ui/bean/EntityVideo;

    .line 494
    iget v3, v2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v2, v2, Lcom/kantv/ui/bean/EntityVideo;->state:I

    if-nez v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 495
    :goto_1
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v3, Lcom/kantv/ui/download/VideoDownloadManager;->entityTrueVideoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 497
    invoke-static {}, Lcom/kantv/ui/download/VideoDownloadManager;->instance()Lcom/kantv/ui/download/VideoDownloadManager;

    sget-object v3, Lcom/kantv/ui/download/VideoDownloadManager;->entityTrueVideoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 498
    sget-object v4, Lcom/kantv/ui/download/VideoDownloadManager;->entityVideoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kantv/ui/bean/EntityVideo;

    iput-object v3, v4, Lcom/kantv/ui/bean/EntityVideo;->url:Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static requestSwitchOver(Ljava/lang/String;)V
    .locals 3

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSwitchOver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->noncestr:Ljava/lang/String;

    const-string v2, "noncestr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->timestamp:Ljava/lang/String;

    const-string v2, "timestamp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sbID:Ljava/lang/String;

    const-string v2, "sbID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v1, Lcom/kantv/ui/config/SignConfig;->sign:Ljava/lang/String;

    const-string v2, "sign"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "part_id"

    .line 449
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object p0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    const-string v1, "interfaceVersion"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {}, Lcom/kantv/common/api/Api;->getService()Lcom/kantv/common/api/ApiService;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/kantv/common/api/ApiService;->requestUrl(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p0

    new-instance v0, Lcom/kantv/ui/download/VideoDownloadManager$2;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kantv/ui/download/VideoDownloadManager$2;-><init>(Landroid/content/Context;Z)V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public static setDownloadList(IILjava/lang/Object;)V
    .locals 7

    const-string v0, "downloadlist"

    .line 181
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "download"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadPf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoDownloadManager"

    invoke-static {v4, v3}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iniDownload mDownloadDetail     "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 188
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x0

    .line 190
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    if-ne p0, v5, :cond_0

    .line 192
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 193
    invoke-static {p0, p1, p2}, Lcom/kantv/ui/download/VideoDownloadManager;->setJsonObject(Lorg/json/JSONObject;ILjava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {v1, v5, p0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_1
    :goto_1
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u52a0\u5165\u7535\u89c6mDownloadDetail"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 208
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static setJsonObject(Lorg/json/JSONObject;ILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 255
    :try_start_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "state"

    .line 256
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0
.end method
