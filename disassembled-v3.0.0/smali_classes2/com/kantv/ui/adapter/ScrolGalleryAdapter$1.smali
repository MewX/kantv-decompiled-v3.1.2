.class Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;
.super Ljava/lang/Object;
.source "ScrolGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->getItemView(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;I)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    iput p2, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 59
    :try_start_0
    iget-object p1, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-static {p1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->access$000(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->val$position:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {p1}, Lcom/kantv/ui/bean/SlideImgBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http"

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, 0x10000000

    if-nez v1, :cond_1

    const-string v1, "www"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "seo"

    .line 79
    iget-object v1, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->access$000(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->val$position:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/SlideImgBean;->getSeo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tid"

    .line 80
    iget-object v1, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->access$000(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->val$position:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/SlideImgBean;->getTvid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/kantv/ui/activity/VideoPlayActivity;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 63
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->access$000(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->val$position:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/SlideImgBean;->getOpentype()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kantv/common/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-static {v1}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->access$000(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->val$position:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v1}, Lcom/kantv/ui/bean/SlideImgBean;->getOpentype()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string v1, "title"

    .line 71
    iget-object v3, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->this$0:Lcom/kantv/ui/adapter/ScrolGalleryAdapter;

    invoke-static {v3}, Lcom/kantv/ui/adapter/ScrolGalleryAdapter;->access$000(Lcom/kantv/ui/adapter/ScrolGalleryAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/kantv/ui/adapter/ScrolGalleryAdapter$1;->val$position:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kantv/ui/bean/SlideImgBean;

    invoke-virtual {v3}, Lcom/kantv/ui/bean/SlideImgBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/kantv/ui/activity/WebViewActivity;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 76
    invoke-static {}, Lcom/kantv/common/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
