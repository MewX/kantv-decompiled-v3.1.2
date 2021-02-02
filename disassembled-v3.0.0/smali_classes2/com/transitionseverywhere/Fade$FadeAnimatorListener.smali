.class Lcom/transitionseverywhere/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mEndListenerAlpha:F

.field private mLayerTypeChanged:Z

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 1

    .line 166
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 167
    iput-object p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 168
    iput p2, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mEndListenerAlpha:F

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 182
    iget-object p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mEndListenerAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 183
    iget-boolean p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/transitionseverywhere/utils/AnimatorUtils;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 176
    iget-object p1, p0, Lcom/transitionseverywhere/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
