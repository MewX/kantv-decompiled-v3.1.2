.class Lcom/kantv/ui/activity/MyInfoActivity$8;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->initAreaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/MyInfoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/MyInfoActivity;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$8;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 624
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$8;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/MyInfoActivity;->areaTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kantv/ui/activity/MyInfoActivity$8;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    const v1, 0x7f0f0026

    invoke-virtual {v0, v1}, Lcom/kantv/ui/activity/MyInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$8;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    const-string v0, "38"

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->access$702(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$8;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->access$002(Lcom/kantv/ui/activity/MyInfoActivity;Z)Z

    return-void
.end method
