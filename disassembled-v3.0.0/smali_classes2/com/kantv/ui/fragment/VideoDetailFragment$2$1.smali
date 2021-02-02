.class Lcom/kantv/ui/fragment/VideoDetailFragment$2$1;
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


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoDetailFragment$2;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 459
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

    if-eqz p1, :cond_0

    .line 461
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 462
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object v0, v0, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$000(Lcom/kantv/ui/fragment/VideoDetailFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "type"

    const-string v1, "0"

    .line 463
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object v1, v1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const-class v2, Lcom/kantv/ui/activity/CommentActivity;

    invoke-virtual {v1, p1, v2}, Lcom/kantv/ui/fragment/VideoDetailFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    .line 465
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "\u5f71\u89c6"

    .line 466
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/VideoDetailFragment$2$1;->this$1:Lcom/kantv/ui/fragment/VideoDetailFragment$2;

    iget-object p1, p1, Lcom/kantv/ui/fragment/VideoDetailFragment$2;->this$0:Lcom/kantv/ui/fragment/VideoDetailFragment;

    const/4 v0, 0x1

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u4f60\u767b\u5165\u5df2\u8fc7\u671f\u6216\u8005\u5728\u522b\u7684\u5730\u65b9\u767b\u5165"

    invoke-static {p1, v1, v2, v0}, Lcom/kantv/ui/fragment/VideoDetailFragment;->access$100(Lcom/kantv/ui/fragment/VideoDetailFragment;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
