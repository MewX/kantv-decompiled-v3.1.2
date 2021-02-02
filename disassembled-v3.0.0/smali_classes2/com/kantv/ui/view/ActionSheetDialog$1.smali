.class Lcom/kantv/ui/view/ActionSheetDialog$1;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/ActionSheetDialog;->builder()Lcom/kantv/ui/view/ActionSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/ActionSheetDialog;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog$1;->this$0:Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog$1;->this$0:Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/ActionSheetDialog;->access$000(Lcom/kantv/ui/view/ActionSheetDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
