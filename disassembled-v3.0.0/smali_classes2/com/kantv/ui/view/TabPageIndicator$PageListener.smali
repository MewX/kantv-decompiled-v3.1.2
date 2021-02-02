.class Lcom/kantv/ui/view/TabPageIndicator$PageListener;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/view/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/TabPageIndicator;


# direct methods
.method private constructor <init>(Lcom/kantv/ui/view/TabPageIndicator;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/view/TabPageIndicator;Lcom/kantv/ui/view/TabPageIndicator$1;)V
    .locals 0

    .line 464
    invoke-direct {p0, p1}, Lcom/kantv/ui/view/TabPageIndicator$PageListener;-><init>(Lcom/kantv/ui/view/TabPageIndicator;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0}, Lcom/kantv/ui/view/TabPageIndicator;->access$200(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kantv/ui/view/TabPageIndicator;->access$300(Lcom/kantv/ui/view/TabPageIndicator;II)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v0, v0, Lcom/kantv/ui/view/TabPageIndicator;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v0, v0, Lcom/kantv/ui/view/TabPageIndicator;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0, p1}, Lcom/kantv/ui/view/TabPageIndicator;->access$102(Lcom/kantv/ui/view/TabPageIndicator;I)I

    .line 470
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0, p2}, Lcom/kantv/ui/view/TabPageIndicator;->access$402(Lcom/kantv/ui/view/TabPageIndicator;F)F

    .line 471
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0}, Lcom/kantv/ui/view/TabPageIndicator;->access$500(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/kantv/ui/view/TabPageIndicator;->access$300(Lcom/kantv/ui/view/TabPageIndicator;II)V

    .line 473
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-virtual {v0}, Lcom/kantv/ui/view/TabPageIndicator;->invalidate()V

    .line 475
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v0, v0, Lcom/kantv/ui/view/TabPageIndicator;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v0, v0, Lcom/kantv/ui/view/TabPageIndicator;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v0, v0, Lcom/kantv/ui/view/TabPageIndicator;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    iget-object v0, v0, Lcom/kantv/ui/view/TabPageIndicator;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_0
    const/4 p1, 0x0

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0}, Lcom/kantv/ui/view/TabPageIndicator;->access$600(Lcom/kantv/ui/view/TabPageIndicator;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v0}, Lcom/kantv/ui/view/TabPageIndicator;->access$500(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 500
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 501
    check-cast v0, Landroid/widget/TextView;

    .line 502
    iget-object v1, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v1}, Lcom/kantv/ui/view/TabPageIndicator;->access$200(Lcom/kantv/ui/view/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v1}, Lcom/kantv/ui/view/TabPageIndicator;->access$700(Lcom/kantv/ui/view/TabPageIndicator;)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/kantv/ui/view/TabPageIndicator$PageListener;->this$0:Lcom/kantv/ui/view/TabPageIndicator;

    invoke-static {v1}, Lcom/kantv/ui/view/TabPageIndicator;->access$800(Lcom/kantv/ui/view/TabPageIndicator;)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
