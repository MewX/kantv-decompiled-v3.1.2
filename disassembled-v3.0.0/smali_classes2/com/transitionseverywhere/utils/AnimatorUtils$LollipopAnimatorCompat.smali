.class Lcom/transitionseverywhere/utils/AnimatorUtils$LollipopAnimatorCompat;
.super Lcom/transitionseverywhere/utils/AnimatorUtils$KitKatAnimatorCompat;
.source "AnimatorUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/AnimatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopAnimatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$KitKatAnimatorCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Landroid/graphics/Path;)Landroid/animation/Animator;
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

    const/4 v0, 0x0

    .line 135
    invoke-static {p1, p2, v0, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method
