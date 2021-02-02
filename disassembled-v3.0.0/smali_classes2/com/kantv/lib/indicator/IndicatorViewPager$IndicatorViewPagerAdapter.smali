.class public abstract Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;
.super Lcom/kantv/lib/indicator/IndicatorViewPager$LoopAdapter;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndicatorViewPagerAdapter"
.end annotation


# instance fields
.field private indicatorAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

.field private loop:Z

.field private pagerAdapter:Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/kantv/lib/indicator/IndicatorViewPager$LoopAdapter;-><init>()V

    .line 277
    new-instance v0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;-><init>(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)V

    iput-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->pagerAdapter:Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;

    .line 317
    new-instance v0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$2;-><init>(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)V

    iput-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->indicatorAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    return-void
.end method

.method static synthetic access$100(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)Z
    .locals 0

    .line 257
    iget-boolean p0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->loop:Z

    return p0
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public getIndicatorAdapter()Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->indicatorAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getPageRatio(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getPageViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPageViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPagerAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->pagerAdapter:Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;

    return-object v0
.end method

.method getRealPosition(I)I
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public abstract getViewForPage(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->indicatorAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->notifyDataSetChanged()V

    .line 355
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->pagerAdapter:Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method setLoop(Z)V
    .locals 1

    .line 272
    iput-boolean p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->loop:Z

    .line 273
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->indicatorAdapter:Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;->setIsLoop(Z)V

    return-void
.end method
