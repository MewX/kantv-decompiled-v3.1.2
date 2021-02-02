.class Lcom/kantv/ui/activity/RegisterActivity$5;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/RegisterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/RegisterActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$5;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

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

    .line 165
    iget-object p1, p0, Lcom/kantv/ui/activity/RegisterActivity$5;->this$0:Lcom/kantv/ui/activity/RegisterActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/RegisterActivity;->access$300(Lcom/kantv/ui/activity/RegisterActivity;)V

    return-void
.end method
