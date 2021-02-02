.class Lcom/avos/avoscloud/AVFileDownloader;
.super Landroid/os/AsyncTask;
.source "AVFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/avos/avoscloud/AVException;",
        ">;"
    }
.end annotation


# static fields
.field private static final READ_BUF_SIZE:I = 0x2000


# instance fields
.field private final dataCallback:Lcom/avos/avoscloud/GetDataCallback;

.field private final dataStreamCallback:Lcom/avos/avoscloud/GetDataStreamCallback;

.field private fileData:[B

.field private is:Ljava/io/InputStream;

.field private final progressCallback:Lcom/avos/avoscloud/ProgressCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    .line 34
    iput-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataStreamCallback:Lcom/avos/avoscloud/GetDataStreamCallback;

    .line 35
    iput-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataCallback;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataStreamCallback:Lcom/avos/avoscloud/GetDataStreamCallback;

    .line 41
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/ProgressCallback;Lcom/avos/avoscloud/GetDataStreamCallback;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    .line 46
    iput-object p2, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataStreamCallback:Lcom/avos/avoscloud/GetDataStreamCallback;

    .line 47
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVFileDownloader;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVFileDownloader;)Lcom/avos/avoscloud/GetDataCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    return-object p0
.end method

.method static synthetic access$202(Lcom/avos/avoscloud/AVFileDownloader;[B)[B
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/avos/avoscloud/AVFileDownloader;)Lcom/avos/avoscloud/GetDataStreamCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataStreamCallback:Lcom/avos/avoscloud/GetDataStreamCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/avos/avoscloud/AVFileDownloader;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader;->is:Ljava/io/InputStream;

    return-object p1
.end method

.method private downloadFileFromNetwork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 6

    .line 104
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFileFromNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    .line 109
    new-array v2, v1, [Lcom/avos/avoscloud/AVException;

    .line 110
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 111
    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 113
    new-instance v4, Lcom/avos/avoscloud/AVFileDownloader$1;

    invoke-direct {v4, p0}, Lcom/avos/avoscloud/AVFileDownloader$1;-><init>(Lcom/avos/avoscloud/AVFileDownloader;)V

    .line 119
    invoke-static {v4}, Lcom/avos/avoscloud/AVHttpClient;->progressClientInstance(Lcom/avos/avoscloud/AVHttpClient$ProgressListener;)Lcom/avos/avoscloud/AVHttpClient;

    move-result-object v4

    .line 120
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    new-instance v5, Lcom/avos/avoscloud/AVFileDownloader$2;

    invoke-direct {v5, p0, v0, p1, v2}, Lcom/avos/avoscloud/AVFileDownloader$2;-><init>(Lcom/avos/avoscloud/AVFileDownloader;Ljava/io/File;Ljava/lang/String;[Lcom/avos/avoscloud/AVException;)V

    invoke-virtual {v4, v3, v1, v5}, Lcom/avos/avoscloud/AVHttpClient;->execute(Lokhttp3/Request;ZLokhttp3/Callback;)V

    .line 174
    new-array p1, v1, [Ljava/lang/Integer;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 175
    aget-object p1, v2, v1

    if-eqz p1, :cond_1

    aget-object p1, v2, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static getAVFileCachePath()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/avfile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method static getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 185
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/avos/avoscloud/AVFileDownloader;->getAVFileCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 1

    const/4 v0, 0x0

    .line 77
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->doInBackground([Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    return-object p1
.end method

.method protected doWork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;
    .locals 5

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B

    .line 52
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 53
    invoke-static {p1}, Lcom/avos/avoscloud/AVFileDownloader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 55
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/avos/avoscloud/AVFileDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    if-eqz v2, :cond_0

    .line 57
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->readContentBytesFromFile(Ljava/io/File;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B

    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataStreamCallback:Lcom/avos/avoscloud/GetDataStreamCallback;

    if-eqz v2, :cond_1

    .line 60
    :try_start_0
    invoke-static {v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVFileDownloader;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to invoke doWork() url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    iput-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->is:Ljava/io/InputStream;

    :cond_1
    :goto_0
    return-object v0

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->downloadFileFromNetwork(Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object p1

    return-object p1

    .line 71
    :cond_3
    new-instance p1, Lcom/avos/avoscloud/AVException;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/AVException;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataCallback:Lcom/avos/avoscloud/GetDataCallback;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/avos/avoscloud/AVFileDownloader;->fileData:[B

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/GetDataCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->dataStreamCallback:Lcom/avos/avoscloud/GetDataStreamCallback;

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/avos/avoscloud/AVFileDownloader;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/avos/avoscloud/GetDataStreamCallback;->internalDone0(Ljava/io/InputStream;Lcom/avos/avoscloud/AVException;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/avos/avoscloud/AVException;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->onPostExecute(Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/avos/avoscloud/AVFileDownloader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    aget-object p1, p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFileDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
