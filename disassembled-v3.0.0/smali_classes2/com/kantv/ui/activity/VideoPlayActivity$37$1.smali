.class Lcom/kantv/ui/activity/VideoPlayActivity$37$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/VideoPlayActivity$37;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/VideoPlayActivity$37;)V
    .locals 0

    .line 2448
    iput-object p1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2451
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$commentET:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$commentET:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2453
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2454
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2455
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$commentET:Landroid/widget/EditText;

    .line 2456
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2457
    iget-object v1, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v1, v1, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$commentET:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2459
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/kantv/ui/activity/VideoPlayActivity$37$1;->this$1:Lcom/kantv/ui/activity/VideoPlayActivity$37;

    iget-object v0, v0, Lcom/kantv/ui/activity/VideoPlayActivity$37;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method
