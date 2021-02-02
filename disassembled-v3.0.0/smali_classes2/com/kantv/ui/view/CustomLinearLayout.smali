.class public Lcom/kantv/ui/view/CustomLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CustomLinearLayout.java"


# instance fields
.field private mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/kantv/ui/view/CustomLinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x49

    invoke-static {p1, p2}, Lcom/kantv/lib/indicator/DisplayUtil;->dipToPix(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/kantv/ui/view/CustomLinearLayout;->mScreenHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 31
    iget p2, p0, Lcom/kantv/ui/view/CustomLinearLayout;->mScreenHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 32
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
