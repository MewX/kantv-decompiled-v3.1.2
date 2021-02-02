.class Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;
.super Lcom/kantv/lib/indicator/FixedIndicatorView;
.source "ScrollIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/lib/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SFixedIndicatorView"
.end annotation


# instance fields
.field private isAutoSplit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1}, Lcom/kantv/lib/indicator/FixedIndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private measureChildWidth(Landroid/view/View;II)I
    .locals 3

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 486
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 487
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 488
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public isSplitAuto()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 457
    iget-boolean v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-eqz v0, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/kantv/lib/indicator/ScrollIndicatorView;

    .line 459
    invoke-virtual {v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_4

    .line 462
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 465
    invoke-virtual {p0, v4}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, p1, p2}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->measureChildWidth(Landroid/view/View;II)I

    move-result v7

    if-ge v6, v7, :cond_0

    move v6, v7

    :cond_0
    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v5, v1, :cond_2

    .line 470
    invoke-virtual {v0, v3}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    const/4 v0, 0x2

    .line 471
    invoke-virtual {p0, v0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    :cond_2
    mul-int v6, v6, v2

    const/4 v2, 0x1

    if-le v6, v1, :cond_3

    .line 473
    invoke-virtual {v0, v2}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 474
    invoke-virtual {p0, v2}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    .line 476
    :cond_3
    invoke-virtual {v0, v2}, Lcom/kantv/lib/indicator/ScrollIndicatorView;->setFillViewport(Z)V

    .line 477
    invoke-virtual {p0, v3}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    .line 481
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/kantv/lib/indicator/FixedIndicatorView;->onMeasure(II)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 1

    .line 445
    iget-boolean v0, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-eq v0, p1, :cond_1

    .line 446
    iput-boolean p1, p0, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->isAutoSplit:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 448
    invoke-virtual {p0, p1}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->setSplitMethod(I)V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->requestLayout()V

    .line 451
    invoke-virtual {p0}, Lcom/kantv/lib/indicator/ScrollIndicatorView$SFixedIndicatorView;->invalidate()V

    :cond_1
    return-void
.end method
