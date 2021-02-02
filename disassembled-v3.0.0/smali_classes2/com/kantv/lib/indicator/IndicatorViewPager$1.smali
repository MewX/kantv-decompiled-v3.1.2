.class Lcom/kantv/lib/indicator/IndicatorViewPager$1;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Lcom/kantv/lib/indicator/Indicator$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/lib/indicator/IndicatorViewPager;->iniOnItemSelectedListener()V
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

    .line 44
    iput-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;II)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object p1, p1, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    instance-of p1, p1, Lcom/kantv/lib/viewpager/SViewPager;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object p1, p1, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object p3, p3, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    check-cast p3, Lcom/kantv/lib/viewpager/SViewPager;

    invoke-virtual {p3}, Lcom/kantv/lib/viewpager/SViewPager;->isCanScroll()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    iget-object p1, p1, Lcom/kantv/lib/indicator/IndicatorViewPager;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lcom/kantv/lib/indicator/IndicatorViewPager$1;->this$0:Lcom/kantv/lib/indicator/IndicatorViewPager;

    invoke-static {p3}, Lcom/kantv/lib/indicator/IndicatorViewPager;->access$000(Lcom/kantv/lib/indicator/IndicatorViewPager;)Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method
