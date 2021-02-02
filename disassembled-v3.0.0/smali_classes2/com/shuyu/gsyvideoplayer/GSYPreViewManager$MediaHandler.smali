.class Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;
.super Landroid/os/Handler;
.source "GSYPreViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;Landroid/os/Looper;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    .line 57
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->access$200(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    invoke-static {p1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->access$200(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->access$100(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;Landroid/os/Message;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager$MediaHandler;->this$0:Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;

    invoke-static {v0, p1}, Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;->access$000(Lcom/shuyu/gsyvideoplayer/GSYPreViewManager;Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void
.end method
