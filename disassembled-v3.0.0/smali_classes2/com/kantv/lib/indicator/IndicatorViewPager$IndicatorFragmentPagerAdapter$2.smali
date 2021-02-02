.class Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;
.super Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;


# direct methods
.method constructor <init>(Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-direct {p0}, Lcom/kantv/lib/indicator/Indicator$IndicatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;->getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
