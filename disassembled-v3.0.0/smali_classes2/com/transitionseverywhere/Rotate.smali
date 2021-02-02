.class public Lcom/transitionseverywhere/Rotate;
.super Lcom/transitionseverywhere/Transition;
.source "Rotate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final PROPNAME_ROTATION:Ljava/lang/String; = "android:rotate:rotation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 2

    .line 45
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:rotate:rotation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 2

    .line 40
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:rotate:rotation"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 55
    iget-object p2, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:rotate:rotation"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 56
    iget-object p3, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float v1, p2, p3

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    .line 59
    sget-object p1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method
