.class Lcom/kantv/ui/activity/NewsDetailActivity$16$1;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$16;)V
    .locals 0

    .line 1241
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1244
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$commentET:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$commentET:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1246
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1247
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1248
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$commentET:Landroid/widget/EditText;

    .line 1249
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1250
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$commentET:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$16$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$16;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$16;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method
