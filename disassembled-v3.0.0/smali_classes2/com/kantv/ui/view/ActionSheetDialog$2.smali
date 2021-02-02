.class Lcom/kantv/ui/view/ActionSheetDialog$2;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/ActionSheetDialog;->setSheetItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/ActionSheetDialog;

.field final synthetic val$index:I

.field final synthetic val$listener:Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/ActionSheetDialog;Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;I)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog$2;->this$0:Lcom/kantv/ui/view/ActionSheetDialog;

    iput-object p2, p0, Lcom/kantv/ui/view/ActionSheetDialog$2;->val$listener:Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;

    iput p3, p0, Lcom/kantv/ui/view/ActionSheetDialog$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog$2;->val$listener:Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;

    iget v0, p0, Lcom/kantv/ui/view/ActionSheetDialog$2;->val$index:I

    invoke-interface {p1, v0}, Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;->onClick(I)V

    .line 167
    iget-object p1, p0, Lcom/kantv/ui/view/ActionSheetDialog$2;->this$0:Lcom/kantv/ui/view/ActionSheetDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/ActionSheetDialog;->access$000(Lcom/kantv/ui/view/ActionSheetDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
