.class Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$7;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onVideoSizeChanged()V

    :cond_0
    return-void
.end method
