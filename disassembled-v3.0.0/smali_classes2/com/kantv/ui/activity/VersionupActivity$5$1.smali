.class Lcom/kantv/ui/activity/VersionupActivity$5$1;
.super Ljava/lang/Object;
.source "VersionupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VersionupActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VersionupActivity$5;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VersionupActivity$5;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VersionupActivity;->access$600(Lcom/kantv/ui/activity/VersionupActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/VersionupActivity;->access$600(Lcom/kantv/ui/activity/VersionupActivity;)I

    move-result v0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v1, v1, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VersionupActivity;->access$600(Lcom/kantv/ui/activity/VersionupActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/kantv/ui/activity/VersionupActivity;->access$602(Lcom/kantv/ui/activity/VersionupActivity;I)I

    .line 336
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v1, v1, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/VersionupActivity;->access$600(Lcom/kantv/ui/activity/VersionupActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/kantv/ui/activity/VersionupActivity$5$1;->this$1:Lcom/kantv/ui/activity/VersionupActivity$5;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity$5;->this$0:Lcom/kantv/ui/activity/VersionupActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/VersionupActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
