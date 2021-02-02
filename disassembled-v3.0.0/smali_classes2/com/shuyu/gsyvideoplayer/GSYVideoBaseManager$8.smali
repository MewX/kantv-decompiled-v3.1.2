.class Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;
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

    .line 638
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    iget-object v0, v0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const-string v0, "time out for error listener"

    .line 642
    invoke-static {v0}, Lcom/shuyu/gsyvideoplayer/utils/Debuger;->printfError(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager$8;->this$0:Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;

    invoke-virtual {v0}, Lcom/shuyu/gsyvideoplayer/GSYVideoBaseManager;->listener()Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;

    move-result-object v0

    const/16 v1, -0xc0

    invoke-interface {v0, v1, v1}, Lcom/shuyu/gsyvideoplayer/listener/GSYMediaPlayerListener;->onError(II)V

    :cond_0
    return-void
.end method
