.class public Lcom/kantv/ui/view/CustomRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CustomRelativeLayout.java"


# instance fields
.field private mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {p1}, Lcom/kantv/ui/utils/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/CustomRelativeLayout;->mScreenHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 32
    iget p2, p0, Lcom/kantv/ui/view/CustomRelativeLayout;->mScreenHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
