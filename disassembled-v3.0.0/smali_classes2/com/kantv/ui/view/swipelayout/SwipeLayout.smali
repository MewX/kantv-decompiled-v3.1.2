.class public Lcom/kantv/ui/view/swipelayout/SwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/ui/view/swipelayout/SwipeLayout$OnSwipeLayoutClickListener;
    }
.end annotation


# instance fields
.field private STATE_CLOSE:I

.field private STATE_OPEN:I

.field callback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private contentView:Landroid/view/View;

.field private contentWidth:I

.field private deleteView:Landroid/view/View;

.field private deleteWidth:I

.field downTime:J

.field downX:F

.field downY:F

.field private dragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private dragWidth:I

.field private listener:Lcom/kantv/ui/view/swipelayout/SwipeLayout$OnSwipeLayoutClickListener;

.field private mState:I

.field touchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->STATE_OPEN:I

    const/4 p1, 0x1

    .line 28
    iput p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->STATE_CLOSE:I

    .line 29
    iget p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->STATE_CLOSE:I

    iput p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->mState:I

    .line 115
    new-instance p1, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;

    invoke-direct {p1, p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout$1;-><init>(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)V

    iput-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->callback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 34
    invoke-direct {p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Landroid/view/View;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentWidth:I

    return p0
.end method

.method static synthetic access$400(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteWidth:I

    return p0
.end method

.method static synthetic access$500(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->mState:I

    return p0
.end method

.method static synthetic access$502(Lcom/kantv/ui/view/swipelayout/SwipeLayout;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->mState:I

    return p1
.end method

.method static synthetic access$600(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->STATE_CLOSE:I

    return p0
.end method

.method static synthetic access$700(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->STATE_OPEN:I

    return p0
.end method

.method public static getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    .line 269
    iget v0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private init()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->callback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 40
    invoke-virtual {p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->touchSlop:F

    return-void
.end method


# virtual methods
.method public closeDeleteMenu()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 198
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteView()Landroid/view/View;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteView:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 225
    invoke-virtual {p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentView:Landroid/view/View;

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0, v0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteView:Landroid/view/View;

    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the swipelayout only have 2 children!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 47
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->isCouldSwipe(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 216
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentView:Landroid/view/View;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 217
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteView:Landroid/view/View;

    iget p2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteWidth:I

    add-int/2addr p2, p4

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentWidth:I

    .line 236
    iget-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteWidth:I

    .line 238
    iget p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->deleteWidth:I

    iput p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragWidth:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 60
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->isCouldSwipe(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->closeOpenInstance()V

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 79
    iget v3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    .line 81
    invoke-virtual {p0, v1}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 92
    iget-wide v5, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downTime:J

    sub-long/2addr v2, v5

    .line 94
    new-instance v5, Landroid/graphics/PointF;

    iget v6, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downX:F

    iget v7, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downY:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v5, v6}, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->getDistanceBetween2Points(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const-wide/16 v4, 0x190

    cmp-long v6, v2, v4

    if-gez v6, :cond_5

    .line 97
    iget v2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->touchSlop:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 99
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->isOpenInstance(Lcom/kantv/ui/view/swipelayout/SwipeLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-static {}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->getInstance()Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kantv/ui/view/swipelayout/SwipeLayoutManager;->closeOpenInstance()V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->listener:Lcom/kantv/ui/view/swipelayout/SwipeLayout$OnSwipeLayoutClickListener;

    if-eqz v0, :cond_5

    .line 103
    invoke-interface {v0}, Lcom/kantv/ui/view/swipelayout/SwipeLayout$OnSwipeLayoutClickListener;->onClick()V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downX:F

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downY:F

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->downTime:J

    .line 111
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public openDeleteMenu()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragHelper:Landroid/support/v4/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->contentView:Landroid/view/View;

    iget v2, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->dragWidth:I

    neg-int v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 203
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setOnSwipeLayoutClickListener(Lcom/kantv/ui/view/swipelayout/SwipeLayout$OnSwipeLayoutClickListener;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/kantv/ui/view/swipelayout/SwipeLayout;->listener:Lcom/kantv/ui/view/swipelayout/SwipeLayout$OnSwipeLayoutClickListener;

    return-void
.end method
