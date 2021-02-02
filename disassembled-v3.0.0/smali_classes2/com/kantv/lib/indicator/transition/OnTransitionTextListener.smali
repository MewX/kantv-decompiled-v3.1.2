.class public Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;
.super Ljava/lang/Object;
.source "OnTransitionTextListener.java"

# interfaces
.implements Lcom/kantv/lib/indicator/Indicator$OnTransitionListener;


# instance fields
.field private dFontFize:F

.field private gradient:Lcom/kantv/lib/utils/ColorGradient;

.field private isPxSize:Z

.field private selectSize:F

.field private unSelectSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->selectSize:F

    .line 14
    iput v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    .line 16
    iput v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->dFontFize:F

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->selectSize:F

    .line 14
    iput v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    .line 16
    iput v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->dFontFize:F

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    .line 26
    invoke-virtual {p0, p3, p4}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setColor(II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setSize(FF)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    return-void
.end method


# virtual methods
.method public getTextView(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 0

    .line 73
    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public onTransition(Landroid/view/View;IF)V
    .locals 2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->gradient:Lcom/kantv/lib/utils/ColorGradient;

    if-eqz p2, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v0, v0, p3

    float-to-int v0, v0

    .line 80
    invoke-virtual {p2, v0}, Lcom/kantv/lib/utils/ColorGradient;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    :cond_0
    iget p2, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    iget v1, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->selectSize:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 83
    iget-boolean v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 84
    iget v1, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->dFontFize:F

    mul-float v1, v1, p3

    add-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 86
    :cond_1
    iget v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->dFontFize:F

    mul-float v0, v0, p3

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setColor(II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;
    .locals 2

    .line 59
    new-instance v0, Lcom/kantv/lib/utils/ColorGradient;

    const/16 v1, 0x64

    invoke-direct {v0, p2, p1, v1}, Lcom/kantv/lib/utils/ColorGradient;-><init>(III)V

    iput-object v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->gradient:Lcom/kantv/lib/utils/ColorGradient;

    return-object p0
.end method

.method public final setColorId(Landroid/content/Context;II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setColor(II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    return-object p0
.end method

.method public final setSize(FF)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    .line 32
    iput p1, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->selectSize:F

    .line 33
    iput p2, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->unSelectSize:F

    sub-float/2addr p1, p2

    .line 34
    iput p1, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->dFontFize:F

    return-object p0
.end method

.method public final setSizeId(Landroid/content/Context;II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setSize(FF)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->isPxSize:Z

    return-object p0
.end method

.method public final setValueFromRes(Landroid/content/Context;IIII)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setColorId(Landroid/content/Context;II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    .line 41
    invoke-virtual {p0, p1, p4, p5}, Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;->setSizeId(Landroid/content/Context;II)Lcom/kantv/lib/indicator/transition/OnTransitionTextListener;

    return-object p0
.end method
