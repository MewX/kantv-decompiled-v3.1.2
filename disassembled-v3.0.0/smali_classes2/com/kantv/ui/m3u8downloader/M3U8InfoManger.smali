.class public Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;
.super Ljava/lang/Object;
.source "M3U8InfoManger.java"


# static fields
.field private static mM3U8InfoManger:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;


# instance fields
.field private onM3U8InfoListener:Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->handlerSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;Ljava/lang/Throwable;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->handlerError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getInstance()Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;
    .locals 2

    .line 17
    const-class v0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->mM3U8InfoManger:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    invoke-direct {v1}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;-><init>()V

    sput-object v1, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->mM3U8InfoManger:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    .line 21
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    sget-object v0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->mM3U8InfoManger:Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;

    return-object v0

    :catchall_0
    move-exception v1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handlerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->onM3U8InfoListener:Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;

    invoke-interface {v0, p1}, Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private handlerSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->onM3U8InfoListener:Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;

    invoke-interface {v0, p1, p2}, Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;->onSuccess(Lcom/kantv/ui/m3u8downloader/bean/M3U8;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getM3U8Info(Ljava/lang/String;Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;)V
    .locals 0

    monitor-enter p0

    .line 32
    :try_start_0
    iput-object p2, p0, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;->onM3U8InfoListener:Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;

    .line 33
    invoke-interface {p2}, Lcom/kantv/ui/m3u8downloader/OnM3U8InfoListener;->onStart()V

    .line 34
    new-instance p2, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;

    invoke-direct {p2, p0, p1}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;-><init>(Lcom/kantv/ui/m3u8downloader/M3U8InfoManger;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lcom/kantv/ui/m3u8downloader/M3U8InfoManger$1;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
