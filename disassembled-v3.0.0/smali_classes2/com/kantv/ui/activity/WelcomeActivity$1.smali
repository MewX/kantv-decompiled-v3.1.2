.class Lcom/kantv/ui/activity/WelcomeActivity$1;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kantv/ui/activity/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WelcomeActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$100(Lcom/kantv/ui/activity/WelcomeActivity;)Lcom/kantv/ui/view/CircularProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$000(Lcom/kantv/ui/activity/WelcomeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kantv/ui/view/CircularProgressBar;->setProgress(I)V

    .line 78
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$000(Lcom/kantv/ui/activity/WelcomeActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$200(Lcom/kantv/ui/activity/WelcomeActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$300(Lcom/kantv/ui/activity/WelcomeActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$008(Lcom/kantv/ui/activity/WelcomeActivity;)I

    move-result v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$400(Lcom/kantv/ui/activity/WelcomeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$1;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    .line 85
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
