.class Lcom/kantv/ui/activity/VideoPlayActivity$19$2$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kantv/ui/activity/VideoPlayActivity$19$2;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$19$2;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2$1;->this$2:Lcom/kantv/ui/activity/VideoPlayActivity$19$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2$1;->this$2:Lcom/kantv/ui/activity/VideoPlayActivity$19$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19$2;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$19;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$19;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity;->adLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
