.class Lcom/kantv/ui/view/NewsMoreDialog$1;
.super Ljava/lang/Object;
.source "NewsMoreDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 59
    iput-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/kantv/ui/view/NewsMoreDialog$onClickback;->onClick(I)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/kantv/ui/view/NewsMoreDialog$onClickback;->onClick(I)V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/kantv/ui/view/NewsMoreDialog$onClickback;->onClick(I)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-static {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->access$000(Lcom/kantv/ui/view/NewsMoreDialog;)Lcom/kantv/ui/view/NewsMoreDialog$onClickback;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcom/kantv/ui/view/NewsMoreDialog$onClickback;->onClick(I)V

    .line 80
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/view/NewsMoreDialog$1;->this$0:Lcom/kantv/ui/view/NewsMoreDialog;

    invoke-virtual {p1}, Lcom/kantv/ui/view/NewsMoreDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090266
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
