.class Lcom/kantv/ui/activity/RegisterActivity$7;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/RegisterActivity;->showKeyboard(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/RegisterActivity;

.field final synthetic val$txtView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/RegisterActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->val$txtView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->val$txtView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 195
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->val$txtView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 196
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    iget-object v0, v0, Lcom/kantv/ui/activity/RegisterActivity;->regPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->val$txtView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->val$txtView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 202
    iget-object v1, p0, Lcom/kantv/ui/activity/RegisterActivity$7;->val$txtView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method
