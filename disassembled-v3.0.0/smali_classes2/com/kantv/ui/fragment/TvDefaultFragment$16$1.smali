.class Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;
.super Ljava/lang/Object;
.source "TvDefaultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment$16;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/TvDefaultFragment$16;

.field final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment$16;Lorg/json/JSONObject;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->this$1:Lcom/kantv/ui/fragment/TvDefaultFragment$16;

    iput-object p2, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 993
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 994
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->val$data:Lorg/json/JSONObject;

    const-string v1, "opentype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, 0x10000000

    const-string v3, "url"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 996
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 998
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 999
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1000
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->val$data:Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1005
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1006
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1007
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1012
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->this$1:Lcom/kantv/ui/fragment/TvDefaultFragment$16;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1013
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->this$1:Lcom/kantv/ui/fragment/TvDefaultFragment$16;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {p1}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1500(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lcom/tandong/bottomview/view/BottomView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tandong/bottomview/view/BottomView;->dismissBottomView()V

    .line 1014
    iget-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$16$1;->this$1:Lcom/kantv/ui/fragment/TvDefaultFragment$16;

    iget-object p1, p1, Lcom/kantv/ui/fragment/TvDefaultFragment$16;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1502(Lcom/kantv/ui/fragment/TvDefaultFragment;Lcom/tandong/bottomview/view/BottomView;)Lcom/tandong/bottomview/view/BottomView;

    :cond_1
    return-void
.end method
