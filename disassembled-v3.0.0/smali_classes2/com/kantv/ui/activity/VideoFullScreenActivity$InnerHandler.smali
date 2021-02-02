.class final Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;
.super Landroid/os/Handler;
.source "VideoFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method private constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;Lcom/kantv/ui/activity/VideoFullScreenActivity$1;)V
    .locals 0

    .line 375
    invoke-direct {p0, p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;-><init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 378
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 379
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "Execute ERROR_ACTION"

    const-string v1, "VideoFullScreenActivity"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 411
    :pswitch_1
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "handleMessage\u6295\u653e\u6210\u529f"

    .line 412
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    const-string v0, "\u6295\u653e\u6210\u529f"

    invoke-virtual {p1, v0}, Lcom/kantv/video/DownloadVideoPlayer;->setTpStateText(Ljava/lang/String;)V

    .line 415
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->setingProgress()V

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "handleMessage\u6295\u653e\u5931\u8d25"

    .line 406
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "Execute TRANSITIONING_ACTION"

    .line 399
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "handleMessage\u6b63\u5728\u8fde\u63a5"

    .line 400
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "handleMessage\u505c\u6b62"

    .line 394
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    goto :goto_0

    :pswitch_5
    const-string p1, "Execute PAUSE_ACTION"

    .line 388
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "handleMessage\u6682\u505c"

    .line 389
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    goto :goto_0

    :pswitch_6
    const-string p1, "Execute PLAY_ACTION"

    .line 381
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "handleMessage\u6b63\u5728\u6295\u653e"

    .line 382
    invoke-static {v1, p1}, Lcom/kantv/common/log/AILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$InnerHandler;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$600(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kantv/ui/androidupnpdemo/control/ClingPlayControl;->setCurrentState(I)V

    :goto_0
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
