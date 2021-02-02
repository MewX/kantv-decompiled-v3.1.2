.class Lcom/kantv/ui/activity/NewsDetailActivity$7;
.super Ljava/util/TimerTask;
.source "NewsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity;->commentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

.field final synthetic val$commentET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->val$commentET:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    new-instance v1, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;

    invoke-direct {v1, p0}, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;-><init>(Lcom/kantv/ui/activity/NewsDetailActivity$7;)V

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
