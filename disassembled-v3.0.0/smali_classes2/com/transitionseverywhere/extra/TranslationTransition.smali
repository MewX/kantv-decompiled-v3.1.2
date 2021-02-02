.class public Lcom/transitionseverywhere/extra/TranslationTransition;
.super Lcom/transitionseverywhere/Transition;
.source "TranslationTransition.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final TRANSLATION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transitionseverywhere/utils/PointFProperty<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATION_X:Ljava/lang/String; = "TranslationTransition:translationX"

.field private static final TRANSLATION_Y:Ljava/lang/String; = "TranslationTransition:translationY"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 33
    new-instance v0, Lcom/transitionseverywhere/extra/TranslationTransition$1;

    invoke-direct {v0}, Lcom/transitionseverywhere/extra/TranslationTransition$1;-><init>()V

    sput-object v0, Lcom/transitionseverywhere/extra/TranslationTransition;->TRANSLATION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/transitionseverywhere/extra/TranslationTransition;->TRANSLATION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 3

    .line 59
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "TranslationTransition:translationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "TranslationTransition:translationY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/extra/TranslationTransition;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/extra/TranslationTransition;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 78
    sget-object p1, Lcom/transitionseverywhere/extra/TranslationTransition;->TRANSLATION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    sget-object v1, Lcom/transitionseverywhere/extra/TranslationTransition;->TRANSLATION_PROPERTY:Lcom/transitionseverywhere/utils/PointFProperty;

    invoke-virtual {p0}, Lcom/transitionseverywhere/extra/TranslationTransition;->getPathMotion()Lcom/transitionseverywhere/PathMotion;

    move-result-object v2

    iget-object p1, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "TranslationTransition:translationX"

    .line 80
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "TranslationTransition:translationY"

    .line 81
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v5, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 82
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object p3, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    .line 83
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v3, p1

    move v4, p2

    .line 79
    invoke-static/range {v0 .. v6}, Lcom/transitionseverywhere/utils/AnimatorUtils;->ofPointF(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;Lcom/transitionseverywhere/PathMotion;FFFF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
