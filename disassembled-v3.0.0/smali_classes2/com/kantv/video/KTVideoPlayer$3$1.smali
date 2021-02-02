.class Lcom/kantv/video/KTVideoPlayer$3$1;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$3;

.field final synthetic val$currentPosition:J


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$3;J)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$3$1;->this$1:Lcom/kantv/video/KTVideoPlayer$3;

    iput-wide p2, p0, Lcom/kantv/video/KTVideoPlayer$3$1;->val$currentPosition:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 205
    sget-object v0, Lcom/kantv/video/KTVideoPlayer;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$3$1;->this$1:Lcom/kantv/video/KTVideoPlayer$3;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    sget-object v1, Lcom/kantv/video/KTVideoPlayer;->currentUrl:Ljava/lang/String;

    const/4 v2, 0x1

    sget-object v3, Lcom/kantv/video/KTVideoPlayer;->currentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kantv/video/KTVideoPlayer;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 208
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$3$1;->this$1:Lcom/kantv/video/KTVideoPlayer$3;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    iget-wide v1, p0, Lcom/kantv/video/KTVideoPlayer$3$1;->val$currentPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/kantv/video/KTVideoPlayer;->setSeekOnStart(J)V

    .line 209
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$3$1;->this$1:Lcom/kantv/video/KTVideoPlayer$3;

    iget-object v0, v0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->startPlayLogic()V

    :cond_0
    return-void
.end method
