.class Lcom/kantv/ui/activity/NewsDetailActivity$7$1;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$7;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->val$commentET:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->val$commentET:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 873
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 874
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->val$commentET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 875
    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$7;->val$commentET:Landroid/widget/EditText;

    .line 876
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 877
    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$7$1;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$7;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$7;->val$commentET:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
