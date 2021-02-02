.class Lcom/kantv/video/KTVideoPlayer$24;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/video/KTVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/KTVideoPlayer;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$24;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1046
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$24;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$600(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1047
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$24;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$500(Lcom/kantv/video/KTVideoPlayer;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    mul-int/lit16 v0, v0, 0x3e8

    .line 1048
    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$24;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 1052
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kantv/video/KTVideoPlayer$24;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v1}, Lcom/kantv/video/KTVideoPlayer;->getGSYVideoManager()Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/video/KTVideoPlayer$24;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v2}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/shuyu/gsyvideoplayer/video/base/GSYVideoViewBridge;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1054
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1057
    :goto_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$24;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kantv/video/KTVideoPlayer;->access$502(Lcom/kantv/video/KTVideoPlayer;I)I

    return-void
.end method
