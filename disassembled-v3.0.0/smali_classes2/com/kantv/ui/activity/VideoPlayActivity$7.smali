.class Lcom/kantv/ui/activity/VideoPlayActivity$7;
.super Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$7;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 570
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 575
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 561
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$7;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$7;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$7;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1, p2}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1402(Lcom/kantv/ui/activity/VideoPlayActivity;Z)Z

    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 580
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$7;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 582
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$7;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method
