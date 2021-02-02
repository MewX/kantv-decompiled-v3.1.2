.class Lmoe/codeest/enviews/ENDownloadView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ENDownloadView.java"


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

    .line 318
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$6;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 321
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$6;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmoe/codeest/enviews/ENDownloadView;->access$002(Lmoe/codeest/enviews/ENDownloadView;F)F

    .line 322
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$6;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lmoe/codeest/enviews/ENDownloadView;->access$102(Lmoe/codeest/enviews/ENDownloadView;I)I

    .line 323
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$6;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->access$600(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$6;->this$0:Lmoe/codeest/enviews/ENDownloadView;

    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->access$600(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;

    move-result-object p1

    invoke-interface {p1}, Lmoe/codeest/enviews/ENDownloadView$OnDownloadStateListener;->onDownloadFinish()V

    :cond_0
    return-void
.end method
