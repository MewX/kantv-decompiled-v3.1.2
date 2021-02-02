.class Lcom/kantv/ui/fragment/VideoClassFragment$3$2;
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

.field final synthetic val$hotClassBeen:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/VideoClassFragment$3;Ljava/util/List;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;->this$1:Lcom/kantv/ui/fragment/VideoClassFragment$3;

    iput-object p2, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;->val$hotClassBeen:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 389
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 390
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;->val$hotClassBeen:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/HotClassBean;->getOpenType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, 0x10000000

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;->val$hotClassBeen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/HotClassBean;->getOpenType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 392
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;->val$hotClassBeen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/HotClassBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 394
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;->val$hotClassBeen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/HotClassBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "title"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/kantv/ui/fragment/VideoClassFragment$3$2;->val$hotClassBeen:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/HotClassBean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/HotClassBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 402
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 403
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
