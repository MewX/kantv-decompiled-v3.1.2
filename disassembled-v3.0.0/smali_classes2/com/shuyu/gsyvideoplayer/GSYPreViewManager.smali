.class public Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;
.super Ljava/lang/Object;
.source "GSYPreViewManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HANDLER_PREPARE:I = 0x0

.field private static final HANDLER_RELEASE:I = 0x2

.field private static final HANDLER_SETDISPLAY:I = 0x1

.field public static TAG:Ljava/lang/String; = "GSYPreViewManager"

.field private static videoManager:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;


# instance fields
.field private mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;

.field private mMediaHandlerThread:Landroid/os/HandlerThread;

.field private mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private seekToComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->seekToComplete:Z

    .line 48
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    .line 51
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;-><init>(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;Landroid/os/Message;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->initVideo(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;Landroid/os/Message;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->showDisplay(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object p0
.end method

.method private initIJKPlayer(Landroid/os/Message;)V
    .locals 2

    .line 98
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 99
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initVideo(Landroid/os/Message;)V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 84
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->initIJKPlayer(Landroid/os/Message;)V

    .line 86
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 87
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1, p0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 88
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    .line 89
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized instance()Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;
    .locals 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    .line 44
    :cond_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showDisplay(Landroid/os/Message;)V
    .locals 1

    .line 108
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 109
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 112
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object v0
.end method

.method public isSeekToComplete()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->seekToComplete:Z

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    .line 121
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->seekToComplete:Z

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->seekToComplete:Z

    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/util/Map;ZF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZF)V"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 133
    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V

    .line 135
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 2

    .line 140
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 141
    iput v1, v0, Landroid/os/Message;->what:I

    .line 142
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;

    invoke-virtual {v1, v0}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .locals 2

    .line 146
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 147
    iput v1, v0, Landroid/os/Message;->what:I

    .line 148
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setSeekToComplete(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->seekToComplete:Z

    return-void
.end method
