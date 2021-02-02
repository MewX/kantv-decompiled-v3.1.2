.class Lcom/kantv/video/KTVideoPlayer$22;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->fullScreenSelectPlay()V
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

    .line 952
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$22;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 955
    sget-object v0, Lcom/kantv/video/KTVideoPlayer;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$22;->this$0:Lcom/kantv/video/KTVideoPlayer;

    sget-object v1, Lcom/kantv/video/KTVideoPlayer;->currentUrl:Ljava/lang/String;

    const/4 v2, 0x1

    sget-object v3, Lcom/kantv/video/KTVideoPlayer;->currentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/kantv/video/KTVideoPlayer;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 957
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$22;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$2900(Lcom/kantv/video/KTVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 958
    iget-object v2, p0, Lcom/kantv/video/KTVideoPlayer$22;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v2}, Lcom/kantv/video/KTVideoPlayer;->access$3000(Lcom/kantv/video/KTVideoPlayer;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 959
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$22;->this$0:Lcom/kantv/video/KTVideoPlayer;

    const-wide/32 v1, 0x15f90

    invoke-static {v0, v1, v2}, Lcom/kantv/video/KTVideoPlayer;->access$3002(Lcom/kantv/video/KTVideoPlayer;J)J

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$22;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {v0}, Lcom/kantv/video/KTVideoPlayer;->access$3000(Lcom/kantv/video/KTVideoPlayer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kantv/video/KTVideoPlayer;->setSeekOnStart(J)V

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/kantv/video/KTVideoPlayer$22;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->startPlayLogic()V

    :cond_2
    return-void
.end method
