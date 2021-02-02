.class Lcom/transitionseverywhere/utils/AnimatorUtils$IceCreamSandwichAnimatorCompat;
.super Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;
.source "AnimatorUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/AnimatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IceCreamSandwichAnimatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public isAnimatorStarted(Landroid/animation/Animator;)Z
    .locals 0

    .line 76
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    move-result p1

    return p1
.end method

.method public ofFloat(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;FF)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 82
    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p3

    .line 83
    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float p3, p3, p4

    cmpl-float p4, v0, p3

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x1

    .line 88
    new-array p4, p4, [F

    const/4 v0, 0x0

    aput p3, p4, v0

    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public ofInt(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;FF)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 94
    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    float-to-int p3, v0

    .line 95
    invoke-virtual {p2, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int p4, v0

    if-ne p3, p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x1

    .line 100
    new-array p3, p3, [I

    const/4 v0, 0x0

    aput p4, p3, v0

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;FFFF)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "TT;>;FFFF)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 66
    invoke-static/range {p1 .. p6}, Lcom/transitionseverywhere/utils/PointFAnimator;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;FFFF)Lcom/transitionseverywhere/utils/PointFAnimator;

    move-result-object p1

    return-object p1
.end method

.method public ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Landroid/graphics/Path;)Landroid/animation/Animator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "TT;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 71
    invoke-static {p1, p2, p3}, Lcom/transitionseverywhere/utils/PathAnimatorCompat;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Landroid/graphics/Path;)Lcom/transitionseverywhere/utils/PathAnimatorCompat;

    move-result-object p1

    return-object p1
.end method

.method public pause(Landroid/animation/Animator;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    return-void
.end method
