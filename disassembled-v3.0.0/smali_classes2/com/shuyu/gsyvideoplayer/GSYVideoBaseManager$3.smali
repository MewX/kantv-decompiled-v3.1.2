.class Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;I)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->val$percent:I

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->bufferPoint:I

    if-le v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->val$percent:I

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onBufferingUpdate(I)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$3;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget v1, v1, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->bufferPoint:I

    invoke-interface {v0, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onBufferingUpdate(I)V

    :cond_1
    :goto_0
    return-void
.end method
