.class Lcom/kantv/ui/activity/NewsDetailActivity$20$3;
.super Ljava/lang/Object;
.source "NewsDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/NewsDetailActivity$20;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/CommentChildBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

.field final synthetic val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$20;Lcom/kantv/ui/bean/CommentChildBean;)V
    .locals 0

    .line 1535
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1538
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

    .line 1545
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kantv/common/utils/GpsUtil;->isOpen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1546
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5400(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1548
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentChildBean;->getStr1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/CommentChildBean;->getStr2()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v2}, Lcom/kantv/ui/bean/CommentChildBean;->getStr6()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/CommentChildBean;->getStr3()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5500(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    :cond_1
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object v0, v0, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v0}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$3;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object v1, v1, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    invoke-virtual {v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$900(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
