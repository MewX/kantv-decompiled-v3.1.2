.class public Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;
.super Ljava/lang/Object;
.source "OrientationUtils.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field private mClick:Z

.field private mClickLand:Z

.field private mClickPort:Z

.field private mEnable:Z

.field private mIsLand:I

.field private mRotateWithSystem:Z

.field private orientationEventListener:Landroid/view/OrientationEventListener;

.field private screenType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 25
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    .line 27
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    .line 29
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    .line 36
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 38
    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Landroid/app/Activity;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return p0
.end method

.method static synthetic access$200(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return p0
.end method

.method static synthetic access$302(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return p1
.end method

.method static synthetic access$400(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return p0
.end method

.method static synthetic access$402(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return p1
.end method

.method static synthetic access$500(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return p0
.end method

.method static synthetic access$502(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return p1
.end method

.method static synthetic access$600(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return p0
.end method

.method static synthetic access$602(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return p1
.end method

.method static synthetic access$702(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return p1
.end method

.method private init()V
    .locals 2

    .line 42
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils$1;-><init>(Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    .line 122
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method


# virtual methods
.method public backToProtVideo()I
    .locals 3

    .line 161
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 163
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 164
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    :cond_0
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 167
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    const/16 v0, 0x1f4

    return v0

    :cond_1
    return v1
.end method

.method public getIsLand()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return v0
.end method

.method public getScreenType()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return v0
.end method

.method public isClick()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return v0
.end method

.method public isClickLand()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return v0
.end method

.method public isClickPort()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return v0
.end method

.method public releaseListener()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public resolveByClick()V
    .locals 4

    .line 129
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    .line 133
    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 134
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    .line 135
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 136
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :cond_1
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 140
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    goto :goto_1

    .line 142
    :cond_2
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    .line 143
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 144
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->gsyVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {v1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getEnlargeImageRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    :cond_4
    :goto_0
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    .line 152
    iput-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    :goto_1
    return-void
.end method

.method public setClick(Z)V
    .locals 0

    .line 198
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClick:Z

    return-void
.end method

.method public setClickLand(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickLand:Z

    return-void
.end method

.method public setClickPort(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mClickPort:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    .line 180
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mEnable:Z

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->orientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public setIsLand(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mIsLand:I

    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->mRotateWithSystem:Z

    return-void
.end method

.method public setScreenType(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->screenType:I

    return-void
.end method
