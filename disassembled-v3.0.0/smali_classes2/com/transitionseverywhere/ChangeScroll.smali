.class public Lcom/transitionseverywhere/ChangeScroll;
.super Lcom/transitionseverywhere/Transition;
.source "ChangeScroll.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 3

    .line 55
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android:changeScroll:x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    iget-object p1, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "android:changeScroll:y"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeScroll;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/ChangeScroll;->captureValues(Lcom/transitionseverywhere/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    iget-object v0, p3, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    .line 67
    iget-object v1, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeScroll:x"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    iget-object v3, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 69
    iget-object p2, p2, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeScroll:y"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 70
    iget-object p3, p3, Lcom/transitionseverywhere/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v2, :cond_1

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 75
    new-array v6, v5, [I

    aput v1, v6, v4

    aput v2, v6, v3

    const-string v1, "scrollX"

    invoke-static {v0, v1, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    if-eq p2, p3, :cond_2

    .line 78
    invoke-virtual {v0, p2}, Landroid/view/View;->setScrollY(I)V

    .line 79
    new-array p1, v5, [I

    aput p2, p1, v4

    aput p3, p1, v3

    const-string p2, "scrollY"

    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 81
    :cond_2
    invoke-static {v1, p1}, Lcom/transitionseverywhere/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method
