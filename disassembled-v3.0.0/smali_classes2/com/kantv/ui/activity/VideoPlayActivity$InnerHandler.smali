.class final Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;
.super Landroid/os/Handler;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method private constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 2862
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Lcom/kantv/ui/activity/VideoPlayActivity$1;)V
    .locals 0

    .line 2862
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2865
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2866
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "VideoPlayActivity"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-string p1, "handleMessage\u6295\u653e\u6210\u529f"

    .line 2894
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2898
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPlayer()Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    .line 2899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2901
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    const-string v0, "\u6295\u653e\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/kantv/video/KTVideoPlayer;->setTpStateText(Ljava/lang/String;)V

    .line 2903
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->setingProgress()V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :pswitch_2
    const-string p1, "handleMessage\u6295\u653e\u5931\u8d25"

    .line 2889
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string p1, "handleMessage\u6b63\u5728\u8fde\u63a5"

    .line 2884
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string p1, "handleMessage\u505c\u6b62"

    .line 2879
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8200(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    goto :goto_1

    :pswitch_5
    const-string p1, "handleMessage\u6682\u505c"

    .line 2874
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8200(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    goto :goto_1

    :pswitch_6
    const-string p1, "handleMessage\u6b63\u5728\u6295\u653e"

    .line 2868
    invoke-static {v0, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2870
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$8200(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
