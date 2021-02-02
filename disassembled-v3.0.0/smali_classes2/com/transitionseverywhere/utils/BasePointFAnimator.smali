.class public abstract Lcom/transitionseverywhere/utils/BasePointFAnimator;
.super Landroid/animation/ValueAnimator;
.source "BasePointFAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mPointFProperty:Lcom/transitionseverywhere/utils/PointFProperty;

.field private mTarget:Ljava/lang/ref/WeakReference;

.field private mTempPointF:Landroid/graphics/PointF;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/transitionseverywhere/utils/PointFProperty;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transitionseverywhere/utils/BasePointFAnimator;->mTempPointF:Landroid/graphics/PointF;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transitionseverywhere/utils/BasePointFAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/transitionseverywhere/utils/BasePointFAnimator;->mPointFProperty:Lcom/transitionseverywhere/utils/PointFProperty;

    const/4 p1, 0x2

    .line 29
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/transitionseverywhere/utils/BasePointFAnimator;->setFloatValues([F)V

    .line 30
    invoke-virtual {p0, p0}, Lcom/transitionseverywhere/utils/BasePointFAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected abstract applyAnimatedFraction(Landroid/graphics/PointF;F)V
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/transitionseverywhere/utils/BasePointFAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/transitionseverywhere/utils/BasePointFAnimator;->cancel()V

    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/transitionseverywhere/utils/BasePointFAnimator;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transitionseverywhere/utils/BasePointFAnimator;->applyAnimatedFraction(Landroid/graphics/PointF;F)V

    .line 44
    iget-object p1, p0, Lcom/transitionseverywhere/utils/BasePointFAnimator;->mPointFProperty:Lcom/transitionseverywhere/utils/PointFProperty;

    iget-object v1, p0, Lcom/transitionseverywhere/utils/BasePointFAnimator;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Lcom/transitionseverywhere/utils/PointFProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
