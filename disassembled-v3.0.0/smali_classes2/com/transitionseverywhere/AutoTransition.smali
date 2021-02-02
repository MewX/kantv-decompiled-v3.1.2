.class public Lcom/transitionseverywhere/AutoTransition;
.super Lcom/transitionseverywhere/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transitionseverywhere/TransitionSet;-><init>()V

    .line 38
    invoke-direct {p0}, Lcom/transitionseverywhere/AutoTransition;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/transitionseverywhere/AutoTransition;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/AutoTransition;->setOrdering(I)Lcom/transitionseverywhere/TransitionSet;

    .line 48
    new-instance v1, Lcom/transitionseverywhere/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/transitionseverywhere/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/transitionseverywhere/AutoTransition;->addTransition(Lcom/transitionseverywhere/Transition;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object v1

    new-instance v2, Lcom/transitionseverywhere/ChangeBounds;

    invoke-direct {v2}, Lcom/transitionseverywhere/ChangeBounds;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/TransitionSet;->addTransition(Lcom/transitionseverywhere/Transition;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object v1

    new-instance v2, Lcom/transitionseverywhere/Fade;

    invoke-direct {v2, v0}, Lcom/transitionseverywhere/Fade;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/TransitionSet;->addTransition(Lcom/transitionseverywhere/Transition;)Lcom/transitionseverywhere/TransitionSet;

    return-void
.end method
