.class Lcom/kantv/ui/activity/VideoPlayActivity$3;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 385
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$3;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$3;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-boolean v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->isnotshow:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$3;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->mKTVideoPlayer:Lcom/kantv/video/KTVideoPlayer;

    invoke-virtual {v0}, Lcom/kantv/video/KTVideoPlayer;->release()V

    :cond_0
    return-void
.end method
