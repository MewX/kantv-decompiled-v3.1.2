.class Lcom/transitionseverywhere/ChangeBounds$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Lcom/transitionseverywhere/TransitionValues;Lcom/transitionseverywhere/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/ChangeBounds;

.field final synthetic val$alpha:F

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$9;->this$0:Lcom/transitionseverywhere/ChangeBounds;

    iput-object p2, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$sceneRoot:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$alpha:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 433
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$sceneRoot:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p1, v0}, Lcom/transitionseverywhere/utils/ViewOverlayUtils;->removeOverlay(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object p1, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/transitionseverywhere/ChangeBounds$9;->val$alpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
