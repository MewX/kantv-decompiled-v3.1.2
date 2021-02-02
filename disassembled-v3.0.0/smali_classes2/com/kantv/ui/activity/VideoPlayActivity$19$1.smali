.class Lcom/kantv/ui/activity/VideoPlayActivity$19$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$19;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$19;)V
    .locals 0

    .line 1266
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->onVideoPause()V

    .line 1271
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->hideAllUI()V

    :cond_0
    return-void
.end method
