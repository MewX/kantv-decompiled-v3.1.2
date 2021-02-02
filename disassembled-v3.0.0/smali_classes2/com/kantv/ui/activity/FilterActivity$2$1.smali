.class Lcom/kantv/ui/activity/FilterActivity$2$1;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/FilterActivity$2;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String8Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/activity/FilterActivity$2;

.field final synthetic val$itemBean:Lcom/kantv/ui/bean/String8Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/FilterActivity$2;Lcom/kantv/ui/bean/String8Bean;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/kantv/ui/activity/FilterActivity$2$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$2;

    iput-object p2, p0, Lcom/kantv/ui/activity/FilterActivity$2$1;->val$itemBean:Lcom/kantv/ui/bean/String8Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 244
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 245
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$2$1;->val$itemBean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr5()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 248
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 250
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$2$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/FilterActivity$2;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    invoke-virtual {v0, p1}, Lcom/kantv/ui/activity/FilterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "tid"

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "part_id"

    const-string v1, ""

    .line 254
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$2$1;->val$itemBean:Lcom/kantv/ui/bean/String8Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String8Bean;->getStr7()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/kantv/ui/activity/FilterActivity$2$1;->this$1:Lcom/kantv/ui/activity/FilterActivity$2;

    iget-object v0, v0, Lcom/kantv/ui/activity/FilterActivity$2;->this$0:Lcom/kantv/ui/activity/FilterActivity;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {v0, p1, v1}, Lcom/kantv/ui/activity/FilterActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
