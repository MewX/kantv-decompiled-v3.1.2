.class Lcom/kantv/ui/fragment/StarFragment$1$1;
.super Ljava/lang/Object;
.source "StarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/fragment/StarFragment$1;->convert(Lcom/kantv/ui/adapter/ViewHolder;Lcom/kantv/ui/bean/String12Bean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kantv/ui/fragment/StarFragment$1;

.field final synthetic val$string12Bean:Lcom/kantv/ui/bean/String12Bean;


# direct methods
.method constructor <init>(Lcom/kantv/ui/fragment/StarFragment$1;Lcom/kantv/ui/bean/String12Bean;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/kantv/ui/fragment/StarFragment$1$1;->this$1:Lcom/kantv/ui/fragment/StarFragment$1;

    iput-object p2, p0, Lcom/kantv/ui/fragment/StarFragment$1$1;->val$string12Bean:Lcom/kantv/ui/bean/String12Bean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    iget-object p1, p0, Lcom/kantv/ui/fragment/StarFragment$1$1;->val$string12Bean:Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String12Bean;->getStr10()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 95
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/kantv/ui/fragment/StarFragment$1$1;->this$1:Lcom/kantv/ui/fragment/StarFragment$1;

    iget-object p1, p1, Lcom/kantv/ui/fragment/StarFragment$1;->this$0:Lcom/kantv/ui/fragment/StarFragment;

    invoke-virtual {p1, v0}, Lcom/kantv/ui/fragment/StarFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tid"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/kantv/ui/fragment/StarFragment$1$1;->val$string12Bean:Lcom/kantv/ui/bean/String12Bean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/String12Bean;->getStr9()Ljava/lang/String;

    move-result-object p1

    const-string v1, "seo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/kantv/ui/fragment/StarFragment$1$1;->this$1:Lcom/kantv/ui/fragment/StarFragment$1;

    iget-object p1, p1, Lcom/kantv/ui/fragment/StarFragment$1;->this$0:Lcom/kantv/ui/fragment/StarFragment;

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p1, v0, v1}, Lcom/kantv/ui/fragment/StarFragment;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
