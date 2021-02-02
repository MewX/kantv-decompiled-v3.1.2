.class public Lcom/transitionseverywhere/utils/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/utils/AnimatorUtils$LollipopAnimatorCompat;,
        Lcom/transitionseverywhere/utils/AnimatorUtils$KitKatAnimatorCompat;,
        Lcom/transitionseverywhere/utils/AnimatorUtils$JellyBeanCompat;,
        Lcom/transitionseverywhere/utils/AnimatorUtils$IceCreamSandwichAnimatorCompat;,
        Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 145
    new-instance v0, Lcom/transitionseverywhere/utils/AnimatorUtils$LollipopAnimatorCompat;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/AnimatorUtils$LollipopAnimatorCompat;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 147
    new-instance v0, Lcom/transitionseverywhere/utils/AnimatorUtils$KitKatAnimatorCompat;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/AnimatorUtils$KitKatAnimatorCompat;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 149
    new-instance v0, Lcom/transitionseverywhere/utils/AnimatorUtils$JellyBeanCompat;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/AnimatorUtils$JellyBeanCompat;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    goto :goto_0

    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 151
    new-instance v0, Lcom/transitionseverywhere/utils/AnimatorUtils$IceCreamSandwichAnimatorCompat;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/AnimatorUtils$IceCreamSandwichAnimatorCompat;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    goto :goto_0

    .line 153
    :cond_3
    new-instance v0, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-direct {v0}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPauseListener(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0, p1}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->addPauseListener(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    .line 202
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isAnimatorStarted(Landroid/animation/Animator;)Z
    .locals 1

    .line 198
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->isAnimatorStarted(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method public static ofFloat(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
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

    .line 207
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->ofFloat(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofInt(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;
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

    .line 212
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->ofInt(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;FFFF)Landroid/animation/Animator;
    .locals 7
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

    .line 172
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;FFFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Landroid/graphics/Path;)Landroid/animation/Animator;
    .locals 1
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

    if-eqz p2, :cond_0

    .line 177
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Landroid/graphics/Path;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "TT;>;",
            "Lcom/transitionseverywhere/PathMotion;",
            "FFFF)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    cmpl-float v0, p3, p5

    if-nez v0, :cond_1

    cmpl-float v0, p4, p6

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 186
    sget-object v0, Lcom/transitionseverywhere/PathMotion;->STRAIGHT_PATH_MOTION:Lcom/transitionseverywhere/PathMotion;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/transitionseverywhere/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Landroid/graphics/Path;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 187
    invoke-static/range {v0 .. v5}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;FFFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static pause(Landroid/animation/Animator;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->pause(Landroid/animation/Animator;)V

    return-void
.end method

.method public static resume(Landroid/animation/Animator;)V
    .locals 1

    .line 166
    sget-object v0, Lcom/transitionseverywhere/utils/AnimatorUtils;->IMPL:Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;

    invoke-virtual {v0, p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$BaseAnimatorCompat;->resume(Landroid/animation/Animator;)V

    return-void
.end method
