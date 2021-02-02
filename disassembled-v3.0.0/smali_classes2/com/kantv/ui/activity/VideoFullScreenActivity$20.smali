.class Lcom/kantv/ui/activity/VideoFullScreenActivity$20;
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

    .line 1076
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$20;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1079
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$20;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object p1

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->player:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1080
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$20;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$2100(Lcom/kantv/ui/activity/VideoFullScreenActivity;)V

    goto :goto_0

    .line 1082
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$20;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->restartPlay()V

    :goto_0
    return-void
.end method
