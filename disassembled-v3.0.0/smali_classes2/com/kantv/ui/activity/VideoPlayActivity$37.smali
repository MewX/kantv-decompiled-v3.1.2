.class Lcom/kantv/ui/activity/VideoPlayActivity$37;
.super Ljava/util/TimerTask;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

.field final synthetic val$commentET:Landroid/widget/EditText;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity;Landroid/widget/EditText;Ljava/util/Timer;)V
    .locals 0

    .line 2445
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$commentET:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2448
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->this$0:Lcom/kantv/ui/activity/VideoPlayActivity;

    new-instance v1, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;-><init>(Lcom/kantv/ui/activity/VideoPlayActivity$37;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/VideoPlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
