.class public Lcom/kantv/lib/indicator/IndicatorViewPager;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;,
        Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;,
        Lcom/kantv/lib/indicator/IndicatorViewPager$LoopAdapter;,
        Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;,
        Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;

.field private anim:Z

.field protected indicatorView:Lcom/kantv/lib/indicator/Indicator;

.field protected onIndicatorPageChangeListener:Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

.field protected viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lcom/kantv/lib/indicator/Indicator;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/kantv/lib/indicator/IndicatorViewPager;-><init>(Lcom/kantv/lib/indicator/Indicator;Landroid/support/v4/view/ViewPager;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/kantv/lib/indicator/Indicator;Landroid/support/v4/view/ViewPager;Z)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->anim:Z

    .line 32
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    .line 33
    iput-object p2, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 34
    invoke-interface {p1, p3}, Lcom/kantv/lib/indicator/Indicator;->setItemClickable(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/IndicatorViewPager;->iniOnItemSelectedListener()V

    .line 36
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/IndicatorViewPager;->iniOnPageChangeListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/kantv/lib/indicator/IndicatorViewPager;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->anim:Z

    return p0
.end method


# virtual methods
.method public getAdapter()Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->adapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0}, Lcom/kantv/lib/indicator/Indicator;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicatorView()Lcom/kantv/lib/indicator/Indicator;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    return-object v0
.end method

.method public getOnIndicatorItemClickListener()Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0}, Lcom/kantv/lib/indicator/Indicator;->getOnIndicatorItemClickListener()Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnIndicatorPageChangeListener()Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0}, Lcom/kantv/lib/indicator/Indicator;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected iniOnItemSelectedListener()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    new-instance v1, Lcom/kantv/lib/indicator/IndicatorViewPager$1;

    invoke-direct {v1, p0}, Lcom/kantv/lib/indicator/IndicatorViewPager$1;-><init>(Lcom/kantv/lib/indicator/IndicatorViewPager;)V

    invoke-interface {v0, v1}, Lcom/kantv/lib/indicator/Indicator;->setOnItemSelectListener(Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;)V

    return-void
.end method

.method protected iniOnPageChangeListener()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/kantv/lib/indicator/IndicatorViewPager$2;

    invoke-direct {v1, p0}, Lcom/kantv/lib/indicator/IndicatorViewPager$2;-><init>(Lcom/kantv/lib/indicator/IndicatorViewPager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->adapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->adapter:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;

    .line 87
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;->getPagerAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 88
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorPagerAdapter;->getIndicatorAdapter()Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/kantv/lib/indicator/Indicator;->setAdapter(Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;)V

    return-void
.end method

.method public setClickIndicatorAnim(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->anim:Z

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 99
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0, p1, p2}, Lcom/kantv/lib/indicator/Indicator;->setCurrentItem(IZ)V

    return-void
.end method

.method public setIndicatorOnTransitionListener(Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/kantv/lib/indicator/Indicator;->setOnTransitionListener(Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;)V

    return-void
.end method

.method public setIndicatorScrollBar(Lcom/kantv/lib/indicator/slidebar/ScrollBar;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/kantv/lib/indicator/Indicator;->setScrollBar(Lcom/kantv/lib/indicator/slidebar/ScrollBar;)V

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/kantv/lib/indicator/Indicator;->setOnIndicatorItemClickListener(Lcom/kantv/lib/indicator/Indicator$OnIndicatorItemClickListener;)V

    return-void
.end method

.method public setOnIndicatorPageChangeListener(Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageOffscreenLimit(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
