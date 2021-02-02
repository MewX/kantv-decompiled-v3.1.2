.class Lcom/kantv/ui/view/NewsMoreDialog$2;
.super Ljava/lang/Object;
.source "NewsMoreDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/view/NewsMoreDialog;->setListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/view/NewsMoreDialog;


# direct methods
.method constructor <init>(Lcom/kantv/ui/view/NewsMoreDialog;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$2;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$2;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-virtual {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->dismiss()V

    return-void
.end method
