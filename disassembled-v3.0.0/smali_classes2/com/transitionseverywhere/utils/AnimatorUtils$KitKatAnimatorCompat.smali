.class Lcom/transitionseverywhere/utils/AnimatorUtils$KitKatAnimatorCompat;
.super Lcom/transitionseverywhere/utils/AnimatorUtils$JellyBeanCompat;
.source "AnimatorUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transitionseverywhere/utils/AnimatorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatAnimatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/transitionseverywhere/utils/AnimatorUtils$JellyBeanCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public addPauseListener(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    .line 116
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public pause(Landroid/animation/Animator;)V
    .locals 0

    .line 121
    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    return-void
.end method

.method public resume(Landroid/animation/Animator;)V
    .locals 0

    .line 126
    invoke-virtual {p1}, Landroid/animation/Animator;->resume()V

    return-void
.end method
