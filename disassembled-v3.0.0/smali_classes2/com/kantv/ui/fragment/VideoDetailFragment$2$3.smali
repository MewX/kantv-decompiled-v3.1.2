.class Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;
.super Ljava/lang/Object;
.source "VideoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/VideoDetailFragment$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/CommentChildBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

.field final synthetic val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$2;Lcom/kantv/ui/bean/CommentChildBean;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 519
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Login_State"

    invoke-static {p1, v1, v0}, Lcom/kantv/ui/utils/PreferenceUtil;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 521
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 522
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentChildBean;->getStr10()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "0"

    .line 523
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "\u5f71\u89c6"

    .line 526
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 529
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/GpsUtil;->isOpen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$300(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kantv/ui/activity/VideoPlayActivity;->checkPersonalInfo()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 533
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$200(Lcom/kantv/ui/fragment/VideoDetailFragment;)Lcom/kantv/ui/activity/VideoPlayActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentChildBean;->getStr1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/CommentChildBean;->getStr2()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kantv/ui/activity/VideoPlayActivity;->replyCommentDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$3;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-virtual {v1}, Lcom/kantv/ui/fragment/VideoDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$100(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
