.class Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;
.super Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-direct {p0}, Lcom/kantv/lib/viewpager/RecyclingPagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-static {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->access$100(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffff9b

    return v0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getRealPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getPageViewType(I)I

    move-result p1

    return p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getRealPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getPageRatio(I)F

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getRealPosition(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getViewForPage(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorViewPagerAdapter;->getPageViewTypeCount()I

    move-result v0

    return v0
.end method
