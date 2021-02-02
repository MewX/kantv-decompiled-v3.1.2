.class public Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;
.super Ljava/lang/Object;
.source "SystemPlayerManager.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;


# instance fields
.field private mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

.field private release:Z

.field private surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSpeed(F)V
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 224
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 225
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 226
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getInternalMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0

    :cond_1
    const-string p1, " not support setSpeed"

    .line 228
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getBufferedPercentage()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/shuyu/gsyvideoplayer/model/VideoOptionModel;",
            ">;",
            "Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;",
            ")V"
        }
    .end annotation

    .line 41
    new-instance p3, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;-><init>()V

    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 42
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setAudioStreamType(I)V

    const/4 p3, 0x0

    .line 43
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    .line 44
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/shuyu/gsyvideoplayer/model/GSYModel;

    .line 46
    :try_start_0
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isCache()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 47
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getCachePath()Ljava/io/File;

    move-result-object v5

    move-object v0, p4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;->doCacheLogic(Landroid/content/Context;Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p3, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getMapHeadData()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, p1, p4, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->isLooping()Z

    move-result p3

    invoke-virtual {p1, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setLooping(Z)V

    .line 52
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-lez p1, :cond_1

    .line 53
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/model/GSYModel;->getSpeed()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->setSpeed(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSurfaceSupportLockCanvas()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    .line 105
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public releaseSurface()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->surface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setNeedMute(Z)V
    .locals 1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSpeed(FZ)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->setSpeed(F)V

    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 0

    return-void
.end method

.method public showDisplay(Landroid/os/Message;)V
    .locals 2

    .line 62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 63
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    .line 66
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->surface:Landroid/view/Surface;

    .line 67
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->release:Z

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/player/SystemPlayerManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->stop()V

    :cond_0
    return-void
.end method
