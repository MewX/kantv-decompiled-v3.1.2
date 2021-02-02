.class Lcom/kantv/ui/activity/BasicInfoActivity$4;
.super Ljava/lang/Object;
.source "BasicInfoActivity.java"

# interfaces
.implements Lcom/kantv/ui/view/ActionSheetDialog$OnSheetItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/BasicInfoActivity;->initSexDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/BasicInfoActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/BasicInfoActivity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity$4;->this$0:Lcom/kantv/ui/activity/BasicInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity$4;->this$0:Lcom/kantv/ui/activity/BasicInfoActivity;

    iget-object p1, p1, Lcom/kantv/ui/activity/BasicInfoActivity;->sexTv:Landroid/widget/TextView;

    const-string v0, "\u7537"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object p1, p0, Lcom/kantv/ui/activity/BasicInfoActivity$4;->this$0:Lcom/kantv/ui/activity/BasicInfoActivity;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/BasicInfoActivity;->access$202(Lcom/kantv/ui/activity/BasicInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
