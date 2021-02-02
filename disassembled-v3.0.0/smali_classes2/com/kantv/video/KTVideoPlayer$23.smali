.class Lcom/kantv/video/KTVideoPlayer$23;
.super Ljava/util/TimerTask;
.source "KTVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->checkSelectVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/KTVideoPlayer;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer;Ljava/util/Timer;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$23;->this$0:Lcom/kantv/video/KTVideoPlayer;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$23;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 974
    invoke-static {}, Lcom/kantv/video/KTVideoPlayer;->access$3100()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 975
    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$3102(Z)Z

    .line 976
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$23;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$3200(Lcom/kantv/video/KTVideoPlayer;)V

    .line 977
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$23;->val$timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method
