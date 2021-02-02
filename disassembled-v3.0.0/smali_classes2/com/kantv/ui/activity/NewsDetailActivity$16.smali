.class Lcom/kantv/ui/activity/NewsDetailActivity$16;
.super Ljava/util/TimerTask;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

.field final synthetic val$commentET:Landroid/widget/EditText;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/widget/EditText;Ljava/util/Timer;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$commentET:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1241
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity$16;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
