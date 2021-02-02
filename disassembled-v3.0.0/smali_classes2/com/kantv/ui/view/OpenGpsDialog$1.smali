.class Lcom/kantv/ui/view/OpenGpsDialog$1;
.super Ljava/lang/Object;
.source "OpenGpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/OpenGpsDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/kantv/ui/view/OpenGpsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/OpenGpsDialog;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/OpenGpsDialog;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/kantv/ui/view/OpenGpsDialog$1;->this$0:Lcom/kantv/ui/view/OpenGpsDialog;

    iput-object p2, p0, Lcom/kantv/ui/view/OpenGpsDialog$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/kantv/ui/view/OpenGpsDialog$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 106
    iget-object p1, p0, Lcom/kantv/ui/view/OpenGpsDialog$1;->this$0:Lcom/kantv/ui/view/OpenGpsDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/OpenGpsDialog;->access$000(Lcom/kantv/ui/view/OpenGpsDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
