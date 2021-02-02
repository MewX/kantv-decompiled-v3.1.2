.class Lcom/kantv/ui/activity/VideoFullScreenActivity$13$1;
.super Ljava/lang/Object;
.source "VideoFullScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$13;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoFullScreenActivity$13;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 697
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13$1;->this$1:Lcom/kantv/ui/activity/VideoFullScreenActivity$13;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoFullScreenActivity$13;->this$0:Lcom/kantv/ui/activity/VideoFullScreenActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VideoFullScreenActivity;->access$200(Lcom/kantv/ui/activity/VideoFullScreenActivity;)Lcom/kantv/video/DownloadVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 699
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 700
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    :cond_0
    return-void
.end method
