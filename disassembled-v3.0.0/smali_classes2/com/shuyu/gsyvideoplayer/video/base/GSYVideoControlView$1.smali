.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;
.super Ljava/lang/Object;
.source "GSYVideoControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 265
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockClickListener:Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;

    iget-boolean v1, v1, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    invoke-interface {v0, p1, v1}, Lcom/shuyu/gsyvideoplayer/listener/LockClickListener;->onClick(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method
