.class Lcom/kantv/video/KTVideoPlayer$9$7;
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

    .line 435
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$7;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iput-object p2, p0, Lcom/kantv/video/KTVideoPlayer$9$7;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$7;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$1800(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$7;->this$1:Lcom/kantv/video/KTVideoPlayer$9;

    iget-object p1, p1, Lcom/kantv/video/KTVideoPlayer$9;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$1800(Lcom/kantv/video/KTVideoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$9$7;->val$mVideoMoreBv:Lcom/tandong/bottomview/view/BottomView;

    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    :cond_1
    return-void
.end method
