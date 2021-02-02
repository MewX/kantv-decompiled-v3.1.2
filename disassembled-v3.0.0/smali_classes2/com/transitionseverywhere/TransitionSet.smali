.class public Lcom/transitionseverywhere/TransitionSet;
.super Lcom/transitionseverywhere/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/transitionseverywhere/TransitionSet;->mPlayTogether:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transitionseverywhere/TransitionSet;->mStarted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/transitionseverywhere/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/transitionseverywhere/TransitionSet;->mPlayTogether:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/transitionseverywhere/TransitionSet;->mStarted:Z

    .line 84
    sget-object v1, Lcom/transitionseverywhere/R$styleable;->TransitionSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 85
    sget p2, Lcom/transitionseverywhere/R$styleable;->TransitionSet_transitionOrdering:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 87
    invoke-virtual {p0, p2}, Lcom/transitionseverywhere/TransitionSet;->setOrdering(I)Lcom/transitionseverywhere/TransitionSet;

    .line 88
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addTransitionInternal(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iput-object p0, p1, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    return-void
.end method

.method private setupStartEndListeners()V
    .locals 3

    .line 364
    new-instance v0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;

    invoke-direct {v0, p0}, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;-><init>(Lcom/transitionseverywhere/TransitionSet;)V

    .line 365
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    .line 366
    invoke-virtual {v2, v0}, Lcom/transitionseverywhere/Transition;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    goto :goto_0

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/transitionseverywhere/TransitionSet;->mCurrentListeners:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/TransitionSet;
    .locals 0

    .line 256
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public bridge synthetic addTarget(I)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->addTarget(I)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->addTarget(Landroid/view/View;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->addTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->addTarget(Ljava/lang/String;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public addTarget(I)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->addTarget(I)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->addTarget(I)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public addTarget(Landroid/view/View;)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->addTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->addTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public addTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->addTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->addTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public addTarget(Ljava/lang/String;)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->addTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->addTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public addTransition(Lcom/transitionseverywhere/Transition;)Lcom/transitionseverywhere/TransitionSet;
    .locals 5

    if-eqz p1, :cond_1

    .line 141
    invoke-direct {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->addTransitionInternal(Lcom/transitionseverywhere/Transition;)V

    .line 142
    iget-wide v0, p0, Lcom/transitionseverywhere/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 143
    iget-wide v0, p0, Lcom/transitionseverywhere/TransitionSet;->mDuration:J

    invoke-virtual {p1, v0, v1}, Lcom/transitionseverywhere/Transition;->setDuration(J)Lcom/transitionseverywhere/Transition;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Lcom/transitionseverywhere/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/Transition;

    :cond_1
    return-object p0
.end method

.method protected cancel()V
    .locals 3

    .line 523
    invoke-super {p0}, Lcom/transitionseverywhere/Transition;->cancel()V

    .line 524
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 526
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2}, Lcom/transitionseverywhere/Transition;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 3

    .line 479
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    .line 481
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->captureEndValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 483
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method capturePropagationValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 3

    .line 491
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->capturePropagationValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 492
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 494
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/Transition;->capturePropagationValues(Lcom/transitionseverywhere/TransitionValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V
    .locals 3

    .line 467
    iget-object v0, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transitionseverywhere/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    .line 469
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->captureStartValues(Lcom/transitionseverywhere/TransitionValues;)V

    .line 471
    iget-object v2, p1, Lcom/transitionseverywhere/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Lcom/transitionseverywhere/Transition;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/transitionseverywhere/TransitionSet;->clone()Lcom/transitionseverywhere/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/transitionseverywhere/TransitionSet;
    .locals 4

    .line 580
    invoke-super {p0}, Lcom/transitionseverywhere/Transition;->clone()Lcom/transitionseverywhere/Transition;

    move-result-object v0

    check-cast v0, Lcom/transitionseverywhere/TransitionSet;

    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    .line 582
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 584
    iget-object v3, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v3}, Lcom/transitionseverywhere/Transition;->clone()Lcom/transitionseverywhere/Transition;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/transitionseverywhere/TransitionSet;->addTransitionInternal(Lcom/transitionseverywhere/Transition;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/transitionseverywhere/TransitionSet;->clone()Lcom/transitionseverywhere/TransitionSet;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValuesMaps;Lcom/transitionseverywhere/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/transitionseverywhere/TransitionValuesMaps;",
            "Lcom/transitionseverywhere/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transitionseverywhere/TransitionValues;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 409
    invoke-virtual {p0}, Lcom/transitionseverywhere/TransitionSet;->getStartDelay()J

    move-result-wide v1

    .line 410
    iget-object v3, v0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 412
    iget-object v5, v0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transitionseverywhere/Transition;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 415
    iget-boolean v5, v0, Lcom/transitionseverywhere/TransitionSet;->mPlayTogether:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 416
    :cond_0
    invoke-virtual {v6}, Lcom/transitionseverywhere/Transition;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 418
    invoke-virtual {v6, v9, v10}, Lcom/transitionseverywhere/Transition;->setStartDelay(J)Lcom/transitionseverywhere/Transition;

    goto :goto_1

    .line 420
    :cond_1
    invoke-virtual {v6, v1, v2}, Lcom/transitionseverywhere/Transition;->setStartDelay(J)Lcom/transitionseverywhere/Transition;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 423
    invoke-virtual/range {v6 .. v11}, Lcom/transitionseverywhere/Transition;->createAnimators(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValuesMaps;Lcom/transitionseverywhere/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public excludeTarget(IZ)Lcom/transitionseverywhere/Transition;
    .locals 2

    const/4 v0, 0x0

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(IZ)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(IZ)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Landroid/view/View;Z)Lcom/transitionseverywhere/Transition;
    .locals 2

    const/4 v0, 0x0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(Landroid/view/View;Z)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(Landroid/view/View;Z)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lcom/transitionseverywhere/Transition;
    .locals 2

    const/4 v0, 0x0

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(Ljava/lang/Class;Z)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(Ljava/lang/Class;Z)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Lcom/transitionseverywhere/Transition;
    .locals 2

    const/4 v0, 0x0

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(Ljava/lang/String;Z)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/Transition;->excludeTarget(Ljava/lang/String;Z)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    return-object p1
.end method

.method public forceVisibility(IZ)V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 342
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1, p2}, Lcom/transitionseverywhere/Transition;->forceVisibility(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/transitionseverywhere/TransitionSet;->mPlayTogether:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTransitionAt(I)Lcom/transitionseverywhere/Transition;
    .locals 1

    if-ltz p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/Transition;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransitionCount()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3

    .line 501
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->pause(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/Transition;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/TransitionSet;
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public bridge synthetic removeTarget(I)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->removeTarget(I)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->removeTarget(Landroid/view/View;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->removeTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->removeTarget(Ljava/lang/String;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public removeTarget(I)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(I)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(I)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public removeTarget(Landroid/view/View;)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(Landroid/view/View;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public removeTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(Ljava/lang/Class;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public removeTarget(Ljava/lang/String;)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    const/4 v0, 0x0

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->removeTarget(Ljava/lang/String;)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method public removeTransition(Lcom/transitionseverywhere/Transition;)Lcom/transitionseverywhere/TransitionSet;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 354
    iput-object v0, p1, Lcom/transitionseverywhere/Transition;->mParent:Lcom/transitionseverywhere/TransitionSet;

    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3

    .line 511
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->resume(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 514
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/Transition;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/transitionseverywhere/TransitionSet;->start()V

    .line 435
    invoke-virtual {p0}, Lcom/transitionseverywhere/TransitionSet;->end()V

    return-void

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/transitionseverywhere/TransitionSet;->setupStartEndListeners()V

    .line 439
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 440
    iget-boolean v1, p0, Lcom/transitionseverywhere/TransitionSet;->mPlayTogether:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 444
    iget-object v3, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transitionseverywhere/Transition;

    .line 445
    iget-object v4, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transitionseverywhere/Transition;

    .line 446
    new-instance v5, Lcom/transitionseverywhere/TransitionSet$1;

    invoke-direct {v5, p0, v4}, Lcom/transitionseverywhere/TransitionSet$1;-><init>(Lcom/transitionseverywhere/TransitionSet;Lcom/transitionseverywhere/Transition;)V

    invoke-virtual {v3, v5}, Lcom/transitionseverywhere/Transition;->addListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transitionseverywhere/Transition;

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {v0}, Lcom/transitionseverywhere/Transition;->runAnimators()V

    goto :goto_2

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_3

    .line 460
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1}, Lcom/transitionseverywhere/Transition;->runAnimators()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 3

    .line 542
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->setCanRemoveViews(Z)V

    .line 543
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 545
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/Transition;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/TransitionSet;->setDuration(J)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/transitionseverywhere/TransitionSet;
    .locals 5

    .line 195
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/Transition;->setDuration(J)Lcom/transitionseverywhere/Transition;

    .line 196
    iget-wide v0, p0, Lcom/transitionseverywhere/TransitionSet;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1, p2}, Lcom/transitionseverywhere/Transition;->setDuration(J)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setEpicenterCallback(Lcom/transitionseverywhere/Transition$EpicenterCallback;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->setEpicenterCallback(Lcom/transitionseverywhere/Transition$EpicenterCallback;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setEpicenterCallback(Lcom/transitionseverywhere/Transition$EpicenterCallback;)Lcom/transitionseverywhere/TransitionSet;
    .locals 3

    .line 561
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->setEpicenterCallback(Lcom/transitionseverywhere/Transition$EpicenterCallback;)Lcom/transitionseverywhere/Transition;

    .line 562
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 564
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/Transition;->setEpicenterCallback(Lcom/transitionseverywhere/Transition$EpicenterCallback;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/TransitionSet;
    .locals 3

    .line 212
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/Transition;

    .line 213
    iget-object p1, p0, Lcom/transitionseverywhere/TransitionSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Lcom/transitionseverywhere/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setOrdering(I)Lcom/transitionseverywhere/TransitionSet;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/transitionseverywhere/TransitionSet;->mPlayTogether:Z

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iput-boolean v0, p0, Lcom/transitionseverywhere/TransitionSet;->mPlayTogether:Z

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setPathMotion(Lcom/transitionseverywhere/PathMotion;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->setPathMotion(Lcom/transitionseverywhere/PathMotion;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setPathMotion(Lcom/transitionseverywhere/PathMotion;)Lcom/transitionseverywhere/TransitionSet;
    .locals 2

    .line 330
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->setPathMotion(Lcom/transitionseverywhere/PathMotion;)Lcom/transitionseverywhere/Transition;

    const/4 v0, 0x0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v1, p1}, Lcom/transitionseverywhere/Transition;->setPathMotion(Lcom/transitionseverywhere/PathMotion;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/TransitionSet;
    .locals 3

    .line 551
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/Transition;

    .line 552
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 554
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/Transition;->setPropagation(Lcom/transitionseverywhere/TransitionPropagation;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/TransitionSet;
    .locals 3

    .line 532
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/Transition;

    .line 533
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 535
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transitionseverywhere/Transition;

    invoke-virtual {v2, p1}, Lcom/transitionseverywhere/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Lcom/transitionseverywhere/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Lcom/transitionseverywhere/Transition;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/transitionseverywhere/TransitionSet;->setStartDelay(J)Lcom/transitionseverywhere/TransitionSet;

    move-result-object p1

    return-object p1
.end method

.method public setStartDelay(J)Lcom/transitionseverywhere/TransitionSet;
    .locals 0

    .line 207
    invoke-super {p0, p1, p2}, Lcom/transitionseverywhere/Transition;->setStartDelay(J)Lcom/transitionseverywhere/Transition;

    move-result-object p1

    check-cast p1, Lcom/transitionseverywhere/TransitionSet;

    return-object p1
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 571
    invoke-super {p0, p1}, Lcom/transitionseverywhere/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 572
    :goto_0
    iget-object v2, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transitionseverywhere/Transition;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transitionseverywhere/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
