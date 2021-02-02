.class public abstract Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;
.implements Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_TIME_OUT_ERROR:I = -0xc0

.field protected static final HANDLER_PREPARE:I = 0x0

.field protected static final HANDLER_RELEASE:I = 0x2

.field protected static final HANDLER_RELEASE_SURFACE:I = 0x3

.field protected static final HANDLER_SETDISPLAY:I = 0x1

.field public static TAG:Ljava/lang/String; = "GSYVideoBaseManager"


# instance fields
.field protected bufferPoint:I

.field protected cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

.field protected context:Landroid/content/Context;

.field protected currentVideoHeight:I

.field protected currentVideoWidth:I

.field protected lastListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected lastState:I

.field protected listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

.field private mTimeOutRunnable:Ljava/lang/Runnable;

.field protected mainThreadHandler:Landroid/os/Handler;

.field protected needMute:Z

.field protected needTimeOutOther:Z

.field protected optionModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;"
        }
    .end annotation
.end field

.field protected playPosition:I

.field protected playTag:Ljava/lang/String;

.field protected playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

.field protected timeOut:I

.field protected videoType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 72
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    .line 92
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    const/16 v1, -0x16

    .line 102
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    const/16 v1, 0x1f40

    .line 112
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    const/4 v1, 0x4

    .line 117
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->videoType:I

    .line 122
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    .line 638
    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Message;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->initVideo(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Message;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->releaseSurface(Landroid/os/Message;)V

    return-void
.end method

.method private initVideo(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    .line 586
    :try_start_0
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    .line 587
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    .line 589
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->release()V

    .line 592
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->videoType:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getPlayManager(I)Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    .line 593
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->videoType:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager(I)Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    .line 594
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    invoke-interface {v0, p0}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->setCacheAvailableListener(Lcom/shuyu/gsyvideoplayer/cache/ICacheManager$ICacheAvailableListener;)V

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->optionModelList:Ljava/util/List;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;)V

    .line 599
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->setNeedMute(Z)V

    .line 600
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p1

    .line 601
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 602
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x1

    .line 603
    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 604
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 605
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 606
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 607
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 608
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 609
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 612
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private releaseSurface(Landroid/os/Message;)V
    .locals 0

    .line 649
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 650
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz p1, :cond_0

    .line 651
    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->releaseSurface()V

    :cond_0
    return-void
.end method

.method private showDisplay(Landroid/os/Message;)V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->showDisplay(Landroid/os/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 411
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->videoType:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager(I)Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->cachePreview(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected cancelTimeOutBuffer()V
    .locals 2

    const-string v0, "cancelTimeOutBuffer"

    .line 631
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 633
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public clearAllDefaultCache(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, v0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 424
    invoke-virtual {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public clearDefaultCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 143
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->videoType:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->getCacheManager(I)Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public enableRawPlay(Landroid/content/Context;)V
    .locals 0

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->context:Landroid/content/Context;

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 431
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getBufferedPercentage()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getCacheManager(I)Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
    .locals 0

    .line 162
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/cache/CacheFactory;->getCacheManager(I)Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    move-result-object p1

    return-object p1
.end method

.method public getCurCacheManager()Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    return-object v0
.end method

.method public getCurPlayerManager()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 503
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 511
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastState()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastState:I

    return v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getNetSpeed()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOptionModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->optionModelList:Ljava/util/List;

    return-object v0
.end method

.method protected getPlayManager(I)Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .locals 0

    .line 158
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/player/PlayerFactory;->getPlayManager(I)Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    move-result-object p1

    return-object p1
.end method

.method public getPlayPosition()I
    .locals 1

    .line 391
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayer()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    return-object v0
.end method

.method public getRotateInfoFlag()I
    .locals 1

    const/16 v0, 0x2711

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    .line 719
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 480
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 527
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 519
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .line 666
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->videoType:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected init()V
    .locals 2

    .line 151
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public initContext(Landroid/content/Context;)V
    .locals 0

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->context:Landroid/content/Context;

    return-void
.end method

.method public isCacheFile()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cacheManager:Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->hadCached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    return v0
.end method

.method public isNeedTimeOutOther()Z
    .locals 1

    .line 723
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->isSurfaceSupportLockCanvas()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    return-object v0
.end method

.method public listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    return-object v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;

    invoke-direct {v0, p0, p2}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCacheAvailable(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 346
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->bufferPoint:I

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$2;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$2;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 297
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$6;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$1;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 284
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$4;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$4;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 331
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    .line 332
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    .line 333
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;

    invoke-direct {p2, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;-><init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->pause()V

    :cond_0
    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 206
    iput v1, v0, Landroid/os/Message;->what:I

    .line 207
    new-instance v1, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V

    .line 208
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    .line 210
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->startTimeOutBuffer()V

    :cond_1
    return-void
.end method

.method public releaseMediaPlayer()V
    .locals 2

    .line 217
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 218
    iput v1, v0, Landroid/os/Message;->what:I

    .line 219
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    const-string v0, ""

    .line 220
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    const/16 v0, -0x16

    .line 221
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    return-void
.end method

.method public releaseSurface(Landroid/view/Surface;)V
    .locals 2

    .line 234
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 235
    iput v1, v0, Landroid/os/Message;->what:I

    .line 236
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 237
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->seekTo(J)V

    :cond_0
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mMediaHandler:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;

    invoke-virtual {v0, p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCurrentVideoHeight(I)V
    .locals 0

    .line 371
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoHeight:I

    return-void
.end method

.method public setCurrentVideoWidth(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->currentVideoWidth:I

    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .locals 2

    .line 226
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 227
    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    invoke-direct {p0, v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->showDisplay(Landroid/os/Message;)V

    return-void
.end method

.method public setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastListener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastListener:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setLastState(I)V
    .locals 0

    .line 356
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->lastState:I

    return-void
.end method

.method public setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setNeedMute(Z)V
    .locals 1

    .line 712
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needMute:Z

    .line 713
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 714
    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->setNeedMute(Z)V

    :cond_0
    return-void
.end method

.method public setOptionModelList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;)V"
        }
    .end annotation

    .line 701
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->optionModelList:Ljava/util/List;

    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 396
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playPosition:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playTag:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->setSpeed(FZ)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 439
    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->setSpeedPlaying(FZ)V

    :cond_0
    return-void
.end method

.method public setTimeOut(IZ)V
    .locals 0

    .line 745
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    .line 746
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->needTimeOutOther:Z

    return-void
.end method

.method public setVideoType(Landroid/content/Context;I)V
    .locals 0

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->context:Landroid/content/Context;

    .line 677
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->videoType:I

    return-void
.end method

.method public start()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->start()V

    :cond_0
    return-void
.end method

.method protected startTimeOutBuffer()V
    .locals 4

    const-string v0, "startTimeOutBuffer"

    .line 622
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->mTimeOutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->timeOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->playerManager:Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    if-eqz v0, :cond_0

    .line 458
    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->stop()V

    :cond_0
    return-void
.end method
