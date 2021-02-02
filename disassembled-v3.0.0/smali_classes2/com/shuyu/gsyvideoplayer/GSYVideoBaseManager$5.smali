.class Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;II)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iput p2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->val$what:I

    iput p3, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->cancelTimeOutBuffer()V

    .line 301
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->val$what:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$5;->val$extra:I

    invoke-interface {v0, v1, v2}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onError(II)V

    :cond_0
    return-void
.end method
