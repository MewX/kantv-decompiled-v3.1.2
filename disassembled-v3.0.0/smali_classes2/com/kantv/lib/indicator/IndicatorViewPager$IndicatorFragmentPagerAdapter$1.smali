.class Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;
.super Lcom/kantv/lib/indicator/FragmentListPageAdapter;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;


# direct methods
.method constructor <init>(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-direct {p0, p2}, Lcom/kantv/lib/indicator/FragmentListPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-static {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->access$200(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffff9b

    return v0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getRealPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getFragmentForPage(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageWidth(I)F
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getRealPosition(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getPageRatio(I)F

    move-result p1

    return p1
.end method
