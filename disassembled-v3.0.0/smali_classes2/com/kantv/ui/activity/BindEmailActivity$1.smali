.class Lcom/kantv/ui/activity/BindEmailActivity$1;
.super Ljava/lang/Object;
.source "BindEmailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/BindEmailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/BindEmailActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/BindEmailActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity$1;->this$0:Lcom/kantv/ui/activity/BindEmailActivity;

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

    .line 98
    iget-object p1, p0, Lcom/kantv/ui/activity/BindEmailActivity$1;->this$0:Lcom/kantv/ui/activity/BindEmailActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/BindEmailActivity;->access$000(Lcom/kantv/ui/activity/BindEmailActivity;)V

    return-void
.end method
