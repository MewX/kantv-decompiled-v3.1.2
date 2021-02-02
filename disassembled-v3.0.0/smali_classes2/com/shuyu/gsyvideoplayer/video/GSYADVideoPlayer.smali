.class public Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;
.super Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "GSYADVideoPlayer.java"


# instance fields
.field protected isFirstPrepared:Z

.field protected mADTime:Landroid/widget/TextView;

.field protected mJumpAd:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected backFromFull(Landroid/content/Context;)Z
    .locals 0

    .line 73
    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->backFromWindowFull(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected changeAdUIState()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 214
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 217
    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 220
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shuyu/gsyvideoplayer/R$color;->bottom_container_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 221
    :goto_1
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mTotalTimeTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_8

    const/4 v3, 0x4

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_b

    .line 230
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method protected cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 194
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->cloneParams(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 195
    check-cast p1, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 196
    check-cast p2, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;

    .line 197
    iget-boolean p1, p1, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    iput-boolean p1, p2, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    .line 198
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->changeAdUIState()V

    return-void
.end method

.method protected getFullId()I
    .locals 1

    .line 83
    sget v0, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->FULLSCREEN_ID:I

    return v0
.end method

.method public getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;
    .locals 2

    .line 67
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->initContext(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->instance()Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 62
    sget v0, Lcom/shuyu/gsyvideoplayer/R$layout;->video_layout_ad:I

    return v0
.end method

.method protected getSmallId()I
    .locals 1

    .line 88
    sget v0, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->SMALL_ID:I

    return v0
.end method

.method protected hideAllWidget()V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 46
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->jump_ad:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    .line 47
    sget p1, Lcom/shuyu/gsyvideoplayer/R$id;->ad_time:I

    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mJumpAd:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/shuyu/gsyvideoplayer/R$id;->start:I

    if-ne v0, v1, :cond_0

    .line 101
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentState:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->clickStartIcon()V

    goto :goto_0

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->onPrepared()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->isFirstPrepared:Z

    .line 95
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->changeAdUIState()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->release()V

    .line 204
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected releaseVideos()V
    .locals 0

    .line 78
    invoke-static {}, Lcom/shuyu/gsyvideoplayer/GSYVideoADManager;->releaseAllVideos()V

    return-void
.end method

.method public removeFullWindowViewOnly()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 240
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getFullId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mIfCurrentIsFullscreen:Z

    return-void
.end method

.method protected setProgressAndTime(IIII)V
    .locals 1

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->setProgressAndTime(IIII)V

    .line 185
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mADTime:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    .line 186
    div-int/lit16 p4, p4, 0x3e8

    .line 187
    div-int/lit16 p3, p3, 0x3e8

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p4, p3

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected touchDoubleUp()V
    .locals 0

    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->touchSurfaceMove(FFF)V

    :goto_0
    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 2

    .line 149
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mThreshold:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mThreshold:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/CommonUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 151
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mThreshold:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    int-to-float v0, v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mSeekEndOffset:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mChangePosition:Z

    .line 154
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result p1

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mDownPosition:I

    goto :goto_0

    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->touchSurfaceMoveFullLogic(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected touchSurfaceUp()V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/shuyu/gsyvideoplayer/video/StandardGSYVideoPlayer;->touchSurfaceUp()V

    return-void
.end method

.method protected updateStartImage()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mStartButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mStartButton:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 115
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->empty_drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/video/GSYADVideoPlayer;->mCurrentState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 117
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->video_click_error_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 119
    :cond_1
    sget v1, Lcom/shuyu/gsyvideoplayer/R$drawable;->empty_drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
