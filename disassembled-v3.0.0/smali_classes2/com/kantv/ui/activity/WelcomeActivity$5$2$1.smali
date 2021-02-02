.class Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/WelcomeActivity$5$2;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/WelcomeActivity$5$2;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 302
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kantv/ui/activity/WelcomeActivity;->access$402(Lcom/kantv/ui/activity/WelcomeActivity;Z)Z

    .line 303
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-static {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->access$500(Lcom/kantv/ui/activity/WelcomeActivity;)V

    .line 304
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 305
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    const-string v1, "opentype"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, 0x10000000

    const-string v3, "url"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 310
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->val$dg:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 317
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 318
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    :goto_0
    iget-object p1, p0, Lcom/kantv/ui/activity/WelcomeActivity$5$2$1;->this$2:Lcom/kantv/ui/activity/WelcomeActivity$5$2;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5$2;->this$1:Lcom/kantv/ui/activity/WelcomeActivity$5;

    iget-object p1, p1, Lcom/kantv/ui/activity/WelcomeActivity$5;->this$0:Lcom/kantv/ui/activity/WelcomeActivity;

    invoke-virtual {p1}, Lcom/kantv/ui/activity/WelcomeActivity;->finish()V

    return-void
.end method
