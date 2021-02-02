.class public Lcom/kantv/video/DownloadVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "DownloadVideoPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadVideoPlayer"


# instance fields
.field FastGuideRunnable:Ljava/lang/Runnable;

.field PrevGuideRunnable:Ljava/lang/Runnable;

.field public changeTv:Landroid/widget/TextView;

.field private count:I

.field public currentTimeTv:Landroid/widget/TextView;

.field public diviseTv:Landroid/widget/TextView;

.field public isQp:Z

.field private mBrightnessNum:I

.field private mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

.field private mGuideVideoFastLayout:Landroid/widget/LinearLayout;

.field private mGuideVideoFastTv:Landroid/widget/TextView;

.field private mGuideVideoPrevTv:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mMore:Landroid/widget/ImageView;

.field private mNext:Landroid/widget/ImageView;

.field private mSelections:Landroid/widget/TextView;

.field private mShare:Landroid/widget/ImageView;

.field private mVoiceNum:I

.field private mWindow:Landroid/view/Window;

.field public pauseTv:Landroid/widget/TextView;

.field public player:Lcom/kantv/video/DownloadVideoPlayer;

.field public progressBarSb:Landroid/widget/SeekBar;

.field public quitTv:Landroid/widget/TextView;

.field private speed:F

.field public stateTv:Landroid/widget/TextView;

.field public titleTv:Landroid/widget/TextView;

.field public totalTimeTv:Landroid/widget/TextView;

.field public tpIv:Landroid/widget/ImageView;

.field public tpview:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->isQp:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 48
    iput v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->speed:F

    .line 49
    iput p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->count:I

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 434
    new-instance p1, Lcom/kantv/video/DownloadVideoPlayer$4;

    invoke-direct {p1, p0}, Lcom/kantv/video/DownloadVideoPlayer$4;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    .line 452
    new-instance p1, Lcom/kantv/video/DownloadVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/kantv/video/DownloadVideoPlayer$5;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->isQp:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 48
    iput p2, p0, Lcom/kantv/video/DownloadVideoPlayer;->speed:F

    .line 49
    iput p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->count:I

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 434
    new-instance p1, Lcom/kantv/video/DownloadVideoPlayer$4;

    invoke-direct {p1, p0}, Lcom/kantv/video/DownloadVideoPlayer$4;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    .line 452
    new-instance p1, Lcom/kantv/video/DownloadVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/kantv/video/DownloadVideoPlayer$5;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->isQp:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 48
    iput p2, p0, Lcom/kantv/video/DownloadVideoPlayer;->speed:F

    .line 49
    iput p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->count:I

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 434
    new-instance p1, Lcom/kantv/video/DownloadVideoPlayer$4;

    invoke-direct {p1, p0}, Lcom/kantv/video/DownloadVideoPlayer$4;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    .line 452
    new-instance p1, Lcom/kantv/video/DownloadVideoPlayer$5;

    invoke-direct {p1, p0}, Lcom/kantv/video/DownloadVideoPlayer$5;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/video/DownloadVideoPlayer;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mCurrentState:I

    return p0
.end method

.method static synthetic access$100(Lcom/kantv/video/DownloadVideoPlayer;I)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->setStateAndUi(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kantv/video/DownloadVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoFastTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/kantv/video/DownloadVideoPlayer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/kantv/video/DownloadVideoPlayer;->startFastGuideTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/kantv/video/DownloadVideoPlayer;)Landroid/view/Window;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/kantv/video/DownloadVideoPlayer;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mVoiceNum:I

    return p0
.end method

.method static synthetic access$1302(Lcom/kantv/video/DownloadVideoPlayer;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mVoiceNum:I

    return p1
.end method

.method static synthetic access$1400(Lcom/kantv/video/DownloadVideoPlayer;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mBrightnessNum:I

    return p0
.end method

.method static synthetic access$1402(Lcom/kantv/video/DownloadVideoPlayer;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mBrightnessNum:I

    return p1
.end method

.method static synthetic access$1500(Lcom/kantv/video/DownloadVideoPlayer;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->speed:F

    return p0
.end method

.method static synthetic access$1502(Lcom/kantv/video/DownloadVideoPlayer;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->speed:F

    return p1
.end method

.method static synthetic access$200(Lcom/kantv/video/DownloadVideoPlayer;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->count:I

    return p0
.end method

.method static synthetic access$202(Lcom/kantv/video/DownloadVideoPlayer;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->count:I

    return p1
.end method

.method static synthetic access$208(Lcom/kantv/video/DownloadVideoPlayer;)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kantv/video/DownloadVideoPlayer;->count:I

    return v0
.end method

.method static synthetic access$300(Lcom/kantv/video/DownloadVideoPlayer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kantv/video/DownloadVideoPlayer;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoPrevTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/kantv/video/DownloadVideoPlayer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/kantv/video/DownloadVideoPlayer;->startPrevGuideTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/kantv/video/DownloadVideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/kantv/video/DownloadVideoPlayer;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mCurrentState:I

    return p0
.end method

.method static synthetic access$800(Lcom/kantv/video/DownloadVideoPlayer;I)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->setStateAndUi(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/kantv/video/DownloadVideoPlayer;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoFastLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private startFastGuideTimer()V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kantv/video/DownloadVideoPlayer;->FastGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startPrevGuideTimer()V
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kantv/video/DownloadVideoPlayer;->PrevGuideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getEnlargeImageRes()I
    .locals 1

    .line 379
    sget v0, Lcom/kantv/video/R$drawable;->full_screen:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->isQp:Z

    .line 117
    sget v0, Lcom/kantv/video/R$layout;->video_land_download:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->isQp:Z

    .line 120
    sget v0, Lcom/kantv/video/R$layout;->video_normal:I

    return v0
.end method

.method public getShrinkImageRes()I
    .locals 1

    .line 384
    sget v0, Lcom/kantv/video/R$drawable;->full_screen:I

    return v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 472
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    .line 473
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mBottomProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 127
    sget p1, Lcom/kantv/video/R$id;->share_img:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mShare:Landroid/widget/ImageView;

    .line 128
    sget p1, Lcom/kantv/video/R$id;->more:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mMore:Landroid/widget/ImageView;

    .line 129
    sget p1, Lcom/kantv/video/R$id;->airplay_img:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->tpIv:Landroid/widget/ImageView;

    .line 130
    sget p1, Lcom/kantv/video/R$id;->title:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->titleTv:Landroid/widget/TextView;

    .line 131
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mShare:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-boolean p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_0

    .line 135
    sget p1, Lcom/kantv/video/R$id;->guide_video_before:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

    .line 136
    sget p1, Lcom/kantv/video/R$id;->guide_prev_tv:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoPrevTv:Landroid/widget/TextView;

    .line 137
    sget p1, Lcom/kantv/video/R$id;->guide_video_fast:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoFastLayout:Landroid/widget/LinearLayout;

    .line 138
    sget p1, Lcom/kantv/video/R$id;->guide_fast_tv:I

    invoke-virtual {p0, p1}, Lcom/kantv/video/DownloadVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoFastTv:Landroid/widget/TextView;

    .line 139
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoBeforeLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/kantv/video/OnDoubleClickListener;

    new-instance v1, Lcom/kantv/video/DownloadVideoPlayer$1;

    invoke-direct {v1, p0}, Lcom/kantv/video/DownloadVideoPlayer$1;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    invoke-direct {v0, v1}, Lcom/kantv/video/OnDoubleClickListener;-><init>(Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mGuideVideoFastLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/kantv/video/OnDoubleClickListener;

    new-instance v1, Lcom/kantv/video/DownloadVideoPlayer$2;

    invoke-direct {v1, p0}, Lcom/kantv/video/DownloadVideoPlayer$2;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    invoke-direct {v0, v1}, Lcom/kantv/video/OnDoubleClickListener;-><init>(Lcom/kantv/video/OnDoubleClickListener$DoubleClickCallback;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mMore:Landroid/widget/ImageView;

    new-instance v0, Lcom/kantv/video/DownloadVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/kantv/video/DownloadVideoPlayer$3;-><init>(Lcom/kantv/video/DownloadVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 389
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getDuration()I

    move-result p3

    mul-int p2, p2, p3

    div-int/lit8 p2, p2, 0x64

    .line 390
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->getPlayer()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHadPlay:Z

    if-eqz p2, :cond_0

    .line 391
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getDuration()I

    move-result p2

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x64

    .line 392
    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    .line 393
    iget-object p2, p0, Lcom/kantv/video/DownloadVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->stringForTime(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 405
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const-string v0, "onClickSeekbarFullscreen"

    .line 407
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/kantv/video/DownloadVideoPlayer;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kantv/video/DownloadVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onClickSeekbar"

    .line 410
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfLog(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mVideoAllCallBack:Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;

    iget-object v4, p0, Lcom/kantv/video/DownloadVideoPlayer;->mOriginUrl:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/kantv/video/DownloadVideoPlayer;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v2

    aput-object p0, v3, v1

    invoke-interface {v0, v4, v3}, Lcom/shuyu/gsyvideoplayer/listener/VideoAllCallBack;->onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    :cond_1
    :goto_0
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->getPlayer()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->mHadPlay:Z

    if-eqz v0, :cond_2

    .line 416
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getDuration()I

    move-result v0

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x64

    .line 417
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoManager;->getPlayer()Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;

    move-result-object v0

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/player/IPlayerManager;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfWarning(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTpDviseText(Ljava/lang/String;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->diviseTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTpStateText(Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object v0, v0, Lcom/kantv/video/DownloadVideoPlayer;->stateTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTpViewVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->tpview:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->tpview:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setmWindow(Landroid/view/Window;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->mWindow:Landroid/view/Window;

    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    check-cast p1, Lcom/kantv/video/DownloadVideoPlayer;

    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    .line 93
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    if-eqz p1, :cond_0

    .line 94
    iget-object p2, p0, Lcom/kantv/video/DownloadVideoPlayer;->mShare:Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->mShare:Landroid/widget/ImageView;

    .line 97
    iget-object p2, p0, Lcom/kantv/video/DownloadVideoPlayer;->mWindow:Landroid/view/Window;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->mWindow:Landroid/view/Window;

    .line 98
    iget-object p2, p0, Lcom/kantv/video/DownloadVideoPlayer;->mMore:Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->mMore:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->divise_tv:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->diviseTv:Landroid/widget/TextView;

    .line 100
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->change:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->changeTv:Landroid/widget/TextView;

    .line 101
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->quit:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->quitTv:Landroid/widget/TextView;

    .line 102
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->tpview:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->tpview:Landroid/view/View;

    .line 103
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->state_tv:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->stateTv:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->pause:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    .line 105
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->current_thp:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->currentTimeTv:Landroid/widget/TextView;

    .line 106
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->progress_thp:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->progressBarSb:Landroid/widget/SeekBar;

    .line 107
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    invoke-virtual {p0}, Lcom/kantv/video/DownloadVideoPlayer;->getFullWindowPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;

    move-result-object p2

    sget p3, Lcom/kantv/video/R$id;->total_thp:I

    invoke-virtual {p2, p3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/kantv/video/DownloadVideoPlayer;->totalTimeTv:Landroid/widget/TextView;

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    return-object p1
.end method
