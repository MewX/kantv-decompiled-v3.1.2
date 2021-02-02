.class Lcom/transitionseverywhere/Crossfade$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Crossfade.java"


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

.field final synthetic val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$useParentOverlay:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/transitionseverywhere/Crossfade$2;->this$0:Lcom/transitionseverywhere/Crossfade;

    iput-boolean p2, p0, Lcom/transitionseverywhere/Crossfade$2;->val$useParentOverlay:Z

    iput-object p3, p0, Lcom/transitionseverywhere/Crossfade$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/transitionseverywhere/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p5, p0, Lcom/transitionseverywhere/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 227
    iget-boolean p1, p0, Lcom/transitionseverywhere/Crossfade$2;->val$useParentOverlay:Z

    iget-object v0, p0, Lcom/transitionseverywhere/Crossfade$2;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/transitionseverywhere/Crossfade$2;->this$0:Lcom/transitionseverywhere/Crossfade;

    .line 228
    invoke-static {v1}, Lcom/transitionseverywhere/Crossfade;->access$000(Lcom/transitionseverywhere/Crossfade;)I

    move-result v1

    iget-object v2, p0, Lcom/transitionseverywhere/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/transitionseverywhere/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 227
    invoke-static {p1, v0, v1, v2, v3}, Lcom/transitionseverywhere/utils/ViewGroupOverlayUtils;->removeCrossfadeOverlay(ZLandroid/view/View;ILandroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
