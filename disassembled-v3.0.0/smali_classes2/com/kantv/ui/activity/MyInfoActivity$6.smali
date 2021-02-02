.class Lcom/kantv/ui/activity/MyInfoActivity$6;
.super Ljava/lang/Object;
.source "MyInfoActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/MyInfoActivity;->initSexDialog()V
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

    .line 585
    iput-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$6;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 2

    .line 588
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$6;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/MyInfoActivity;->sexTv:Landroid/widget/TextView;

    const-string v0, "\u5973"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$6;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->access$602(Lcom/kantv/ui/activity/MyInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "edit_sex"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/utils/PreferenceUtil;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    iget-object p1, p0, Lcom/kantv/ui/activity/MyInfoActivity$6;->this$0:Lcom/kantv/ui/activity/MyInfoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/MyInfoActivity;->access$002(Lcom/kantv/ui/activity/MyInfoActivity;Z)Z

    return-void
.end method
