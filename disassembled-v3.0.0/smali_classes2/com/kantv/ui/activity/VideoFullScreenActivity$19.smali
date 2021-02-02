.class Lcom/kantv/ui/activity/VideoFullScreenActivity$19;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity;->onClick()V
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

    .line 1066
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1069
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->tpview:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->stateTv:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$1900(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    .line 1072
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$2002(Lcom/kantv/ui/activity/VideoFullScreenActivity;Z)Z

    .line 1073
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$19;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->finish()V

    return-void
.end method
