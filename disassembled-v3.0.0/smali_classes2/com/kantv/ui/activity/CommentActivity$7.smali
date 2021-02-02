.class Lcom/kantv/ui/activity/CommentActivity$7;
.super Ljava/util/TimerTask;
.source "CommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/CommentActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/CommentActivity;

.field final synthetic val$commentET:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/CommentActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/kantv/ui/activity/CommentActivity$7;->this$0:Lcom/kantv/ui/activity/CommentActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/CommentActivity$7;->val$commentET:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$7;->val$commentET:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 488
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$7;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 489
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$7;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 490
    iget-object v0, p0, Lcom/kantv/ui/activity/CommentActivity$7;->val$commentET:Landroid/widget/EditText;

    .line 491
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 492
    iget-object v1, p0, Lcom/kantv/ui/activity/CommentActivity$7;->val$commentET:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
