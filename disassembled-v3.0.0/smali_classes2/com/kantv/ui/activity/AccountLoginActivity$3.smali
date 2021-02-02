.class Lcom/kantv/ui/activity/AccountLoginActivity$3;
.super Ljava/lang/Object;
.source "AccountLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/AccountLoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/AccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/AccountLoginActivity;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$3;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/kantv/ui/activity/AccountLoginActivity$3;->this$0:Lcom/kantv/ui/activity/AccountLoginActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/AccountLoginActivity;->access$100(Lcom/kantv/ui/activity/AccountLoginActivity;)V

    return-void
.end method
