.class Lmoe/codeest/enviews/ENDownloadView$5;
.super Ljava/lang/Object;
.source "ENDownloadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/codeest/enviews/ENDownloadView;->endAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/codeest/enviews/ENDownloadView;


# direct methods
.method constructor <init>(Lmoe/codeest/enviews/ENDownloadView;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$5;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lmoe/codeest/enviews/ENDownloadView$5;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lmoe/codeest/enviews/ENDownloadView;->access$002(Lmoe/codeest/enviews/ENDownloadView;F)F

    .line 315
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$5;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-virtual {p1}, Lmoe/codeest/enviews/ENDownloadView;->invalidate()V

    return-void
.end method
