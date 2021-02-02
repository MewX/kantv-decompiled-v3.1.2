.class public Lcom/transitionseverywhere/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationInfo"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field transition:Lcom/transitionseverywhere/Transition;

.field values:Lcom/transitionseverywhere/TransitionValues;

.field public view:Landroid/view/View;

.field windowId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/transitionseverywhere/Transition;Ljava/lang/Object;Lcom/transitionseverywhere/TransitionValues;)V
    .locals 0

    .line 2373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2374
    iput-object p1, p0, Lcom/transitionseverywhere/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 2375
    iput-object p2, p0, Lcom/transitionseverywhere/Transition$AnimationInfo;->name:Ljava/lang/String;

    .line 2376
    iput-object p5, p0, Lcom/transitionseverywhere/Transition$AnimationInfo;->values:Lcom/transitionseverywhere/TransitionValues;

    .line 2377
    iput-object p4, p0, Lcom/transitionseverywhere/Transition$AnimationInfo;->windowId:Ljava/lang/Object;

    .line 2378
    iput-object p3, p0, Lcom/transitionseverywhere/Transition$AnimationInfo;->transition:Lcom/transitionseverywhere/Transition;

    return-void
.end method
