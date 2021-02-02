.class Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager$1;
.super Ljava/lang/Object;
.source "IjkPlayerManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnNativeInvokeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;->initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/shuyu/gsyvideoplayer/cache/ICacheManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;


# direct methods
.method constructor <init>(Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager$1;->this$0:Lcom/shuyu/gsyvideoplayer/player/IjkPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeInvoke(ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
