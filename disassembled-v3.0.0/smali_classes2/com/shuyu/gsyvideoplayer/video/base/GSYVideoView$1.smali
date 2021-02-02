.class Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;
.super Ljava/lang/Object;
.source "GSYVideoView.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    new-instance v0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1$1;

    invoke-direct {v0, p0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1$1;-><init>(Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;)V

    invoke-virtual {p1, v0}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 367
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView$1;->this$0:Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
