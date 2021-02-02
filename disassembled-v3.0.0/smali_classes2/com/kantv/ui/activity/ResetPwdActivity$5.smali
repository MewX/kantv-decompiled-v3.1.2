.class Lcom/kantv/ui/activity/ResetPwdActivity$5;
.super Ljava/lang/Object;
.source "ResetPwdActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/ResetPwdActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/ResetPwdActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/ResetPwdActivity;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$5;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 184
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$5;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    const/16 p2, 0x90

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 185
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$5;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/kantv/ui/activity/ResetPwdActivity$5;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$5;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    const/16 p2, 0x81

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 188
    iget-object p1, p0, Lcom/kantv/ui/activity/ResetPwdActivity$5;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/kantv/ui/activity/ResetPwdActivity$5;->this$0:Lcom/kantv/ui/activity/ResetPwdActivity;

    iget-object p2, p2, Lcom/kantv/ui/activity/ResetPwdActivity;->resetPassword:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method
