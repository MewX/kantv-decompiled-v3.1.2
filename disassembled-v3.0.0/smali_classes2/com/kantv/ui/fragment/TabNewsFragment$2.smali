.class Lcom/kantv/ui/fragment/TabNewsFragment$2;
.super Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;
.source "TabNewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TabNewsFragment;->initTopNavi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TabNewsFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TabNewsFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$2;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-direct {p0, p2}, Lcom/kantv/lib/indicator/IndicatorViewPager$IndicatorFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method private getTextWidth(Landroid/widget/TextView;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 287
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 288
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 290
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 291
    iget p1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment$2;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$200(Lcom/kantv/ui/fragment/TabNewsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFragmentForPage(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment$2;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TabNewsFragment;->access$200(Lcom/kantv/ui/fragment/TabNewsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getViewForTab(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 256
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00c6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 258
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kantv/ui/fragment/TabNewsFragment$2;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    iget-object v1, v1, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/NavBean;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/kantv/ui/fragment/TabNewsFragment$2;->this$0:Lcom/kantv/ui/fragment/TabNewsFragment;

    iget-object v0, v0, Lcom/kantv/ui/fragment/TabNewsFragment;->mNavData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/NavBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/NavBean;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-direct {p0, p3}, Lcom/kantv/ui/fragment/TabNewsFragment$2;->getTextWidth(Landroid/widget/TextView;)I

    move-result p1

    .line 263
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result v0

    int-to-float p1, p1

    const v1, 0x3f99999a    # 1.2f

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/2addr p1, v0

    .line 266
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setWidth(I)V

    return-object p2
.end method
