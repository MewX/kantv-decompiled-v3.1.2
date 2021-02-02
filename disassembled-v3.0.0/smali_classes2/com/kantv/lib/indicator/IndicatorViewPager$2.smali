.class Lcom/kantv/lib/indicator/IndicatorViewPager$2;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager;->iniOnPageChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;


# direct methods
.method constructor <init>(Lcom/kantv/lib/indicator/IndicatorViewPager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0, p1}, Lcom/kantv/lib/indicator/Indicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v0, p1, p2, p3}, Lcom/kantv/lib/indicator/Indicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/kantv/lib/indicator/Indicator;->setCurrentItem(IZ)V

    .line 62
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/kantv/lib/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v0, v0, Lcom/kantv/lib/indicator/IndicatorViewPager;->onIndicatorPageChangeListener:Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;

    iget-object v1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$2;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object v1, v1, Lcom/kantv/lib/indicator/IndicatorViewPager;->indicatorView:Lcom/kantv/lib/indicator/Indicator;

    invoke-interface {v1}, Lcom/kantv/lib/indicator/Indicator;->getPreSelectItem()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/kantv/lib/indicator/IndicatorViewPager$OnIndicatorPageChangeListener;->onIndicatorPageChange(II)V

    :cond_0
    return-void
.end method
