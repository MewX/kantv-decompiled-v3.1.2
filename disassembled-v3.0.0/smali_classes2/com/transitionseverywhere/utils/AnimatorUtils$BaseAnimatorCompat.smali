.class Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/AnimatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseAnimatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPauseListener(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    return-void
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isAnimatorStarted(Landroid/animation/Animator;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ofFloat(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public ofInt(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
    .locals 0
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

    const/4 p1, 0x0

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

    const/4 p1, 0x0

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public pause(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public resume(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
