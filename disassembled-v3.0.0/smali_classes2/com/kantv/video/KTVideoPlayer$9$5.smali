.class Lcom/kantv/video/KTVideoPlayer$9$5;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/video/KTVideoPlayer$9;

.field final synthetic val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer$9;Lcom/tandong/bottomview/view/BottomView;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$5;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$9$5;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 420
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$5;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 421
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$5;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Lcom/kantv/common/interfaces/ClickCallback;->onShare(I)V

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$5;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_1
    return-void
.end method
