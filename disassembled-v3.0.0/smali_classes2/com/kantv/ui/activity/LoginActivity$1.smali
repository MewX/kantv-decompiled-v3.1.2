.class Lcom/kantv/ui/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/LoginActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/LoginActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$1;->this$0:Lcom/kantv/ui/activity/LoginActivity;

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

    .line 82
    iget-object p1, p0, Lcom/kantv/ui/activity/LoginActivity$1;->this$0:Lcom/kantv/ui/activity/LoginActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/LoginActivity;->access$000(Lcom/kantv/ui/activity/LoginActivity;)V

    return-void
.end method
