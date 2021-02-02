.class public abstract Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;
.super Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;
.source "GSYVideoView.java"

# interfaces
.implements Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;


# static fields
.field public static final CHANGE_DELAY_TIME:I = 0x7d0

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x2

.field public static final CURRENT_STATE_PLAYING_BUFFERING_START:I = 0x3

.field public static final CURRENT_STATE_PREPAREING:I = 0x1


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBackUpPlayingBufferState:I

.field protected mBufferPoint:I

.field protected mCache:Z

.field protected mCachePath:Ljava/io/File;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentPosition:J

.field protected mCurrentState:I

.field protected mHadPlay:Z

.field protected mHadPrepared:Z

.field protected mIfCurrentIsFullscreen:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetChanged:Z

.field protected mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

.field protected mNetSate:Ljava/lang/String;

.field protected mOriginUrl:Ljava/lang/String;

.field protected mPauseBeforePrepared:Z

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mReleaseWhenLossAudio:Z

.field protected mSaveChangeViewTIme:J

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekOnStart:J

.field protected mShowPauseCover:Z

.field protected mSoundTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

.field protected onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 155
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 62
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 74
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 92
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 95
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 98
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 101
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 104
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 110
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 113
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 116
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 119
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v0, ""

    .line 125
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v0, "NORMAL"

    .line 140
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 347
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 156
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v0, -0x16

    .line 62
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 74
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 86
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 89
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 92
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 95
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 98
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 101
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 104
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 110
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 113
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 116
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 119
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string p2, ""

    .line 125
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string p2, "NORMAL"

    .line 140
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 149
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 347
    new-instance p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {p2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 161
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 59
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 p3, -0x16

    .line 62
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 74
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 p2, -0x1

    .line 77
    iput-wide p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 p2, 0x0

    .line 83
    iput-wide p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 86
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 89
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 92
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 95
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 98
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 101
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 104
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 110
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 113
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 116
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 119
    iput-boolean p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string p2, ""

    .line 125
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string p2, "NORMAL"

    .line 140
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 149
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 347
    new-instance p2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {p2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 166
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 170
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 62
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 74
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 92
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 95
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 98
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 101
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 104
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 110
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 113
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 116
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 119
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v0, ""

    .line 125
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v0, "NORMAL"

    .line 140
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 347
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 171
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 172
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract backFromFull(Landroid/content/Context;)Z
.end method

.method public clearCurrentCache()V
    .locals 4

    .line 693
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isCacheFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    if-eqz v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Play Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 697
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    const-string v1, "127.0.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->clearCache(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected createNetWorkState()V
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$3;

    invoke-direct {v2, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$3;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V

    invoke-direct {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;-><init>(Landroid/content/Context;Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule$NetChangeListener;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    .line 810
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;->getCurrentConnectionType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected deleteCacheFileWhenError()V
    .locals 2

    .line 540
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->clearCurrentCache()V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link Or mCache Error, Please Try Again "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 542
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCache Link "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    return-void
.end method

.method protected getActivityContext()Landroid/content/Context;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getBuffterPoint()I
    .locals 1

    .line 960
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBufferPoint:I

    return v0
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 6

    .line 709
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 711
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v0

    :cond_1
    if-nez v1, :cond_2

    .line 717
    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    long-to-int v0, v2

    return v0

    :cond_2
    return v1

    :catch_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public getCurrentState()I
    .locals 1

    .line 885
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    return v0
.end method

.method public getCurrentVideoHeight()I
    .locals 2

    const/4 v0, 0x0

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoHeight()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 229
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 2

    const/4 v0, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 216
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 729
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v0

    return v1

    :catch_0
    move-exception v0

    .line 731
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;
.end method

.method public abstract getLayoutId()I
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 930
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getNetSpeed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNetSpeedText()Ljava/lang/String;
    .locals 2

    .line 939
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getNetSpeed()J

    move-result-wide v0

    .line 940
    invoke-static {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getTextSpeed(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekOnStart()J
    .locals 2

    .line 944
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 996
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 237
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 271
    :cond_0
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 274
    :goto_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->initInflate(Landroid/content/Context;)V

    .line 276
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->surface_container:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 277
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 280
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    .line 281
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method protected initInflate(Landroid/content/Context;)V
    .locals 2

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    invoke-virtual {p1}, Landroid/view/InflateException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSYImageCover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/view/InflateException;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "********************\n*****   \u6ce8\u610f   *************************\n*\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n"

    .line 290
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1}, Landroid/view/InflateException;->printStackTrace()V

    .line 298
    new-instance p1, Landroid/view/InflateException;

    const-string v0, "\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\uff0cplease remove GSYImageCover from your layout"

    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isCurrentMediaListener()Z
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIfCurrentIsFullscreen()Z
    .locals 1

    .line 967
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    return v0
.end method

.method public isInPlayingState()Z
    .locals 2

    .line 892
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-ltz v0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 975
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    return v0
.end method

.method public isReleaseWhenLossAudio()Z
    .locals 1

    .line 1073
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    return v0
.end method

.method public isShowPauseCover()Z
    .locals 1

    .line 1032
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    return v0
.end method

.method public isStartAfterPrepared()Z
    .locals 1

    .line 1060
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    return v0
.end method

.method protected listenerNetWorkState()V
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;->onHostResume()V

    :cond_0
    return-void
.end method

.method protected netWorkErrorLogic()V
    .locals 4

    .line 523
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    move-result v0

    int-to-long v0, v0

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Net State Changed. renew player to connect *******"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseMediaPlayer()V

    .line 526
    new-instance v2, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$2;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAutoCompletion()V
    .locals 5

    const/4 v0, 0x6

    .line 570
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    const-wide/16 v0, 0x0

    .line 572
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 573
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 575
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 579
    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v0, :cond_1

    .line 580
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 582
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 584
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    .line 586
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onAutoComplete"

    .line 587
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onCompletion()V
    .locals 3

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    const-wide/16 v1, 0x0

    .line 597
    iput-wide v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 598
    iput-wide v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 600
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 604
    :cond_0
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-nez v1, :cond_1

    .line 605
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 606
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setLastListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setCurrentVideoHeight(I)V

    .line 609
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setCurrentVideoWidth(I)V

    .line 611
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 612
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 614
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    return-void
.end method

.method public onError(II)V
    .locals 4

    .line 626
    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 627
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 628
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->netWorkErrorLogic()V

    .line 629
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_0

    .line 630
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object p0, v1, v0

    invoke-interface {p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/16 p2, 0x26

    if-eq p1, p2, :cond_2

    const/16 p2, -0x26

    if-eq p1, p2, :cond_2

    const/4 p1, 0x7

    .line 636
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 637
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->deleteCacheFileWhenError()V

    .line 638
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz p1, :cond_2

    .line 639
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object p0, v1, v0

    invoke-interface {p1, p2, v1}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onInfo(II)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/16 v2, 0x2bd

    if-ne p1, v2, :cond_0

    .line 647
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 649
    iget-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz p2, :cond_4

    if-eq p1, v1, :cond_4

    if-lez p1, :cond_4

    .line 650
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x2be

    if-ne p1, v2, :cond_3

    .line 653
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 655
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 657
    :cond_1
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-eq p1, v1, :cond_2

    if-lez p1, :cond_2

    .line 658
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 660
    :cond_2
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    goto :goto_0

    .line 662
    :cond_3
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getRotateInfoFlag()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 663
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mRotate:I

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Video Rotate Info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 665
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz p1, :cond_4

    .line 666
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mRotate:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->setRotation(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onPrepared()V
    .locals 6

    .line 551
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 553
    :cond_0
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 555
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onPrepared"

    .line 556
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object p0, v3, v1

    invoke-interface {v0, v2, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    :cond_1
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 561
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 468
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 469
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 472
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 474
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 475
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 476
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoReset()V
    .locals 1

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void
.end method

.method public onVideoResume()V
    .locals 1

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    return-void
.end method

.method public onVideoResume(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 499
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 500
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 502
    :try_start_0
    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    invoke-interface {p1, v0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object p1

    invoke-interface {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V

    const/4 p1, 0x2

    .line 507
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 508
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    if-nez v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 511
    :cond_1
    iput-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 514
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged()V
    .locals 2

    .line 672
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentVideoWidth()I

    move-result v0

    .line 673
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->getCurrentVideoHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected prepareVideo()V
    .locals 0

    .line 323
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->startPrepare()V

    return-void
.end method

.method public release()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 741
    iput-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 742
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    :cond_0
    return-void
.end method

.method protected releaseNetWorkState()V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;->onHostPause()V

    const/4 v0, 0x0

    .line 838
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    :cond_0
    return-void
.end method

.method protected releasePauseCover()V
    .locals 2

    .line 199
    :try_start_0
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected releaseSurface(Landroid/view/Surface;)V
    .locals 1

    .line 686
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->releaseSurface(Landroid/view/Surface;)V

    return-void
.end method

.method protected abstract releaseVideos()V
.end method

.method public seekTo(J)V
    .locals 3

    .line 1051
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1055
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected setDisplay(Landroid/view/Surface;)V
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public setIfCurrentIsFullscreen(Z)V
    .locals 0

    .line 971
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 982
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1096
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 921
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    return-void
.end method

.method public setReleaseWhenLossAudio(Z)V
    .locals 0

    .line 1082
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    return-void
.end method

.method public setSeekOnStart(J)V
    .locals 0

    .line 953
    iput-wide p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    return-void
.end method

.method public setShowPauseCover(Z)V
    .locals 0

    .line 1043
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1003
    invoke-virtual {p0, p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 1013
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    .line 1014
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 1015
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setSpeed(FZ)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 1

    .line 1027
    invoke-virtual {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    .line 1028
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setSpeedPlaying(FZ)V

    return-void
.end method

.method public setStartAfterPrepared(Z)V
    .locals 0

    .line 1069
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    return-void
.end method

.method protected abstract setStateAndUi(I)V
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 427
    invoke-virtual/range {v0 .. v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z
    .locals 4

    .line 441
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 442
    iput-object p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 443
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    return p3

    .line 447
    :cond_0
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 448
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 449
    iput-object p4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 451
    invoke-virtual {p0, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 404
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 405
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 407
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    :goto_0
    if-eqz p4, :cond_1

    .line 410
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 388
    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setVideoAllCallBack(Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    return-void
.end method

.method protected showPauseCover()V
    .locals 6

    .line 177
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    .line 179
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->isSurfaceSupportLockCanvas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 183
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v4}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 186
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startAfterPrepared()V
    .locals 6

    .line 753
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    .line 758
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->start()V

    :cond_1
    const/4 v0, 0x2

    .line 762
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 764
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-wide v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    invoke-interface {v0, v4, v5}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V

    .line 766
    iput-wide v2, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 772
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->addTextureView()V

    .line 774
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V

    .line 776
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->listenerNetWorkState()V

    const/4 v0, 0x1

    .line 778
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 780
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    if-eqz v0, :cond_3

    .line 781
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTextureView:Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/render/GSYRenderView;->onResume()V

    .line 784
    :cond_3
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    if-eqz v0, :cond_4

    .line 785
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    const/4 v0, 0x0

    .line 786
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    :cond_4
    return-void
.end method

.method protected startButtonLogic()V
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    if-nez v0, :cond_0

    const-string v0, "onClickStartIcon"

    .line 310
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickStartIcon(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    const-string v0, "onClickStartError"

    .line 313
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    return-void
.end method

.method public abstract startPlayLogic()V
.end method

.method protected startPrepare()V
    .locals 9

    .line 327
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onCompletion()V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const-string v0, "onStartPrepared"

    .line 331
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setListener(Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;)V

    .line 335
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setPlayTag(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v0

    iget v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    invoke-interface {v0, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->setPlayPosition(I)V

    .line 337
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 338
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, -0x1

    .line 339
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 340
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v2

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    move-object v4, v0

    iget-boolean v5, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    iget v6, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    iget-boolean v7, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    iget-object v8, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    invoke-interface/range {v2 .. v8}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->prepare(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V

    .line 341
    invoke-virtual {p0, v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    return-void
.end method

.method protected unListenerNetWorkState()V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/utils/NetInfoModule;->onHostPause()V

    :cond_0
    return-void
.end method

.method protected updatePauseCover()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    if-eqz v0, :cond_1

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method
