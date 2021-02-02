.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1$1;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->onAudioFocusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    iget-boolean v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1$1;->this$1:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    :goto_0
    return-void
.end method
