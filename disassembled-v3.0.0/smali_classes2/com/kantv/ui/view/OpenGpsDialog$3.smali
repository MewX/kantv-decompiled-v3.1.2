.class Lcom/kantv/ui/view/OpenGpsDialog$3;
.super Ljava/lang/Object;
.source "OpenGpsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/OpenGpsDialog;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/OpenGpsDialog;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/OpenGpsDialog;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/kantv/ui/view/OpenGpsDialog$3;->this$0:Lcom/kantv/ui/view/OpenGpsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/kantv/ui/view/OpenGpsDialog$3;->this$0:Lcom/kantv/ui/view/OpenGpsDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/OpenGpsDialog;->access$000(Lcom/kantv/ui/view/OpenGpsDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
