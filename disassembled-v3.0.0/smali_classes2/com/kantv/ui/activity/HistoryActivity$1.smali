.class Lcom/kantv/ui/activity/HistoryActivity$1;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/kantv/ui/adapter/CallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/activity/HistoryActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/kantv/ui/activity/HistoryActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/kantv/ui/activity/HistoryActivity$1;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;I)V
    .locals 3

    .line 100
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$1;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {v0}, Lcom/kantv/ui/bean/String15Bean;->getStr5()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "android.intent.action.VIEW"

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$1;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-virtual {p2, p1}, Lcom/kantv/ui/activity/HistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "tid"

    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/kantv/ui/activity/HistoryActivity$1;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    invoke-static {v0}, Lcom/kantv/ui/activity/HistoryActivity;->access$000(Lcom/kantv/ui/activity/HistoryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kantv/ui/bean/String15Bean;

    invoke-virtual {p2}, Lcom/kantv/ui/bean/String15Bean;->getStr4()Ljava/lang/String;

    move-result-object p2

    const-string v0, "seo"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/kantv/ui/activity/HistoryActivity$1;->this$0:Lcom/kantv/ui/activity/HistoryActivity;

    const-class v0, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-virtual {p2, p1, v0}, Lcom/kantv/ui/activity/HistoryActivity;->gotoActivity(Landroid/os/Bundle;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
