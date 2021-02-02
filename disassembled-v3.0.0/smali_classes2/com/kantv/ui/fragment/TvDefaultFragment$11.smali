.class Lcom/kantv/ui/fragment/TvDefaultFragment$11;
.super Ljava/lang/Object;
.source "TvDefaultFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/TvDefaultFragment;->fillDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/TvDefaultFragment;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$11;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 618
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 619
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$11;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "opentype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, 0x10000000

    const-string v3, "url"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$11;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 621
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$11;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 623
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 625
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$11;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/kantv/ui/fragment/TvDefaultFragment$11;->this$0:Lcom/kantv/ui/fragment/TvDefaultFragment;

    invoke-static {v0}, Lcom/kantv/ui/fragment/TvDefaultFragment;->access$1100(Lcom/kantv/ui/fragment/TvDefaultFragment;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 631
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 632
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
