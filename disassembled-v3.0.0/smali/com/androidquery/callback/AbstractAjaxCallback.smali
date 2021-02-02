.class public abstract Lcom/androidquery/callback/AbstractAjaxCallback;
.super Ljava/lang/Object;
.source "AbstractAjaxCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static AGENT:Ljava/lang/String; = null

.field private static final DEFAULT_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static GZIP:Z = true

.field private static NETWORK_POOL:I = 0x4

.field private static NET_TIMEOUT:I = 0x7530

.field private static REUSE_CLIENT:Z = true

.field private static final boundary:Ljava/lang/String; = "*****"

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient; = null

.field private static fetchExe:Ljava/util/concurrent/ExecutorService; = null

.field private static lastStatus:I = 0x0

.field private static final lineEnd:Ljava/lang/String; = "\r\n"

.field private static ssf:Lorg/apache/http/conn/scheme/SocketFactory; = null

.field private static st:Lcom/androidquery/callback/Transformer; = null

.field private static final twoHyphens:Ljava/lang/String; = "--"


# instance fields
.field private abort:Z

.field private act:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Lcom/androidquery/auth/AccountHandle;

.field private blocked:Z

.field private cacheDir:Ljava/io/File;

.field private callback:Ljava/lang/String;

.field private completed:Z

.field private cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private expire:J

.field protected fileCache:Z

.field private handler:Ljava/lang/Object;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected memCache:Z

.field private method:I

.field private networkUrl:Ljava/lang/String;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private policy:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lorg/apache/http/HttpHost;

.field private reauth:Z

.field private refresh:Z

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field protected result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private retry:I

.field protected status:Lcom/androidquery/callback/AjaxStatus;

.field private targetFile:Ljava/io/File;

.field private timeout:I

.field private transformer:Lcom/androidquery/callback/Transformer;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private uiCallback:Z

.field private url:Ljava/lang/String;

.field private whandler:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 489
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->DEFAULT_SIG:[Ljava/lang/Class;

    const/16 v0, 0xc8

    .line 1803
    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    .line 143
    iput v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    const-string v1, "UTF-8"

    .line 146
    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    const/4 v1, 0x4

    .line 149
    iput v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    .line 153
    iput v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->retry:I

    return-void
.end method

.method static synthetic access$000(Lcom/androidquery/callback/AbstractAjaxCallback;)Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    return-object p0
.end method

.method private afterWork()V
    .locals 2

    .line 1295
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->memPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1299
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    .line 1300
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->clear()V

    return-void
.end method

.method private backgroundWork()V
    .locals 1

    .line 1008
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    if-nez v0, :cond_0

    .line 1010
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_0

    .line 1011
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileWork()V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1016
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreWork()V

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 1020
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->networkWork()V

    :cond_2
    return-void
.end method

.method public static cancel()V
    .locals 1

    .line 1354
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 1355
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 1356
    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1359
    :cond_0
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearTasks()V

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 162
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 163
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    .line 164
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 165
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    .line 166
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 167
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1702
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1703
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1709
    new-instance v1, Lcom/androidquery/util/Progress;

    invoke-direct {v1, v0}, Lcom/androidquery/util/Progress;-><init>(Ljava/lang/Object;)V

    .line 1712
    :cond_1
    invoke-static {p1, p2, p3, v1}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/androidquery/util/Progress;)V

    return-void
.end method

.method private correctEncoding([BLjava/lang/String;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/String;
    .locals 3

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 806
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 807
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p3

    :cond_0
    const-string p2, "Content-Type"

    .line 810
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxStatus;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "parsing header"

    .line 811
    invoke-static {v2, p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 813
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p3

    .line 816
    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 818
    :try_start_1
    invoke-direct {p0, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parsing needed"

    .line 820
    invoke-static {v2, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 822
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "correction needed"

    .line 823
    invoke-static {v2, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 824
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 825
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p2, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, v2

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, v1

    .line 829
    :goto_0
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method private datastoreWork()V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->datastoreGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 1070
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    :cond_0
    return-void
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 1512
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1513
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1515
    :cond_0
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1517
    :goto_0
    invoke-virtual {p2, v1, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    goto :goto_1

    .line 1519
    :cond_1
    invoke-virtual {p2, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1307
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1308
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1311
    :cond_0
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static extractParams(Landroid/net/Uri;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1208
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1210
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    const-string v5, "="

    .line 1211
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1212
    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v5, v6, :cond_0

    .line 1213
    aget-object v5, v4, v2

    aget-object v4, v4, v7

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1214
    :cond_0
    array-length v5, v4

    if-ne v5, v7, :cond_1

    .line 1215
    aget-object v4, v4, v2

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static extractUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private filePut()V
    .locals 4

    .line 1169
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_2

    .line 1171
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1174
    :try_start_0
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v1}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1176
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v1

    .line 1177
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2}, Lcom/androidquery/callback/AjaxStatus;->getInvalid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1179
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1182
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1188
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 1191
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    :cond_2
    return-void
.end method

.method private fileWork()V
    .locals 5

    .line 1050
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    .line 1056
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 1060
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    :cond_0
    return-void
.end method

.method public static getActiveCount()I
    .locals 2

    .line 1324
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 1325
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCacheUrl()Ljava/lang/String;
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/AccountHandle;->getCacheUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    return-object v0
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>"

    const/4 v1, 0x2

    .line 777
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 778
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 780
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 782
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-direct {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    .line 1475
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/androidquery/callback/AbstractAjaxCallback;->REUSE_CLIENT:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "creating http client"

    .line 1477
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1479
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1483
    sget v1, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1484
    sget v1, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1487
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0x2000

    .line 1490
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 1492
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1493
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    const-string v5, "http"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1494
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    if-nez v3, :cond_1

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    :cond_1
    const/16 v4, 0x1bb

    const-string v5, "https"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1496
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 1497
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1501
    :cond_2
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1689
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 1692
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected static getLastStatus()I
    .locals 1

    .line 1805
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    return v0
.end method

.method private getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->networkUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_1

    .line 1042
    invoke-virtual {v0, p1}, Lcom/androidquery/auth/AccountHandle;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getPreFile()Ljava/io/File;
    .locals 3

    .line 1134
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isStreamingContent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1140
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_1

    .line 1143
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1145
    :cond_1
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1147
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    .line 1148
    :cond_2
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    .line 1152
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1155
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1156
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1158
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method private httpDelete(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "get"

    .line 1381
    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1382
    invoke-static {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1384
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    .line 1529
    sget-object v3, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "User-Agent"

    .line 1530
    invoke-interface {v2, v4, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 1534
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1535
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1540
    :cond_1
    sget-boolean v3, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    const-string v4, "gzip"

    if-eqz v3, :cond_3

    const-string v3, "Accept-Encoding"

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1541
    :cond_2
    invoke-interface {v2, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "Cookie"

    .line 1546
    invoke-interface {v2, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    :cond_4
    iget-object v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_5

    .line 1550
    invoke-virtual {v0, v1, v2}, Lcom/androidquery/auth/AccountHandle;->applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V

    .line 1553
    :cond_5
    invoke-static {}, Lcom/androidquery/callback/AbstractAjaxCallback;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    .line 1555
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .line 1556
    iget-object v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    const-string v6, "http.route.default-proxy"

    if-eqz v0, :cond_6

    invoke-interface {v5, v6, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1557
    :cond_6
    iget v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    if-lez v0, :cond_7

    .line 1558
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "http.connection.timeout"

    invoke-interface {v5, v7, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1559
    iget v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "http.socket.timeout"

    invoke-interface {v5, v7, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1562
    :cond_7
    new-instance v7, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v7}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 1563
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string v8, "http.cookie-store"

    .line 1564
    invoke-interface {v7, v8, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1566
    iput-object v2, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1568
    iget-boolean v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->abort:Z

    if-nez v0, :cond_12

    const/4 v8, 0x0

    .line 1576
    :try_start_0
    invoke-direct {v1, v2, v3, v7}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1580
    iget-object v0, v1, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_11

    const-string v0, "proxy failed, retrying without proxy"

    .line 1581
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1582
    invoke-interface {v5, v6, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1584
    invoke-direct {v1, v2, v3, v7}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1

    .line 1596
    :goto_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 1597
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    .line 1600
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/16 v9, 0xc8

    if-lt v5, v9, :cond_e

    const/16 v9, 0x12c

    if-lt v5, v9, :cond_8

    goto/16 :goto_8

    :cond_8
    const-string v9, "http.target_host"

    .line 1630
    invoke-interface {v7, v9}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/HttpHost;

    const-string v10, "http.request"

    .line 1631
    invoke-interface {v7, v10}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/client/methods/HttpUriRequest;

    .line 1632
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x20

    const/high16 v11, 0x10000

    .line 1634
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v13, v12

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1640
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getPreFile()Ljava/io/File;

    move-result-object v11

    if-nez v11, :cond_9

    .line 1643
    new-instance v12, Lcom/androidquery/util/PredefinedBAOS;

    invoke-direct {v12, v10}, Lcom/androidquery/util/PredefinedBAOS;-><init>(I)V

    goto :goto_3

    .line 1645
    :cond_9
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 1646
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v12, v10

    .line 1649
    :goto_3
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1650
    :try_start_3
    invoke-direct {v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1651
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :cond_a
    move-object v4, v10

    .line 1654
    :goto_4
    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    long-to-int v0, v13

    invoke-direct {v1, v4, v12, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 1657
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    if-nez v11, :cond_b

    .line 1660
    move-object v0, v12

    check-cast v0, Lcom/androidquery/util/PredefinedBAOS;

    invoke-virtual {v0}, Lcom/androidquery/util/PredefinedBAOS;->toByteArray()[B

    move-result-object v0

    goto :goto_6

    .line 1662
    :cond_b
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    move-object v0, v8

    goto :goto_6

    :cond_d
    :goto_5
    move-object v0, v8

    move-object v11, v0

    .line 1668
    :goto_6
    invoke-static {v4}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1669
    invoke-static {v12}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v8, v4

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v8, v10

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v12, v8

    .line 1668
    :goto_7
    invoke-static {v8}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 1669
    invoke-static {v12}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_e
    :goto_8
    if-eqz v0, :cond_f

    .line 1612
    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1613
    :try_start_6
    invoke-direct {v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    .line 1615
    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    const-string v0, "error"

    .line 1617
    invoke-static {v0, v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v9, v8

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v4, v8

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v4, v8

    move-object v9, v4

    .line 1621
    :goto_9
    :try_start_8
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_b

    .line 1623
    :goto_a
    invoke-static {v4}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    throw v0

    :cond_f
    move-object v4, v8

    move-object v9, v4

    :goto_b
    invoke-static {v4}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v0, v8

    move-object v11, v0

    move-object v8, v9

    move-object/from16 v9, p2

    .line 1674
    :goto_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "response"

    invoke-static {v10, v4}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_10

    .line 1676
    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v10, p2

    invoke-static {v4, v10}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v4, p4

    .line 1679
    invoke-virtual {v4, v5}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/androidquery/callback/AjaxStatus;->error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/androidquery/callback/AjaxStatus;->file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/androidquery/callback/AjaxStatus;->context(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/androidquery/callback/AjaxStatus;->headers([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;

    return-void

    .line 1586
    :cond_11
    throw v9

    .line 1569
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Aborted"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method private httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1415
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    const-string v0, "%entity"

    .line 1419
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1421
    instance-of v1, v0, Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    .line 1422
    check-cast v0, Lorg/apache/http/HttpEntity;

    move-object p4, v0

    goto :goto_1

    .line 1425
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1428
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1430
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1434
    :cond_2
    new-instance p4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {p4, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_3

    const-string v0, "Content-Type"

    .line 1439
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 1440
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    :cond_3
    invoke-virtual {p2, p4}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1444
    invoke-direct {p0, p2, p1, p3, p5}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private httpGet(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "get"

    .line 1370
    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1371
    invoke-static {p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1373
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1375
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private httpMulti(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "multipart"

    .line 1876
    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1882
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 1885
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1887
    sget v2, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v2, 0x1

    .line 1889
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1890
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1891
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    .line 1893
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    .line 1894
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data;charset=utf-8;boundary=*****"

    .line 1895
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1898
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1899
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1903
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->makeCookie()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v1, "Cookie"

    .line 1905
    invoke-virtual {v0, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :cond_1
    iget-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz p2, :cond_2

    .line 1909
    invoke-virtual {p2, p0, v0}, Lcom/androidquery/auth/AccountHandle;->applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/net/HttpURLConnection;)V

    .line 1912
    :cond_2
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1914
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1916
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v2, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p3, "--*****--\r\n"

    .line 1920
    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 1922
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 1926
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1928
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 1929
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p3

    .line 1933
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-lt p2, v2, :cond_5

    const/16 v2, 0x12c

    if-lt p2, v2, :cond_4

    goto :goto_2

    .line 1943
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    move-object v2, v3

    goto :goto_3

    .line 1938
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "error"

    .line 1940
    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    .line 1946
    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "response"

    invoke-static {v4, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    .line 1949
    array-length v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1952
    :cond_6
    invoke-virtual {p4, p2}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AjaxStatus;->time(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AjaxStatus;->data([B)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/androidquery/callback/AjaxStatus;->error(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/androidquery/callback/AjaxStatus;->client(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;

    return-void
.end method

.method private httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "post"

    .line 1392
    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1394
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1396
    invoke-direct/range {v1 .. v6}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "put"

    .line 1402
    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1404
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1406
    invoke-direct/range {v1 .. v6}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method private isActive()Z
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 930
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 932
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isMultiPart(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1865
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1866
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1867
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1868
    instance-of v0, v1, Ljava/io/File;

    if-nez v0, :cond_1

    instance-of v0, v1, [B

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private makeCookie()Ljava/lang/String;
    .locals 4

    .line 2027
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2033
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2034
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2035
    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 2037
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "; "

    .line 2040
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2044
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private network()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    .line 1251
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1254
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_0

    .line 1255
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1256
    invoke-static {v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-static {v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->extractParams(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1260
    :cond_0
    invoke-direct {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 1263
    iget v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    if-ne v2, v3, :cond_1

    .line 1264
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpDelete(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v2, v3, :cond_2

    .line 1266
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpPut(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 1270
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_3
    if-nez v1, :cond_4

    .line 1274
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpGet(Ljava/lang/String;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 1276
    :cond_4
    invoke-static {v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->isMultiPart(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1277
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpMulti(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 1279
    :cond_5
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->httpPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/androidquery/callback/AjaxStatus;)V

    :goto_0
    return-void
.end method

.method private network(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1225
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 1232
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1236
    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method private networkWork()V
    .locals 5

    .line 1078
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    const/16 v1, -0x65

    if-nez v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1088
    :try_start_0
    iget v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->retry:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->network(I)V

    .line 1090
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2, p0, v4}, Lcom/androidquery/auth/AccountHandle;->expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->reauth:Z

    if-nez v2, :cond_2

    const-string v2, "reauth needed"

    .line 1091
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v4}, Lcom/androidquery/callback/AjaxStatus;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1092
    iput-boolean v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->reauth:Z

    .line 1093
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {v2, p0}, Lcom/androidquery/auth/AccountHandle;->reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1094
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->network()V

    goto :goto_0

    .line 1096
    :cond_1
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2, v3}, Lcom/androidquery/callback/AjaxStatus;->reauth(Z)Lcom/androidquery/callback/AjaxStatus;

    return-void

    .line 1101
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2}, Lcom/androidquery/callback/AjaxStatus;->getData()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1104
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 1105
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v2, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v1

    const-string v2, "network error"

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    .line 1110
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1112
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 1115
    :goto_2
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    const-string v1, "transform error"

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    .line 1119
    :cond_3
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    sput v0, Lcom/androidquery/callback/AbstractAjaxCallback;->lastStatus:I

    .line 1120
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    return-void
.end method

.method private parseCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "charset"

    .line 790
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, ";"

    .line 793
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 794
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, 0x7

    .line 796
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^\\w-]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static patchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    const-string v1, "%20"

    .line 1364
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\|"

    const-string v1, "%7C"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private self()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    return-object p0
.end method

.method public static setAgent(Ljava/lang/String;)V
    .locals 0

    .line 185
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->AGENT:Ljava/lang/String;

    return-void
.end method

.method public static setGZip(Z)V
    .locals 0

    .line 194
    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->GZIP:Z

    return-void
.end method

.method public static setNetworkLimit(I)V
    .locals 1

    const/16 v0, 0x19

    .line 1339
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    const/4 p0, 0x0

    .line 1340
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fetchExe:Ljava/util/concurrent/ExecutorService;

    .line 1342
    sget p0, Lcom/androidquery/callback/AbstractAjaxCallback;->NETWORK_POOL:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "setting network limit"

    invoke-static {v0, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setReuseHttpClient(Z)V
    .locals 0

    .line 1466
    sput-boolean p0, Lcom/androidquery/callback/AbstractAjaxCallback;->REUSE_CLIENT:Z

    const/4 p0, 0x0

    .line 1467
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public static setSSF(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0

    .line 1460
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    const/4 p0, 0x0

    .line 1461
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public static setTimeout(I)V
    .locals 0

    .line 176
    sput p0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    return-void
.end method

.method public static setTransformer(Lcom/androidquery/callback/Transformer;)V
    .locals 0

    .line 209
    sput-object p0, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    return-void
.end method

.method private toData(Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gzip"

    .line 1960
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1963
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 1966
    :goto_0
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method private wake()V
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    monitor-enter p0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 535
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private work(Landroid/content/Context;)V
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->memGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 956
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    .line 957
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 958
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    goto :goto_0

    .line 961
    :cond_0
    iget v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    invoke-static {p1, v0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    .line 962
    invoke-static {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--*****\r\n"

    .line 1992
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filename=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "Content-Type: application/octet-stream"

    .line 1998
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "Content-Transfer-Encoding: binary"

    .line 2000
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2005
    invoke-static {p3, p0}, Lcom/androidquery/util/AQUtility;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2007
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--*****\r\n"

    .line 2013
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    .line 2015
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2016
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    .line 2018
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 2019
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 2021
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1974
    :cond_0
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1976
    check-cast p2, Ljava/io/File;

    .line 1977
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0, v1}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1979
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    .line 1980
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p2, [B

    check-cast p2, [B

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, p1, p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1981
    :cond_2
    instance-of v0, p2, Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 1982
    check-cast p2, Ljava/io/InputStream;

    invoke-static {p0, p1, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    .line 1984
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    .line 1850
    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->abort:Z

    .line 1852
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    return-void
.end method

.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 855
    iget-wide v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return-object v2

    .line 857
    :cond_0
    invoke-static {p1, p2}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 859
    iget-wide v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long p2, v0, v3

    if-eqz p2, :cond_1

    .line 860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 861
    iget-wide v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    cmp-long p2, v0, v3

    if-lez p2, :cond_1

    return-object v2

    :cond_1
    return-object p1
.end method

.method public async(Landroid/app/Activity;)V
    .locals 2

    .line 879
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const-string v1, "Warning"

    if-eqz v0, :cond_0

    const-string v0, "Possible memory leak. Calling ajax with a terminated activity."

    .line 880
    invoke-static {v1, v0}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string p1, "type() is not called with response type."

    .line 884
    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 888
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->act:Ljava/lang/ref/WeakReference;

    .line 889
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    return-void
.end method

.method public async(Landroid/content/Context;)V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-nez v0, :cond_0

    .line 903
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 904
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->redirect(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iget-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->refresh(Z)Lcom/androidquery/callback/AjaxStatus;

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->reset()Lcom/androidquery/callback/AjaxStatus;

    const/4 v0, 0x0

    .line 907
    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 910
    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    .line 912
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_2

    .line 914
    invoke-virtual {v0}, Lcom/androidquery/auth/AccountHandle;->authenticated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 915
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    const-string v0, "auth needed"

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 916
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {p1, p0}, Lcom/androidquery/auth/AccountHandle;->auth(Lcom/androidquery/callback/AbstractAjaxCallback;)V

    return-void

    .line 921
    :cond_2
    invoke-direct {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->work(Landroid/content/Context;)V

    return-void
.end method

.method public auth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 1753
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "g."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    new-instance v0, Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {v0, p1, p2, p3}, Lcom/androidquery/auth/GoogleHandle;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1757
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TK;"
        }
    .end annotation

    .line 1769
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1770
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public block()V
    .locals 2

    .line 550
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->completed:Z

    if-eqz v0, :cond_0

    return-void

    .line 557
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 558
    :try_start_1
    iput-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    .line 560
    sget v0, Lcom/androidquery/callback/AbstractAjaxCallback;->NET_TIMEOUT:I

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 561
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void

    .line 551
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot block UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cacheAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 968
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    invoke-static {p1, v0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method callback()V
    .locals 11

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->showProgress(Z)V

    const/4 v1, 0x1

    .line 496
    iput-boolean v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->completed:Z

    .line 498
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getHandler()Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x3

    .line 502
    new-array v7, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v7, v0

    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    aput-object v4, v7, v1

    const-class v4, Lcom/androidquery/callback/AjaxStatus;

    const/4 v5, 0x2

    aput-object v4, v7, v5

    .line 503
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x1

    sget-object v9, Lcom/androidquery/callback/AbstractAjaxCallback;->DEFAULT_SIG:[Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    aput-object v10, v2, v0

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    aput-object v0, v2, v5

    move v5, v6

    move v6, v8

    move-object v8, v9

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 506
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 508
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v0, v1, v2}, Lcom/androidquery/callback/AbstractAjaxCallback;->skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 516
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->filePut()V

    .line 518
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->blocked:Z

    if-nez v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->close()V

    .line 522
    :cond_2
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->wake()V

    .line 523
    invoke-static {}, Lcom/androidquery/util/AQUtility;->debugNotify()V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public cookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected datastoreGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public encoding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public expire(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    .line 371
    iput-wide p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->expire:J

    .line 372
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public failure(ILjava/lang/String;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/androidquery/callback/AjaxStatus;->message(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;

    .line 945
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->callback()V

    :cond_0
    return-void
.end method

.method public fileCache(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .line 321
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->fileCache:Z

    .line 322
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 588
    :try_start_0
    invoke-virtual {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->isStreamingContent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxStatus;->file(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;

    move-object p2, v0

    goto :goto_0

    .line 591
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 594
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 596
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/io/File;",
            "[B)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 849
    invoke-static {p3, p4, p1, p2}, Lcom/androidquery/util/AQUtility;->storeAsync(Ljava/io/File;[BJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getCacheFile()Ljava/io/File;
    .locals 2

    .line 1124
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->getCacheFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1835
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Ljava/lang/Object;
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 1790
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1815
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/androidquery/callback/AjaxStatus;
    .locals 1

    .line 1826
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1779
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 246
    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 248
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected isStreamingContent()Z
    .locals 2

    .line 1129
    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/androidquery/util/XmlDom;

    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public memCache(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .line 333
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->memCache:Z

    .line 334
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public method(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 283
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->method:I

    .line 284
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public networkUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->networkUrl:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TK;"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->params:Ljava/util/Map;

    .line 459
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public policy(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 338
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->policy:I

    .line 339
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public progress(Landroid/app/Dialog;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TK;"
        }
    .end annotation

    .line 479
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public progress(Landroid/view/View;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    .line 469
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public progress(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 484
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    .line 486
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TK;"
        }
    .end annotation

    .line 421
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->proxy:Lorg/apache/http/HttpHost;

    .line 422
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .line 349
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->refresh:Z

    .line 350
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retry(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 293
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->retry:I

    .line 294
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->backgroundWork()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 985
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 986
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    const/16 v1, -0x65

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxStatus;->code(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    .line 989
    :goto_0
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getReauth()Z

    move-result v0

    if-nez v0, :cond_2

    .line 991
    iget-boolean v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    if-eqz v0, :cond_0

    .line 992
    invoke-static {p0}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 994
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    goto :goto_1

    .line 998
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->afterWork()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected showProgress(Z)V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->progress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 613
    invoke-static {}, Lcom/androidquery/util/AQUtility;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 614
    iget-object v1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    .line 616
    :cond_1
    new-instance v1, Lcom/androidquery/callback/AbstractAjaxCallback$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/androidquery/callback/AbstractAjaxCallback$1;-><init>(Lcom/androidquery/callback/AbstractAjaxCallback;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public targetFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TK;"
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->targetFile:Ljava/io/File;

    .line 427
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 288
    iput p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->timeout:I

    .line 289
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")TT;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 635
    :cond_0
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz p2, :cond_8

    .line 639
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 640
    array-length p3, p2

    invoke-static {p2, p1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    :try_start_1
    new-instance p2, Lorg/json/JSONTokener;

    invoke-direct {p2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v1

    .line 651
    :goto_0
    invoke-static {p2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 652
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    move-object p2, v1

    :goto_1
    return-object p2

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    :try_start_2
    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 663
    new-instance p2, Lorg/json/JSONTokener;

    invoke-direct {p2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 665
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_2
    return-object p1

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 674
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const-string p1, "network"

    .line 675
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 676
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3}, Lcom/androidquery/callback/AbstractAjaxCallback;->correctEncoding([BLjava/lang/String;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string p1, "file"

    .line 678
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 680
    :try_start_3
    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, p1

    goto :goto_3

    :catch_3
    move-exception p1

    .line 682
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    :goto_3
    return-object v1

    .line 704
    :cond_5
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p2

    .line 709
    :cond_6
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    if-eqz v2, :cond_7

    .line 710
    iget-object v4, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    iget-object v5, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 713
    :cond_7
    sget-object v0, Lcom/androidquery/callback/AbstractAjaxCallback;->st:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_c

    .line 714
    iget-object v2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    iget-object v3, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/androidquery/callback/Transformer;->transform(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    if-eqz v0, :cond_c

    .line 719
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class p2, Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object v0

    .line 723
    :cond_9
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class p2, Lcom/androidquery/util/XmlDom;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 728
    :try_start_4
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 729
    new-instance p2, Lcom/androidquery/util/XmlDom;

    invoke-direct {p2, p1}, Lcom/androidquery/util/XmlDom;-><init>(Ljava/io/InputStream;)V

    .line 730
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object p2

    :catch_4
    move-exception p1

    .line 732
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    return-object v1

    .line 739
    :cond_a
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class p2, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 741
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 744
    :try_start_5
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 745
    iget-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->encoding:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 746
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 748
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    return-object v1

    .line 754
    :cond_b
    iget-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    const-class p2, Ljava/io/InputStream;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 756
    :try_start_6
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 757
    invoke-virtual {p3, p1}, Lcom/androidquery/callback/AjaxStatus;->closeLater(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    .line 760
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    :cond_c
    return-object v1
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TK;"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer:Lcom/androidquery/callback/Transformer;

    .line 311
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public type(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TK;"
        }
    .end annotation

    .line 278
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->type:Ljava/lang/Class;

    .line 279
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public uiCallback(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    .line 360
    iput-boolean p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->uiCallback:Z

    .line 361
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public url(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->url:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->whandler:Ljava/lang/ref/Reference;

    .line 232
    iput-object p2, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->callback:Ljava/lang/String;

    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/androidquery/callback/AbstractAjaxCallback;->handler:Ljava/lang/Object;

    .line 234
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
