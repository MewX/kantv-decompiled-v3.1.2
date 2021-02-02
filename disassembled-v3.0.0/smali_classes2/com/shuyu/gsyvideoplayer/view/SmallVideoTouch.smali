.class public Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;
.super Ljava/lang/Object;
.source "SmallVideoTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private _xDelta:I

.field private _yDelta:I

.field private mDownX:I

.field private mDownY:I

.field private mGsyBaseVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field private mMarginLeft:I

.field private mMarginTop:I


# direct methods
.method public constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mMarginLeft:I

    .line 23
    iput p3, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mMarginTop:I

    .line 24
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    const/4 v2, 0x1

    if-eq p2, v2, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 50
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->_xDelta:I

    sub-int/2addr p1, v2

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 53
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->_yDelta:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 55
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mMarginLeft:I

    if-lt p1, v0, :cond_1

    .line 56
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 59
    :cond_1
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mMarginTop:I

    if-lt p1, v0, :cond_2

    .line 60
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 63
    :cond_2
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_3

    .line 64
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 67
    :cond_3
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gtz p1, :cond_4

    .line 68
    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 43
    :cond_5
    iget p2, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mDownY:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_6

    iget p2, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mDownX:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    return v1

    :cond_6
    return v2

    .line 33
    :cond_7
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mDownX:I

    .line 34
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mDownY:I

    .line 36
    iget-object p2, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->mGsyBaseVideoPlayer:Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 37
    invoke-virtual {p2}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->_xDelta:I

    .line 39
    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/view/SmallVideoTouch;->_yDelta:I

    :goto_0
    return v1
.end method
