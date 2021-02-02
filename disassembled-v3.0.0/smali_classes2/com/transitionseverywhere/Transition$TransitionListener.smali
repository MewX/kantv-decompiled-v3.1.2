.class public interface abstract Lcom/transitionseverywhere/Transition$TransitionListener;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionListener"
.end annotation


# virtual methods
.method public abstract onTransitionCancel(Lcom/transitionseverywhere/Transition;)V
.end method

.method public abstract onTransitionEnd(Lcom/transitionseverywhere/Transition;)V
.end method

.method public abstract onTransitionPause(Lcom/transitionseverywhere/Transition;)V
.end method

.method public abstract onTransitionResume(Lcom/transitionseverywhere/Transition;)V
.end method

.method public abstract onTransitionStart(Lcom/transitionseverywhere/Transition;)V
.end method
