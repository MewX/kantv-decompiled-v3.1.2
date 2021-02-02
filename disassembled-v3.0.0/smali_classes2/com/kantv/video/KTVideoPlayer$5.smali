.class Lcom/kantv/video/KTVideoPlayer$5;
.super Ljava/lang/Object;
.source "KTVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/video/KTVideoPlayer;->moreHandler()V
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

    .line 234
    iput-object p1, p0, Lcom/kantv/video/KTVideoPlayer$5;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$5;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$5;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-static {p1}, Lcom/kantv/video/KTVideoPlayer;->access$100(Lcom/kantv/video/KTVideoPlayer;)Lcom/kantv/common/interfaces/ClickCallback;

    move-result-object p1

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Lcom/kantv/common/interfaces/ClickCallback;->onShare(I)V

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/kantv/video/KTVideoPlayer$5;->this$0:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {p1}, Lcom/kantv/video/KTVideoPlayer;->checkSelectVideo()V

    return-void
.end method
