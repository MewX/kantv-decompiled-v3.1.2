.class Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;
.super Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/TransitionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionSetListener"
.end annotation


# instance fields
.field mTransitionSet:Lcom/transitionseverywhere/TransitionSet;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/TransitionSet;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Lcom/transitionseverywhere/Transition$TransitionListenerAdapter;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;->mTransitionSet:Lcom/transitionseverywhere/TransitionSet;

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;->mTransitionSet:Lcom/transitionseverywhere/TransitionSet;

    iget v1, v0, Lcom/transitionseverywhere/TransitionSet;->mCurrentListeners:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/transitionseverywhere/TransitionSet;->mCurrentListeners:I

    .line 393
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;->mTransitionSet:Lcom/transitionseverywhere/TransitionSet;

    iget v0, v0, Lcom/transitionseverywhere/TransitionSet;->mCurrentListeners:I

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;->mTransitionSet:Lcom/transitionseverywhere/TransitionSet;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transitionseverywhere/TransitionSet;->mStarted:Z

    .line 396
    invoke-virtual {v0}, Lcom/transitionseverywhere/TransitionSet;->end()V

    .line 398
    :cond_0
    invoke-virtual {p1, p0}, Lcom/transitionseverywhere/Transition;->removeListener(Lcom/transitionseverywhere/Transition$TransitionListener;)Lcom/transitionseverywhere/Transition;

    return-void
.end method

.method public onTransitionStart(Lcom/transitionseverywhere/Transition;)V
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;->mTransitionSet:Lcom/transitionseverywhere/TransitionSet;

    iget-boolean p1, p1, Lcom/transitionseverywhere/TransitionSet;->mStarted:Z

    if-nez p1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;->mTransitionSet:Lcom/transitionseverywhere/TransitionSet;

    invoke-virtual {p1}, Lcom/transitionseverywhere/TransitionSet;->start()V

    .line 386
    iget-object p1, p0, Lcom/transitionseverywhere/TransitionSet$TransitionSetListener;->mTransitionSet:Lcom/transitionseverywhere/TransitionSet;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transitionseverywhere/TransitionSet;->mStarted:Z

    :cond_0
    return-void
.end method
