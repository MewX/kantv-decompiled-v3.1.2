.class Lcom/kantv/ui/adapter/VideoClassAdapter$1;
.super Ljava/lang/Object;
.source "VideoClassAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/VideoClassAdapter;->onBindViewHolder(Lcom/kantv/ui/adapter/SingleListVH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

.field final synthetic val$finalPosition:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/VideoClassAdapter;I)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

    iput p2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 101
    iget-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->access$000(Lcom/kantv/ui/adapter/VideoClassAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->val$finalPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/MovieBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 106
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 107
    iget-object p1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->access$100(Lcom/kantv/ui/adapter/VideoClassAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

    invoke-static {v0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->access$100(Lcom/kantv/ui/adapter/VideoClassAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->access$000(Lcom/kantv/ui/adapter/VideoClassAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->val$finalPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/VideoClassAdapter;->access$000(Lcom/kantv/ui/adapter/VideoClassAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->val$finalPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/MovieBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/MovieBean;->getSeo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "seo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/kantv/ui/adapter/VideoClassAdapter$1;->this$0:Lcom/kantv/ui/adapter/VideoClassAdapter;

    invoke-static {v0}, Lcom/kantv/ui/adapter/VideoClassAdapter;->access$100(Lcom/kantv/ui/adapter/VideoClassAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
