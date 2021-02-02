.class Lcom/kantv/ui/activity/SafeVerInputActivity$1;
.super Ljava/lang/Object;
.source "SafeVerInputActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/SafeVerInputActivity;->showKeyboard(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

.field final synthetic val$txtView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/SafeVerInputActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;->this$0:Lcom/kantv/ui/activity/SafeVerInputActivity;

    iput-object p2, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;->val$txtView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;->val$txtView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 96
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;->val$txtView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 97
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;->val$txtView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 99
    iget-object v0, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;->val$txtView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    iget-object v1, p0, Lcom/kantv/ui/activity/SafeVerInputActivity$1;->val$txtView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
