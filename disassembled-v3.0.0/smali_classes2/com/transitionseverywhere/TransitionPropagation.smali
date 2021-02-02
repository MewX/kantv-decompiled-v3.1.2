.class public abstract Lcom/transitionseverywhere/TransitionPropagation;
.super Ljava/lang/Object;
.source "TransitionPropagation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract captureValues(Lcom/transitionseverywhere/TransitionValues;)V
.end method

.method public abstract getPropagationProperties()[Ljava/lang/String;
.end method

.method public abstract getStartDelay(Landroid/view/ViewGroup;Lcom/transitionseverywhere/Transition;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)J
.end method
