.class Lcom/kantv/video/DownloadVideoPlayer$3$3;
.super Ljava/lang/Object;
.source "DownloadVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/DownloadVideoPlayer$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

.field final synthetic val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;


# direct methods
.method constructor <init>(Lcom/kantv/video/DownloadVideoPlayer$3;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$3;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iput-object p2, p0, Lcom/kantv/video/DownloadVideoPlayer$3$3;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$3;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$3;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->tpIv:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/kantv/video/DownloadVideoPlayer$3$3;->this$1:Lcom/kantv/video/DownloadVideoPlayer$3;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer$3;->this$0:Lcom/kantv/video/DownloadVideoPlayer;

    iget-object p1, p1, Lcom/kantv/video/DownloadVideoPlayer;->tpIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_1
    return-void
.end method
