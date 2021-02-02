.class Lcom/kantv/ui/activity/VideoPlayActivity$17;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->onActivityResult(IILandroid/content/Intent;)V
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

    .line 1074
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$17;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$17;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->tpView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1078
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$17;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->hideAllUI()V

    .line 1079
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$17;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->tpChoice:Z

    return-void
.end method
