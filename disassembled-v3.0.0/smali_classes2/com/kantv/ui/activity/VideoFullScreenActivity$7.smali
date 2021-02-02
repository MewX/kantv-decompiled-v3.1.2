.class Lcom/kantv/ui/activity/VideoFullScreenActivity$7;
.super Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;
.source "VideoFullScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->initView2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$7;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 554
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 559
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 572
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 547
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$7;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$900(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->setEnable(Z)V

    return-void
.end method

.method public varargs onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 564
    invoke-super {p0, p1, p2}, Lcom/shuyu/gsyvideoplayer/listener/GSYSampleCallBack;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$7;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$900(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$7;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$900(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->backToProtVideo()I

    :cond_0
    return-void
.end method
