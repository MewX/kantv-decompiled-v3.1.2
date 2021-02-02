.class Lcom/kantv/video/KTVideoPlayer$3;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/video/KTVideoPlayer;


# direct methods
.method constructor <init>(Lcom/kantv/video/KTVideoPlayer;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 198
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result p1

    int-to-long v0, p1

    .line 199
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Lcom/kantv/common/interfaces/ClickCallback;->onShare(I)V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$3;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/kantv/video/KTVideoPlayer$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/kantv/video/KTVideoPlayer$3$1;-><init>(Lcom/kantv/video/KTVideoPlayer$3;J)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
