.class public Lcom/shuyu/gsyvideoplayer/GSYVideoManager;
.super Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;
.source "GSYVideoManager.java"


# static fields
.field public static final FULLSCREEN_ID:I

.field public static final SMALL_ID:I

.field public static TAG:Ljava/lang/String;

.field private static videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->small_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->SMALL_ID:I

    .line 27
    sget v0, Lcom/shuyu/gsyvideoplayer/R$id;->full_id:I

    sput v0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->FULLSCREEN_ID:I

    const-string v0, "GSYVideoManager"

    .line 29
    sput-object v0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->init()V

    return-void
.end method

.method public static backFromWindowFull(Landroid/content/Context;)Z
    .locals 2

    .line 85
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    sget v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->FULLSCREEN_ID:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 89
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->hideNavKey(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 91
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->lastListener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onBackFullscreen()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static declared-synchronized changeManager(Lcom/shuyu/gsyvideoplayer/GSYVideoManager;)V
    .locals 1

    const-class v0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    monitor-enter v0

    .line 74
    :try_start_0
    sput-object p0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;
    .locals 2

    const-class v0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;-><init>()V

    sput-object v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    .line 46
    :cond_0
    sget-object v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isFullState(Landroid/app/Activity;)Z
    .locals 1

    .line 145
    invoke-static {p0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 146
    sget v0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->FULLSCREEN_ID:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 149
    check-cast p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static onPause()V
    .locals 1

    .line 112
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onVideoPause()V

    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .line 121
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onVideoResume()V

    :cond_0
    return-void
.end method

.method public static onResume(Z)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onVideoResume(Z)V

    :cond_0
    return-void
.end method

.method public static releaseAllVideos()V
    .locals 1

    .line 101
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onCompletion()V

    .line 104
    :cond_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->releaseMediaPlayer()V

    return-void
.end method

.method public static declared-synchronized tmpInstance(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)Lcom/shuyu/gsyvideoplayer/GSYVideoManager;
    .locals 3

    const-class v0, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    invoke-direct {v1}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;-><init>()V

    .line 54
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->bufferPoint:I

    iput v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->bufferPoint:I

    .line 55
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget-object v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->optionModelList:Ljava/util/List;

    iput-object v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->optionModelList:Ljava/util/List;

    .line 56
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget-object v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->playTag:Ljava/lang/String;

    iput-object v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->playTag:Ljava/lang/String;

    .line 57
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->currentVideoWidth:I

    iput v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->currentVideoWidth:I

    .line 58
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->currentVideoHeight:I

    iput v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->currentVideoHeight:I

    .line 59
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget-object v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->context:Landroid/content/Context;

    iput-object v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->context:Landroid/content/Context;

    .line 60
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->lastState:I

    iput v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->lastState:I

    .line 61
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->playPosition:I

    iput v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->playPosition:I

    .line 62
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->timeOut:I

    iput v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->timeOut:I

    .line 63
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoType:I

    iput v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoType:I

    .line 64
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget-boolean v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->needMute:Z

    iput-boolean v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->needMute:Z

    .line 65
    sget-object v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->videoManager:Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    iget-boolean v2, v2, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->needTimeOutOther:Z

    iput-boolean v2, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->needTimeOutOther:Z

    .line 66
    invoke-virtual {v1, p0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
