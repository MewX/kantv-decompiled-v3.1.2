.class Lcom/kantv/ui/activity/NewsDetailActivity$20$4;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/NewsDetailActivity$20;Lcom/kantv/ui/bean/CommentChildBean;I)V
    .locals 0

    .line 1560
    iput-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iput-object p2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    iput p3, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1563
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/CommentChildBean;->getStr4()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u5f53\u524d\u5df2\u7ecf\u70b9\u8d5e\uff01"

    .line 1564
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1565
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/CommentChildBean;->getStr4()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1566
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

    .line 1568
    iget-object p1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->this$1:Lcom/kantv/ui/activity/NewsDetailActivity$20;

    iget-object p1, p1, Lcom/kantv/ui/activity/NewsDetailActivity$20;->this$0:Lcom/kantv/ui/activity/NewsDetailActivity;

    iget-object v0, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/CommentChildBean;->getStr2()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->val$commentChildBean:Lcom/kantv/ui/bean/CommentChildBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/CommentChildBean;->getStr1()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/kantv/ui/activity/NewsDetailActivity$20$4;->val$position:I

    invoke-static {p1, v0, v1, v2}, Lcom/kantv/ui/activity/NewsDetailActivity;->access$5600(Lcom/kantv/ui/activity/NewsDetailActivity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p1, "\u60a8\u5f53\u524d\u672a\u767b\u5f55\uff0c\u4e0d\u80fd\u70b9\u8d5e\uff01"

    .line 1570
    invoke-static {p1}, Lcom/kantv/ui/utils/ToastUtils;->showShort(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
