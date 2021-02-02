.class Lcom/kantv/ui/activity/VideoPlayActivity$6;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 549
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$6;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 553
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$6;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$6;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->access$1300(Lcom/kantv/ui/activity/VideoPlayActivity;)Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shuyu/gsyvideoplayer/utils/OrientationUtils;->resolveByClick()V

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$6;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$6;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v1}, Lcom/kantv/video/KTVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/shuyu/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    return-void
.end method
