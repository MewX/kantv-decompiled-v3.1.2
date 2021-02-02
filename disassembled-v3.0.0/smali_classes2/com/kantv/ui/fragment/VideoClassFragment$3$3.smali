.class Lcom/kantv/ui/fragment/VideoClassFragment$3$3;
.super Ljava/lang/Object;
.source "VideoClassFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoClassFragment$3;->convert(Lcom/kantv/ui/adapter/ViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

.field final synthetic val$moreTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Landroid/widget/TextView;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;->val$moreTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 411
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const-string v1, ""

    .line 412
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/kantv/common/utils/Utils;->interfaceVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "seo"

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 414
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$400(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoClassFragment;->access$300(Lcom/kantv/ui/fragment/VideoClassFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;->val$moreTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;->val$moreTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "\u5168\u90e8"

    :goto_1
    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$3;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoClassFragment$3;->this$0:Lcom/kantv/ui/fragment/VideoClassFragment;

    const-class v1, Lcom/kantv/ui/activity/FilterActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/fragment/VideoClassFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    return-void
.end method
