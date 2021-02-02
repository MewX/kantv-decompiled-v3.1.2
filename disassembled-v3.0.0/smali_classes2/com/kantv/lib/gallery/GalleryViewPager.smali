.class public Lcom/kantv/lib/gallery/GalleryViewPager;
.super Landroid/widget/LinearLayout;
.source "GalleryViewPager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mAutoCycle:Z

.field private mAutoRecover:Z

.field private mCycleTask:Ljava/util/TimerTask;

.field private mCycleTimer:Ljava/util/Timer;

.field private mCycling:Z

.field private mResumingTask:Ljava/util/TimerTask;

.field private mResumingTimer:Ljava/util/Timer;

.field private mSliderDuration:J

.field private mh:Landroid/os/Handler;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0xfa0

    .line 99
    iput-wide v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mSliderDuration:J

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoRecover:Z

    .line 104
    new-instance v0, Lcom/kantv/lib/gallery/GalleryViewPager$2;

    invoke-direct {v0, p0}, Lcom/kantv/lib/gallery/GalleryViewPager$2;-><init>(Lcom/kantv/lib/gallery/GalleryViewPager;)V

    iput-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mh:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->context:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0xfa0

    .line 99
    iput-wide v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mSliderDuration:J

    const/4 p2, 0x1

    .line 102
    iput-boolean p2, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoRecover:Z

    .line 104
    new-instance p2, Lcom/kantv/lib/gallery/GalleryViewPager$2;

    invoke-direct {p2, p0}, Lcom/kantv/lib/gallery/GalleryViewPager$2;-><init>(Lcom/kantv/lib/gallery/GalleryViewPager;)V

    iput-object p2, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mh:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->context:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/lib/gallery/GalleryViewPager;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mh:Landroid/os/Handler;

    return-object p0
.end method

.method private getRealAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/kantv/lib/R$layout;->gallery:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/kantv/lib/R$id;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 43
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 45
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/kantv/lib/gallery/GalleryViewPager$1;

    invoke-direct {v1, p0}, Lcom/kantv/lib/gallery/GalleryViewPager$1;-><init>(Lcom/kantv/lib/gallery/GalleryViewPager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public moveNextPosition()V
    .locals 1

    const/4 v0, 0x1

    .line 294
    invoke-virtual {p0, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->moveNextPosition(Z)V

    return-void
.end method

.method public moveNextPosition(Z)V
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 285
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You did not set a slider adapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public movePrevPosition()V
    .locals 1

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->movePrevPosition(Z)V

    return-void
.end method

.method public movePrevPosition(Z)V
    .locals 2

    .line 269
    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You did not set a slider adapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->pauseAutoCycle()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public pauseAutoCycle()V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycling:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 148
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycling:Z

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->recoverCycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public recoverCycle()V
    .locals 4

    .line 195
    iget-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoRecover:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoCycle:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycling:Z

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 202
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 204
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTimer:Ljava/util/Timer;

    .line 205
    new-instance v0, Lcom/kantv/lib/gallery/GalleryViewPager$4;

    invoke-direct {v0, p0}, Lcom/kantv/lib/gallery/GalleryViewPager$4;-><init>(Lcom/kantv/lib/gallery/GalleryViewPager;)V

    iput-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTask:Ljava/util/TimerTask;

    .line 211
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/kantv/lib/gallery/GalleryViewPager;->setCurrentPosition(IZ)V

    return-void
.end method

.method public setCurrentPosition(IZ)V
    .locals 2

    .line 250
    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->getRealAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    rem-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 256
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr p1, v0

    .line 257
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Item position is not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You did not set a slider adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDuration(J)V
    .locals 3

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 164
    iput-wide p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mSliderDuration:J

    .line 165
    iget-boolean p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoCycle:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycling:Z

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/kantv/lib/gallery/GalleryViewPager;->startAutoCycle()V

    :cond_0
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public setPageMargin(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setSliderTransformDuration(ILandroid/view/animation/Interpolator;)V
    .locals 3

    .line 235
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    new-instance v1, Lcom/kantv/lib/gallery/FixedSpeedScroller;

    iget-object v2, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2, p1}, Lcom/kantv/lib/gallery/FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;I)V

    .line 238
    iget-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setViewPagerMargin(I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 75
    iget-object p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startAutoCycle()V
    .locals 6

    .line 113
    iget-wide v3, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mSliderDuration:J

    iget-boolean v5, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoRecover:Z

    move-object v0, p0

    move-wide v1, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kantv/lib/gallery/GalleryViewPager;->startAutoCycle(JJZ)V

    return-void
.end method

.method public startAutoCycle(JJZ)V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 128
    :cond_3
    iput-wide p3, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mSliderDuration:J

    .line 129
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    iput-object p3, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTimer:Ljava/util/Timer;

    .line 130
    iput-boolean p5, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoRecover:Z

    .line 131
    new-instance p3, Lcom/kantv/lib/gallery/GalleryViewPager$3;

    invoke-direct {p3, p0}, Lcom/kantv/lib/gallery/GalleryViewPager$3;-><init>(Lcom/kantv/lib/gallery/GalleryViewPager;)V

    iput-object p3, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTask:Ljava/util/TimerTask;

    .line 137
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTask:Ljava/util/TimerTask;

    iget-wide v4, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mSliderDuration:J

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycling:Z

    .line 139
    iput-boolean p1, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoCycle:Z

    return-void
.end method

.method public stopAutoCycle()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mResumingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_3
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mAutoCycle:Z

    .line 188
    iput-boolean v0, p0, Lcom/kantv/lib/gallery/GalleryViewPager;->mCycling:Z

    return-void
.end method
