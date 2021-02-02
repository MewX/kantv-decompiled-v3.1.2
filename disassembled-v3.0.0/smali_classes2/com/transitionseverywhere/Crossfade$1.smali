.class Lcom/transitionseverywhere/Crossfade$1;
.super Ljava/lang/Object;
.source "Crossfade.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/Crossfade;->createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/Crossfade;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/transitionseverywhere/Crossfade$1;->this$0:Lcom/transitionseverywhere/Crossfade;

    iput-object p2, p0, Lcom/transitionseverywhere/Crossfade$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/transitionseverywhere/Crossfade$1;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 210
    iget-object p1, p0, Lcom/transitionseverywhere/Crossfade$1;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/transitionseverywhere/Crossfade$1;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
