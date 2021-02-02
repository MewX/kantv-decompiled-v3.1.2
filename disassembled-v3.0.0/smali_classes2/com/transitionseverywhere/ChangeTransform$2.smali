.class Lcom/transitionseverywhere/ChangeTransform$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/ChangeTransform;->createTransformAnimator(Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/transitionseverywhere/ChangeTransform;

.field final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic val$handleParentChange:Z

.field final synthetic val$transforms:Lcom/transitionseverywhere/ChangeTransform$Transforms;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Lcom/transitionseverywhere/ChangeTransform$Transforms;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->this$0:Lcom/transitionseverywhere/ChangeTransform;

    iput-boolean p2, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$handleParentChange:Z

    iput-object p3, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$transforms:Lcom/transitionseverywhere/ChangeTransform$Transforms;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 285
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/transitionseverywhere/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 320
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    sget v0, Lcom/transitionseverywhere/R$id;->transitionTransform:I

    iget-object v1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 321
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$transforms:Lcom/transitionseverywhere/ChangeTransform$Transforms;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/transitionseverywhere/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 294
    iget-boolean p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->mIsCanceled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 295
    iget-boolean p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$handleParentChange:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->this$0:Lcom/transitionseverywhere/ChangeTransform;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeTransform;->access$000(Lcom/transitionseverywhere/ChangeTransform;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    sget v1, Lcom/transitionseverywhere/R$id;->transitionTransform:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 299
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    sget v1, Lcom/transitionseverywhere/R$id;->parentMatrix:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 302
    :cond_1
    :goto_0
    invoke-static {}, Lcom/transitionseverywhere/ChangeTransform;->access$100()Landroid/util/Property;

    move-result-object p1

    iget-object v1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$transforms:Lcom/transitionseverywhere/ChangeTransform$Transforms;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/transitionseverywhere/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    .line 308
    check-cast p1, Landroid/animation/ValueAnimator;

    .line 309
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 310
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeTransform$2;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeTransform$2;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/transitionseverywhere/ChangeTransform;->access$200(Landroid/view/View;)V

    return-void
.end method
