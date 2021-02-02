.class Lcom/kantv/ui/view/ShareDialog$5;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/ShareDialog;->setListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/ShareDialog;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/ShareDialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/kantv/ui/view/ShareDialog$5;->this$0:Lcom/kantv/ui/view/ShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/kantv/ui/view/ShareDialog$5;->this$0:Lcom/kantv/ui/view/ShareDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/ShareDialog;->access$000(Lcom/kantv/ui/view/ShareDialog;)Lcom/kantv/ui/view/ShareDialog$onClickback;

    move-result-object p1

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/kantv/ui/view/ShareDialog$onClickback;->onShare(I)V

    .line 87
    iget-object p1, p0, Lcom/kantv/ui/view/ShareDialog$5;->this$0:Lcom/kantv/ui/view/ShareDialog;

    invoke-virtual {p1}, Lcom/kantv/ui/view/ShareDialog;->dismiss()V

    return-void
.end method
